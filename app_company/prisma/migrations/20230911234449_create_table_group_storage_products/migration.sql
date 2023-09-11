/*
  Warnings:

  - You are about to drop the `Group` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Products` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Storage` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Group";

-- DropTable
DROP TABLE "Products";

-- DropTable
DROP TABLE "Storage";

-- CreateTable
CREATE TABLE "group" (
    "id" TEXT NOT NULL,
    "group_type" TEXT NOT NULL,
    "group_name" TEXT NOT NULL,

    CONSTRAINT "group_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "storage" (
    "id" TEXT NOT NULL,
    "storage_code" TEXT NOT NULL,
    "storage_name" TEXT NOT NULL,

    CONSTRAINT "storage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "products" (
    "id" TEXT NOT NULL,
    "product_name" TEXT NOT NULL,
    "product_type" TEXT NOT NULL,
    "storage_name" TEXT NOT NULL,

    CONSTRAINT "products_pkey" PRIMARY KEY ("id")
);
