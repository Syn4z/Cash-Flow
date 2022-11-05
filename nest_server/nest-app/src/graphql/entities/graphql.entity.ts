import { ObjectType, Field, Int } from '@nestjs/graphql';

@ObjectType()
export class Graphql {
  @Field(() => Int)
  id: number;

  @Field()
  name: string; 
}
