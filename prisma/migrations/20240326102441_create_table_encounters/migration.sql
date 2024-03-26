-- CreateTable
CREATE TABLE `encounters` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `patient_nik` VARCHAR(20) NOT NULL,
    `practitioner_nik` VARCHAR(20) NOT NULL,
    `status` ENUM('INPROGRESS', 'FINISHED') NOT NULL,
    `queue_number` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `encounters` ADD CONSTRAINT `encounters_patient_nik_fkey` FOREIGN KEY (`patient_nik`) REFERENCES `patients`(`nik`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `encounters` ADD CONSTRAINT `encounters_practitioner_nik_fkey` FOREIGN KEY (`practitioner_nik`) REFERENCES `practitioners`(`nik`) ON DELETE RESTRICT ON UPDATE CASCADE;
