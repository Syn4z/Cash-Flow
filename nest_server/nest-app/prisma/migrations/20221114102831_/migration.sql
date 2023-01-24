-- CreateTable
CREATE TABLE "Dept" (
    "id" BIGINT NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,
    "currency" VARCHAR(20) NOT NULL,
    "source" VARCHAR(50) NOT NULL,

    CONSTRAINT "Dept_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Income" (
    "id" BIGINT NOT NULL,
    "type" VARCHAR(20) NOT NULL,
    "category" VARCHAR(50),
    "amount" DOUBLE PRECISION NOT NULL,
    "currency" VARCHAR(50) NOT NULL,

    CONSTRAINT "Income_pkey" PRIMARY KEY ("id")
);
