-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema digital-marketing
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema digital-marketing
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `digital-marketing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `digital-marketing` ;

-- -----------------------------------------------------
-- Table `digital-marketing`.`blogs-table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `digital-marketing`.`blogs-table` (
  `blog-id` INT(11) NOT NULL AUTO_INCREMENT,
  `blog-author` VARCHAR(30) NOT NULL,
  `blog-date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blog-title` VARCHAR(100) NOT NULL,
  `blog-detail` VARCHAR(1000) NOT NULL,
  `blog-author-detail` VARCHAR(100) NOT NULL,
  `blog-image-path` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`blog-id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `digital-marketing`.`contact-us-table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `digital-marketing`.`contact-us-table` (
  `id-contact-us` INT(11) NOT NULL AUTO_INCREMENT,
  `contact-us-first-name` VARCHAR(50) NOT NULL,
  `contact-us-last-name` VARCHAR(20) NULL DEFAULT NULL,
  `contact-us-email` VARCHAR(45) NULL DEFAULT NULL,
  `contact-us-phone-number` INT(11) NULL DEFAULT NULL,
  `contact-us-subject` VARCHAR(50) NULL DEFAULT NULL,
  `contact-us-package` VARCHAR(10) NULL DEFAULT NULL,
  `contact-us-message` VARCHAR(200) NULL DEFAULT NULL,
  `contact-us-date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id-contact-us`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
