import { ForbiddenException, Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { JwtService } from '@nestjs/jwt';
import { PrismaService } from 'src/prisma/prisma.service';
import { SignUpInput } from './dto/signup-input';
import * as argon from 'argon2';
import { SignInInput } from './dto/signin-input';
import { RemoveInput } from './dto/remove-input';
import { find } from 'rxjs';

@Injectable()
export class GraphqlService {
  constructor(private prisma: PrismaService, private jwtService: JwtService, private configService: ConfigService) {}
  async signup(signUpInput: SignUpInput) {
    const hashedPassword = await argon.hash(signUpInput.password);
    const sameUser = await this.prisma.user.findUnique({
      where: {email: signUpInput.email},
    });

    if (sameUser) {
      throw new ForbiddenException('User with this email already exists')
    }
    
    const user = await this.prisma.user.create({
      data: {username: signUpInput.username, 
        hashedPassword, email: signUpInput.email} 
      })
    
    const { accesToken, refreshToken } = await this.createTokens(user.id, user.email);
    await this.updateRefreshToken(user.id, refreshToken); 
    return { accesToken, refreshToken, user}
  }

  async signin(signInInput: SignInInput) {
    const user = await this.prisma.user.findUnique({
      where: {email: signInInput.email},
    });

    if (!user) {
      throw new ForbiddenException('Acces Denied')
    }

    const doPasswordMatch = await argon.verify(user.hashedPassword, signInInput.password);

    if (!doPasswordMatch) {
      throw new ForbiddenException('Acces Denied')
    }
    const { accesToken, refreshToken } = await this.createTokens(user.id, user.email)

    await this.updateRefreshToken(user.id, refreshToken)

    return { accesToken, refreshToken, user }
  }

  async findone(findUnique: SignInInput) {
    const user = await this.prisma.user.findUnique({
      where: {email: findUnique.email},  
    });

    if (!user) {
      throw new ForbiddenException('No account with this email')
    }

    return { user };
  }

  async remove(removeInput: RemoveInput) {
    const user = await this.prisma.user.delete({
      where: {email: removeInput.email},  
    });

    if (!user) {
      throw new ForbiddenException('No account with this email')
    }

    return { user };
  }

  async createTokens(userId: number, email: string) {
    const accesToken = this.jwtService.sign(
      {userId, email}, {expiresIn:'10s', 
      secret: this.configService.get('ACCES_TOKEN_SECRET')}
      );
    const refreshToken = this.jwtService.sign(
      {userId, email, accesToken}, {expiresIn:'7d',
      secret: this.configService.get('REFRESH_TOKEN_SECRET')}
      );

    return { accesToken, refreshToken };
  }

  async updateRefreshToken(userId: number, refreshToken: string) {
    const hashedRefreshToken = await argon .hash(refreshToken);
    await this.prisma.user.update({where: {id:userId}, data: {hashedRefreshToken}})
  }
}
