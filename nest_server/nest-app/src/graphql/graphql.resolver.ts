import { Resolver, Query, Mutation, Args, Int } from '@nestjs/graphql';
import { GraphqlService } from './graphql.service';
import { Graphql } from './entities/graphql.entity';
import { CreateGraphqlInput } from './dto/create-graphql.input';
import { UpdateGraphqlInput } from './dto/update-graphql.input';

@Resolver(() => Graphql)
export class GraphqlResolver {
  constructor(private readonly graphqlService: GraphqlService) {}

  @Mutation(() => Graphql)
  createGraphql(@Args('createGraphqlInput') createGraphqlInput: CreateGraphqlInput) {
    return this.graphqlService.create(createGraphqlInput);
  }

  @Query(() => [Graphql], { name: 'graphqls' })
  findAll() {
    return this.graphqlService.findAll();
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
