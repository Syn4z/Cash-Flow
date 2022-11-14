import { Field, ObjectType } from '@nestjs/graphql';
import { User } from '../../user/user.entity';

@ObjectType()
export class RemoveResponse {
    @Field()
    id: number;

    @Field()
    user: User;
}