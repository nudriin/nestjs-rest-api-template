-- CreateTable
CREATE TABLE `contacts` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(225) NOT NULL,
    `last_name` VARCHAR(225) NULL,
    `email` VARCHAR(225) NULL,
    `phone` VARCHAR(225) NULL,
    `userUsername` VARCHAR(225) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `contacts` ADD CONSTRAINT `contacts_userUsername_fkey` FOREIGN KEY (`userUsername`) REFERENCES `users`(`username`) ON DELETE RESTRICT ON UPDATE CASCADE;
