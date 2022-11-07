import { InputType, Int, Field } from '@nestjs/graphql';

@InputType()
export class CreateGraphqlInput {
  @Field()
  name: string;
}
