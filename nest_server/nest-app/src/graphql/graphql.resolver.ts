import { Resolver, Query, Mutation, Args, Int } from '@nestjs/graphql';
import { GraphqlService } from './graphql.service';
import { Graphql } from './entities/graphql.entity';
import { SignUpInput } from './dto/signup-input';
import { UpdateGraphqlInput } from './dto/update-graphql.input';
import { sign } from 'crypto';
import { SignResponse } from './dto/sign-response';
import { SignInInput } from './dto/signin-input';

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

  @Query(() => Graphql, { name: 'graphql' })
  findOne(@Args('id', { type: () => Int }) id: number) {
    return this.graphqlService.findOne(id);
  }

  @Mutation(() => Graphql)
  updateGraphql(@Args('updateGraphqlInput') updateGraphqlInput: UpdateGraphqlInput) {
    return this.graphqlService.update(updateGraphqlInput.id, updateGraphqlInput);
  }

  @Mutation(() => Graphql)
  removeGraphql(@Args('id', { type: () => Int }) id: number) {
    return this.graphqlService.remove(id);
  }
}
