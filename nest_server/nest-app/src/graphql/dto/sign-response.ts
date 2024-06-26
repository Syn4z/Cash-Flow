import { Field, ObjectType } from '@nestjs/graphql';
import { User } from '../../user/user.entity';

@ObjectType()
export class SignResponse {
    @Field()
    accesToken: string;

    @Field()
    refreshToken: string;

    @Field()
    user: User;
}