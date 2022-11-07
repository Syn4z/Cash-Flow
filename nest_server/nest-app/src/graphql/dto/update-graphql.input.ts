import { SignUpInput } from './signup-input';
import { InputType, Field, Int, PartialType } from '@nestjs/graphql';

@InputType()
export class UpdateGraphqlInput extends PartialType(SignUpInput) {
  @Field(() => Int)
  id: number;
}
