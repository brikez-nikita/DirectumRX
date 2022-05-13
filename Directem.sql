-- MySQL Script generated by MySQL Workbench
-- Thu May 12 17:21:05 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Тест
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Тест
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Тест` DEFAULT CHARACTER SET utf8 ;
USE `Тест` ;

-- -----------------------------------------------------
-- Table `Тест`.`departmen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Тест`.`departmen` (
  `id_departmen` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`id_departmen`),
  UNIQUE INDEX `id_departmen_UNIQUE` (`id_departmen` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Тест`.`cheif`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Тест`.`cheif` (
  `id_cheif` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `salary` INT NULL,
  PRIMARY KEY (`id_cheif`),
  UNIQUE INDEX `id_UNIQUE` (`id_cheif` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Тест`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Тест`.`employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `departmen_id` INT NULL,
  `cheif_id` INT NULL,
  `name` VARCHAR(45) NULL,
  `salary` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `id_dep_idx` (`departmen_id` ASC) VISIBLE,
  INDEX `id_che_idx` (`cheif_id` ASC) VISIBLE,
  CONSTRAINT `id_dep`
    FOREIGN KEY (`departmen_id`)
    REFERENCES `Тест`.`departmen` (`id_departmen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_che`
    FOREIGN KEY (`cheif_id`)
    REFERENCES `Тест`.`cheif` (`id_cheif`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
