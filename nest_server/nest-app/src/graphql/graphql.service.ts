import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateGraphqlInput } from './dto/create-graphql.input';
import { UpdateGraphqlInput } from './dto/update-graphql.input';

@Injectable()
export class GraphqlService {
  constructor(private prisma: PrismaService) {}
  async create(createGraphqlInput: CreateGraphqlInput) {
    return await this.prisma.graphQL.create({data: {name: createGraphqlInput.name}});
  }

  findAll() {
    return this.prisma.graphQL.findMany();
  }

  findOne(id: number) {
    return this.prisma.graphQL.findUnique({where: {id}});
  }

  update(id: number, updateGraphqlInput: UpdateGraphqlInput) {
    return this.prisma.graphQL.update({
      where: {id},
      data: {name: updateGraphqlInput.name}
    });
  }

  remove(id: number) {
    return this.prisma.graphQL.delete({where: {id}});
  }
}
