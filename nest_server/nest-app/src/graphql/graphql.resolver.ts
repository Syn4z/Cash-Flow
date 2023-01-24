import { Resolver, Query, Mutation, Args, Int } from '@nestjs/graphql';
import { GraphqlService } from './graphql.service';
import { Graphql } from './entities/graphql.entity';
import { SignUpInput } from './dto/signup-input';
import { SignResponse } from './dto/sign-response';
import { SignInInput } from './dto/signin-input';
import { RemoveResponse } from './dto/remove-response';
import { RemoveInput } from './dto/remove-input';

@Resolver(() => Graphql)
export class GraphqlResolver {
  constructor(private readonly graphqlService: GraphqlService) {}

  @Mutation(() => SignResponse)
  signup(@Args('SignUpInput') signUpInput: SignUpInput) {
    return this.graphqlService.signup(signUpInput);
  }

  @Mutation(() => SignResponse)
  signin(@Args('SignInInput') signInInput: SignInInput) {
    return this.graphqlService.signin(signInInput);
  }

  @Query(() => SignResponse)
  findone(@Args('FindUnique') findUnique: SignInInput) {
    return this.graphqlService.findone(findUnique);
  }

  @Mutation(() => RemoveResponse)
  remove(@Args('RemoveInput') removeInput: RemoveInput) {
    return this.graphqlService.remove(removeInput);
  }
}
