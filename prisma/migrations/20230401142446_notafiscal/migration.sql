-- CreateTable
CREATE TABLE `notasfiscais` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `cpfCliente` VARCHAR(20) NOT NULL,
    `dataVenda` DATETIME(3) NOT NULL,
    `enderecoEntrega` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `itemnotafiscal` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `notaFiscalId` INTEGER NOT NULL,
    `produtoId` INTEGER NOT NULL,
    `quantidade` INTEGER NOT NULL,
    `valorUnitario` DECIMAL(12, 2) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `itemnotafiscal` ADD CONSTRAINT `itemnotafiscal_notaFiscalId_fkey` FOREIGN KEY (`notaFiscalId`) REFERENCES `notasfiscais`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `itemnotafiscal` ADD CONSTRAINT `itemnotafiscal_produtoId_fkey` FOREIGN KEY (`produtoId`) REFERENCES `produtos`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
