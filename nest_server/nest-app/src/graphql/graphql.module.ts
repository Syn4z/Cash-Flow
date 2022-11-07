import { Module } from '@nestjs/common';
import { GraphqlService } from './graphql.service';
import { GraphqlResolver } from './graphql.resolver';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  providers: [GraphqlResolver, GraphqlService, PrismaService]
})
export class GraphqlModule {}
