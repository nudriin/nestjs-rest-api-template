-- CreateTable
CREATE TABLE `users` (
    `username` VARCHAR(225) NOT NULL,
    `password` VARCHAR(225) NOT NULL,
    `name` VARCHAR(225) NOT NULL,
    `token` VARCHAR(225) NULL,

    PRIMARY KEY (`username`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
