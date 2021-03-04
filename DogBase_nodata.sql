-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DogBase
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DogBase
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DogBase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `DogBase` ;

-- -----------------------------------------------------
-- Table `DogBase`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(245) NOT NULL,
  `phone` BIGINT(12) NOT NULL,
  `password` CHAR(32) NULL DEFAULT NULL COMMENT 'SHA1(\'asdasdass\'.\'saasdasdasd\')',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`media`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`media` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` INT UNSIGNED NOT NULL,
  `size` BIGINT NOT NULL,
  `file` VARCHAR(45) NULL COMMENT '/files/folder/file.jpg\n\n',
  `blob` BLOB NULL DEFAULT NULL,
  `metadata` JSON NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `media_user` (`users_id` ASC) VISIBLE,
  CONSTRAINT `media_user`
    FOREIGN KEY (`users_id`)
    REFERENCES `DogBase`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`profiles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`profiles` (
  `users_id` INT UNSIGNED NOT NULL,
  `firstname` VARCHAR(245) NOT NULL,
  `lastname` VARCHAR(245) NOT NULL,
  `gender` ENUM('m', 'f') NOT NULL,
  `birthday` DATE NOT NULL,
  `address` VARCHAR(245) NULL DEFAULT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `photo_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`users_id`),
  INDEX `media_id` (`photo_id` ASC) VISIBLE,
  CONSTRAINT `users_id`
    FOREIGN KEY (`users_id`)
    REFERENCES `DogBase`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `media_id`
    FOREIGN KEY (`photo_id`)
    REFERENCES `DogBase`.`media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`messages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`messages` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_users_id` INT UNSIGNED NOT NULL,
  `to_users_id` INT UNSIGNED NOT NULL,
  `text` TEXT NULL DEFAULT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `read_at` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `f_user_id` (`from_users_id` ASC) VISIBLE,
  INDEX `t_user_id2` (`to_users_id` ASC) VISIBLE,
  CONSTRAINT `from_user_id`
    FOREIGN KEY (`from_users_id`)
    REFERENCES `DogBase`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `to_user_id`
    FOREIGN KEY (`to_users_id`)
    REFERENCES `DogBase`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`kennels`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`kennels` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(145) NOT NULL,
  `owner_id` INT UNSIGNED NOT NULL,
  `city` VARCHAR(145) NOT NULL,
  `tatoo` VARCHAR(145) NOT NULL,
  `email` VARCHAR(245) NOT NULL,
  `phone` BIGINT(12) NOT NULL,
  `web` VARCHAR(145) NULL DEFAULT NULL,
  `description` VARCHAR(245) NULL,
  PRIMARY KEY (`id`),
  INDEX `ken_owner` (`owner_id` ASC) VISIBLE,
  UNIQUE INDEX `tatoo_UNIQUE` (`tatoo` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE,
  UNIQUE INDEX `web_UNIQUE` (`web` ASC) VISIBLE,
  CONSTRAINT `ken_owner`
    FOREIGN KEY (`owner_id`)
    REFERENCES `DogBase`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`dogs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`dogs` (
  `doq_id` INT UNSIGNED NOT NULL,
  `doq_name` VARCHAR(245) NOT NULL,
  `breeder` INT UNSIGNED NULL,
  `owner` INT UNSIGNED NULL,
  `birthday` DATE NULL,
  `sex` ENUM('m', 'f') NULL,
  `colour` VARCHAR(245) NULL,
  `tattoo` VARCHAR(45) NULL,
  `chip` INT NULL DEFAULT NULL,
  `health` VARCHAR(145) NULL DEFAULT NULL,
  UNIQUE INDEX `doq_id_UNIQUE` (`doq_id` ASC) VISIBLE,
  UNIQUE INDEX `doq_name_UNIQUE` (`doq_name` ASC) VISIBLE,
  PRIMARY KEY (`doq_id`),
  INDEX `owner_idx` (`owner` ASC) VISIBLE,
  INDEX `breeder_idx` (`breeder` ASC) VISIBLE,
  CONSTRAINT `owner`
    FOREIGN KEY (`owner`)
    REFERENCES `DogBase`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `breeder`
    FOREIGN KEY (`breeder`)
    REFERENCES `DogBase`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`pedigrees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`pedigrees` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `dog_id` INT UNSIGNED NOT NULL,
  `mom_id` INT UNSIGNED NOT NULL,
  `dad_id` INT UNSIGNED NOT NULL,
  `grandmom_id` INT UNSIGNED NOT NULL,
  `granddad_id` INT UNSIGNED NOT NULL,
  `ggrandmom_id` INT UNSIGNED NOT NULL,
  `ggranddad_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `d_idx` (`dog_id` ASC) VISIBLE,
  INDEX `2_idx` (`mom_id` ASC) VISIBLE,
  INDEX `3_idx` (`dad_id` ASC) VISIBLE,
  INDEX `4_idx` (`grandmom_id` ASC) VISIBLE,
  INDEX `5_idx` (`granddad_id` ASC) VISIBLE,
  INDEX `6_idx` (`ggrandmom_id` ASC) VISIBLE,
  INDEX `7_idx` (`ggranddad_id` ASC) VISIBLE,
  CONSTRAINT `1`
    FOREIGN KEY (`dog_id`)
    REFERENCES `DogBase`.`dogs` (`doq_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `2`
    FOREIGN KEY (`mom_id`)
    REFERENCES `DogBase`.`dogs` (`doq_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `3`
    FOREIGN KEY (`dad_id`)
    REFERENCES `DogBase`.`dogs` (`doq_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `4`
    FOREIGN KEY (`grandmom_id`)
    REFERENCES `DogBase`.`dogs` (`doq_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `5`
    FOREIGN KEY (`granddad_id`)
    REFERENCES `DogBase`.`dogs` (`doq_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `6`
    FOREIGN KEY (`ggrandmom_id`)
    REFERENCES `DogBase`.`dogs` (`doq_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `7`
    FOREIGN KEY (`ggranddad_id`)
    REFERENCES `DogBase`.`dogs` (`doq_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`titles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`titles` (
  `dog_id` INT UNSIGNED NOT NULL,
  `title_name` VARCHAR(45) NULL DEFAULT NULL,
  `title_rules` VARCHAR(145) NULL DEFAULT NULL,
  UNIQUE INDEX `dog_id_UNIQUE` (`dog_id` ASC),
  CONSTRAINT `dogs`
    FOREIGN KEY (`dog_id`)
    REFERENCES `DogBase`.`dogs` (`doq_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`judges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`judges` (
  `judge_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `photo_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`judge_id`),
  UNIQUE INDEX `id_UNIQUE` (`judge_id` ASC) VISIBLE,
  INDEX `photo_id_idx` (`photo_id` ASC) VISIBLE,
  CONSTRAINT `photo_id`
    FOREIGN KEY (`photo_id`)
    REFERENCES `DogBase`.`media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`shows`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`shows` (
  `id` INT UNSIGNED NOT NULL,
  `date` DATE NOT NULL,
  `country` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `rang` VARCHAR(45) NULL,
  `judge_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `judge_idx` (`judge_id` ASC) VISIBLE,
  CONSTRAINT `judge`
    FOREIGN KEY (`judge_id`)
    REFERENCES `DogBase`.`judges` (`judge_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DogBase`.`show_result`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`show_result` (
  `show_id` INT UNSIGNED NOT NULL,
  `dog_id` INT UNSIGNED NOT NULL,
  `dog_result` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`show_id`),
  UNIQUE INDEX `show_id_UNIQUE` (`show_id` ASC) VISIBLE,
  UNIQUE INDEX `dog_id_UNIQUE` (`dog_id` ASC) VISIBLE,
  CONSTRAINT `dog_id`
    FOREIGN KEY (`dog_id`)
    REFERENCES `DogBase`.`dogs` (`doq_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `show_id`
    FOREIGN KEY (`show_id`)
    REFERENCES `DogBase`.`shows` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `DogBase` ;

-- -----------------------------------------------------
-- Placeholder table for view `DogBase`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DogBase`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `DogBase`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DogBase`.`view1`;
USE `DogBase`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
