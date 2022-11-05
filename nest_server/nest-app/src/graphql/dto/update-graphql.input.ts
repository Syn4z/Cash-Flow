import { CreateGraphqlInput } from './create-graphql.input';
import { InputType, Field, Int, PartialType } from '@nestjs/graphql';

@InputType()
export class UpdateGraphqlInput extends PartialType(CreateGraphqlInput) {
  @Field(() => Int)
  id: number;

  @Field()
  name: string;
}
