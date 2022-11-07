import { Module } from '@nestjs/common';
import { GraphqlService } from './graphql.service';
import { GraphqlResolver } from './graphql.resolver';
import { PrismaService } from 'src/prisma/prisma.service';
import { JwtService } from '@nestjs/jwt'

@Module({
  providers: [GraphqlResolver, GraphqlService, PrismaService, JwtService]
})
export class GraphqlModule {}
