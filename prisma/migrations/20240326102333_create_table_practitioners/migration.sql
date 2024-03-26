-- CreateTable
CREATE TABLE `practitioners` (
    `nik` VARCHAR(20) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `phone` VARCHAR(20) NULL,
    `address` VARCHAR(255) NULL,
    `postal_code` VARCHAR(10) NULL,
    `str_number` VARCHAR(100) NOT NULL,
    `ihs_number` VARCHAR(100) NULL,
    `specialty` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`nik`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
