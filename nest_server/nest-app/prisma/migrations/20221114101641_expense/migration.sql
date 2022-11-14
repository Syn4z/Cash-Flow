-- CreateTable
CREATE TABLE "Expense" (
    "id" BIGINT NOT NULL,
    "type" VARCHAR(20) NOT NULL,
    "category" VARCHAR(50),
    "amount" DOUBLE PRECISION NOT NULL,
    "currency" VARCHAR(50) NOT NULL,
    "description" VARCHAR(100),

    CONSTRAINT "expense_pkey" PRIMARY KEY ("id")
);
