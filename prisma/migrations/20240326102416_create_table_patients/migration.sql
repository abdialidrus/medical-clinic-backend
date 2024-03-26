-- CreateTable
CREATE TABLE `patients` (
    `nik` VARCHAR(20) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `dob` VARCHAR(20) NOT NULL,
    `sex` ENUM('MALE', 'FEMALE') NOT NULL,

    PRIMARY KEY (`nik`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
