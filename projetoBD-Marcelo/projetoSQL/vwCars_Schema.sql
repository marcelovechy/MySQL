-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema VW_Cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema VW_Cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `VW_Cars` DEFAULT CHARACTER SET utf8mb4 ;
USE `VW_Cars` ;

-- -----------------------------------------------------
-- Table `VW_Cars`.`Make`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VW_Cars`.`Make` (
  `make_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  PRIMARY KEY (`make_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VW_Cars`.`CarAgency`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VW_Cars`.`CarAgency` (
  `idCarAgency` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `lat` VARCHAR(15) NULL,
  `long` VARCHAR(15) NULL,
  `telephone` VARCHAR(9) NOT NULL,
  `address` VARCHAR(500) NOT NULL,
  `make_id` INT NULL,
  PRIMARY KEY (`idCarAgency`),
  INDEX `fk_CarAgency_Make_idx` (`make_id` ASC) VISIBLE,
  CONSTRAINT `fk_CarAgency_Make`
    FOREIGN KEY (`make_id`)
    REFERENCES `VW_Cars`.`Make` (`make_id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VW_Cars`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VW_Cars`.`Cars` (
  `car_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VW_Cars`.`telephone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VW_Cars`.`telephone` (
  `number` CHAR(9) NOT NULL,
  `idCarAgency` INT NOT NULL,
  INDEX `fk_telephone_CarAgency_idx` (`idCarAgency` ASC) VISIBLE,
  CONSTRAINT `fk_telephone_CarAgency`
    FOREIGN KEY (`idCarAgency`)
    REFERENCES `VW_Cars`.`CarAgency` (`idCarAgency`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VW_Cars`.`price`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VW_Cars`.`price` (
  `idCarAgency` INT NOT NULL,
  `car_id` INT NOT NULL,
  `date` DATE NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  INDEX `fk_price_car_idx` (`car_id` ASC) VISIBLE,
  INDEX `fk_price_caragency_idx` (`idCarAgency` ASC) VISIBLE,
  CONSTRAINT `fk_price_caragency`
    FOREIGN KEY (`idCarAgency`)
    REFERENCES `VW_Cars`.`CarAgency` (`idCarAgency`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_price_car`
    FOREIGN KEY (`car_id`)
    REFERENCES `VW_Cars`.`Cars` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
