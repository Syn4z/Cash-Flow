import { Field, ObjectType } from '@nestjs/graphql';
import { User } from '../../user/user.entity';
import { IsNotEmpty, IsString } from 'class-validator'

@ObjectType()
export class SignResponse {
    @Field()
    accesToken: string;

    @Field()
    refreshToken: string;

    @Field()
    user: User;
}