-- CreateTable
CREATE TABLE "Membro" (
    "id" SERIAL NOT NULL,
    "NomeMembro" VARCHAR(255) NOT NULL,
    "Idade" INTEGER NOT NULL,
    "Email" VARCHAR(255) NOT NULL,
    "NomePai" VARCHAR(255) NOT NULL,
    "NomeMae" VARCHAR(255) NOT NULL,
    "Cpf" VARCHAR(14) NOT NULL,
    "Rg" VARCHAR(14) NOT NULL,
    "Sexo" VARCHAR(1) NOT NULL,
    "DataNascimento" DATE NOT NULL,
    "CidadeNascimento" VARCHAR(255) NOT NULL,
    "DataBatismo" DATE NOT NULL,
    "funcaoId" INTEGER NOT NULL,
    "telefoneMembroId" INTEGER NOT NULL,
    "enderecoId" INTEGER NOT NULL,
    "veiculoId" INTEGER NOT NULL,
    "MembroPredioId" INTEGER NOT NULL,
    "pictureId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Membro_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ImagemPessao" (
    "id" SERIAL NOT NULL,
    "url" VARCHAR(255) NOT NULL,
    "MembroId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ImagemPessao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FuncaoMembro" (
    "id" SERIAL NOT NULL,
    "MembroId" INTEGER NOT NULL,
    "FuncaoId" INTEGER NOT NULL,
    "InicioVigencia" TIMESTAMP(3) NOT NULL,
    "FimVigencia" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "FuncaoMembro_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FuncaoMembroPredio" (
    "id" SERIAL NOT NULL,
    "FuncaoMembroId" INTEGER NOT NULL,
    "PredioId" INTEGER NOT NULL,
    "InicioVigencia" TIMESTAMP(3) NOT NULL,
    "FimVigencia" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "FuncaoMembroPredio_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MembroEndereco" (
    "id" SERIAL NOT NULL,
    "Rua" VARCHAR(350) NOT NULL,
    "Numero" INTEGER NOT NULL,
    "Complemento" VARCHAR(350) NOT NULL,
    "cidadeId" INTEGER NOT NULL,
    "paisId" TEXT NOT NULL,
    "MembroId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MembroEndereco_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MembroPredio" (
    "id" SERIAL NOT NULL,
    "MembroId" TEXT NOT NULL,
    "predioId" INTEGER NOT NULL,
    "inicioVigencia" TIMESTAMP(3) NOT NULL,
    "fimVigencia" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MembroPredio_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MembroTelefone" (
    "id" SERIAL NOT NULL,
    "CodigoPais" VARCHAR(2) NOT NULL,
    "DDD" INTEGER NOT NULL,
    "Numero" VARCHAR(9) NOT NULL,
    "Tipo" VARCHAR(1) NOT NULL,
    "MembroId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MembroTelefone_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Veiculo" (
    "id" SERIAL NOT NULL,
    "Placa" VARCHAR(7) NOT NULL,
    "Marca" VARCHAR(50) NOT NULL,
    "Modelo" VARCHAR(50) NOT NULL,
    "MembroId" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Veiculo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Predio" (
    "id" SERIAL NOT NULL,
    "NomePredio" VARCHAR(255) NOT NULL,
    "Telefone" VARCHAR(255) NOT NULL,
    "enderecoPredioId" INTEGER NOT NULL,
    "InicioVigencia" TIMESTAMP(3) NOT NULL,
    "FimVigencia" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Predio_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EnderecoPredio" (
    "id" SERIAL NOT NULL,
    "Rua" VARCHAR(255) NOT NULL,
    "Numero" INTEGER NOT NULL,
    "Complemento" VARCHAR(255) NOT NULL,
    "cidadeId" TEXT NOT NULL,
    "paisId" TEXT NOT NULL,
    "predioId" INTEGER NOT NULL,
    "inicioVigencia" TIMESTAMP(3) NOT NULL,
    "fimVigencia" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "EnderecoPredio_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Funcao" (
    "id" SERIAL NOT NULL,
    "NomeFuncao" VARCHAR(255) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Funcao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Cidade" (
    "id" SERIAL NOT NULL,
    "NomeCidade" VARCHAR(255) NOT NULL,
    "estadoId" INTEGER NOT NULL,

    CONSTRAINT "Cidade_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Estado" (
    "id" SERIAL NOT NULL,
    "NomeEstado" VARCHAR(255) NOT NULL,

    CONSTRAINT "Estado_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pais" (
    "id" SERIAL NOT NULL,
    "NomePais" VARCHAR(255) NOT NULL,

    CONSTRAINT "Pais_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_CidadeToEstado" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Membro_Email_key" ON "Membro"("Email");

-- CreateIndex
CREATE INDEX "IDX_Cpf_Membro" ON "Membro"("Cpf");

-- CreateIndex
CREATE INDEX "IDX_NomeMembro" ON "Membro"("NomeMembro");

-- CreateIndex
CREATE INDEX "idx_funcao_Membro" ON "FuncaoMembro"("MembroId");

-- CreateIndex
CREATE INDEX "IDX_Placa_Veiculo" ON "Veiculo"("Placa");

-- CreateIndex
CREATE INDEX "IDX_Marca_Veiculo" ON "Veiculo"("Marca");

-- CreateIndex
CREATE INDEX "IDX_Modelo_Veiculo" ON "Veiculo"("Modelo");

-- CreateIndex
CREATE UNIQUE INDEX "_CidadeToEstado_AB_unique" ON "_CidadeToEstado"("A", "B");

-- CreateIndex
CREATE INDEX "_CidadeToEstado_B_index" ON "_CidadeToEstado"("B");

-- AddForeignKey
ALTER TABLE "Membro" ADD CONSTRAINT "Membro_funcaoId_fkey" FOREIGN KEY ("funcaoId") REFERENCES "FuncaoMembro"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Membro" ADD CONSTRAINT "Membro_telefoneMembroId_fkey" FOREIGN KEY ("telefoneMembroId") REFERENCES "MembroTelefone"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Membro" ADD CONSTRAINT "Membro_enderecoId_fkey" FOREIGN KEY ("enderecoId") REFERENCES "MembroEndereco"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Membro" ADD CONSTRAINT "Membro_veiculoId_fkey" FOREIGN KEY ("veiculoId") REFERENCES "Veiculo"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Membro" ADD CONSTRAINT "Membro_MembroPredioId_fkey" FOREIGN KEY ("MembroPredioId") REFERENCES "MembroPredio"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Membro" ADD CONSTRAINT "Membro_pictureId_fkey" FOREIGN KEY ("pictureId") REFERENCES "ImagemPessao"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Predio" ADD CONSTRAINT "Predio_enderecoPredioId_fkey" FOREIGN KEY ("enderecoPredioId") REFERENCES "EnderecoPredio"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CidadeToEstado" ADD CONSTRAINT "_CidadeToEstado_A_fkey" FOREIGN KEY ("A") REFERENCES "Cidade"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CidadeToEstado" ADD CONSTRAINT "_CidadeToEstado_B_fkey" FOREIGN KEY ("B") REFERENCES "Estado"("id") ON DELETE CASCADE ON UPDATE CASCADE;
