# AdJundiaiNextJs

Etapas:


###Docker-Compose Postgresql


###Prisma schema

The Prisma schema file (short: schema file, Prisma schema or schema) is the main configuration file for your Prisma setup. It is typically called schema.prisma and consists of the following parts:

    Data sources: Specify the details of the data sources Prisma should connect to (e.g. a PostgreSQL database)
    Generators: Specifies what clients should be generated based on the data model (e.g. Prisma Client)
    Data model definition: Specifies your application models (the shape of the data per data source) and their relations

See the Prisma schema API reference for detailed information about each section of the schema.

https://www.prisma.io/docs/concepts/components/prisma-schema



###Prisma Client

Prisma Client is an auto-generated and type-safe query builder that's tailored to your data. The easiest way to get started with Prisma Client is by following the Quickstart.

https://www.prisma.io/docs/concepts/components/prisma-client

npm install prisma --save-dev

npx prisma init --datasource-provider postgresql

npx prisma migrate dev --name init

npm i --save-dev prisma@latest                       │
npm i @prisma/client@latest



# AdJundNextJS
