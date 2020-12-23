-- MySQL Script generated by MySQL Workbench
-- Fri Apr 17 14:45:17 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Album`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Album` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Album` (
  `Album_id` INT NOT NULL AUTO_INCREMENT,
  `Album_price` DOUBLE NOT NULL,
  `Album_title` VARCHAR(45) NOT NULL,
  `Album_releasedate` DATETIME NOT NULL,
  `Artist_Artist_id` INT NOT NULL,
  PRIMARY KEY (`Album_id`),
  INDEX `fk_Album_Artist1_idx` (`Artist_Artist_id` ASC) ,
  CONSTRAINT `fk_Album_Artist1`
    FOREIGN KEY (`Artist_Artist_id`)
    REFERENCES `mydb`.`Artist` (`Artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Artist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Artist` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Artist` (
  `Artist_id` INT NOT NULL AUTO_INCREMENT,
  `Artist_name` VARCHAR(45) NOT NULL,
  `Artist_about` VARCHAR(250) NOT NULL,
  `Genres_Genres_id` INT NOT NULL,
  PRIMARY KEY (`Artist_id`),
  INDEX `fk_Artist_Genres1_idx` (`Genres_Genres_id` ASC),
  CONSTRAINT `fk_Artist_Genres1`
    FOREIGN KEY (`Genres_Genres_id`)
    REFERENCES `mydb`.`Genres` (`Genres_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cities`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Cities` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Cities` (
  `City_id` INT NOT NULL AUTO_INCREMENT,
  `City` VARCHAR(100) NOT NULL,
  `Province` VARCHAR(100) NOT NULL,
  `Country` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`City_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Customers` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `Customers_id` INT NOT NULL AUTO_INCREMENT,
  `Customers_name` VARCHAR(45) NOT NULL,
  `Cutomers_emailid` VARCHAR(50) NOT NULL,
  `Customers_password` VARCHAR(45) NOT NULL,
  `Customers_yearofbirth` YEAR(4) NOT NULL,
  `City_id` INT NOT NULL,
  PRIMARY KEY (`Customers_id`),
  UNIQUE INDEX `Cutomers_emailid_UNIQUE` (`Cutomers_emailid` ASC) ,
  INDEX `City_id_idx` (`City_id` ASC) ,
  CONSTRAINT `City_id`
    FOREIGN KEY (`City_id`)
    REFERENCES `mydb`.`Cities` (`City_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Genres` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Genres` (
  `Genres_id` INT NOT NULL AUTO_INCREMENT,
  `Genres_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Genres_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Membership`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Membership` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Membership` (
  `Membership_id` INT NOT NULL AUTO_INCREMENT,
  `Membership_type` VARCHAR(45) NOT NULL,
  `Membership_startDate` DATETIME NOT NULL,
  `Membership_endDate` DATETIME NOT NULL,
  `Membership_Category_Membership_Category_id` INT NOT NULL,
  `Customers_Customers_id` INT NOT NULL,
  PRIMARY KEY (`Membership_id`),
  INDEX `fk_Membership_Membership_Category1_idx` (`Membership_Category_Membership_Category_id` ASC) ,
  INDEX `fk_Membership_Customers1_idx` (`Customers_Customers_id` ASC) ,
  CONSTRAINT `fk_Membership_Membership_Category1`
    FOREIGN KEY (`Membership_Category_Membership_Category_id`)
    REFERENCES `mydb`.`Membership_Category` (`Membership_Category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Membership_Customers1`
    FOREIGN KEY (`Customers_Customers_id`)
    REFERENCES `mydb`.`Customers` (`Customers_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Membership_Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Membership_Category` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Membership_Category` (
  `Membership_Category_id` INT NOT NULL AUTO_INCREMENT,
  `Membership_Category_Name` VARCHAR(45) NOT NULL,
  `Membership_Category_price` DECIMAL(9,2) NOT NULL,
  `Membership_Category_features` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Membership_Category_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Track`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Track` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Track` (
  `Track_id` INT NOT NULL AUTO_INCREMENT,
  `Track_name` VARCHAR(45) NOT NULL,
  `Track_composer` VARCHAR(45) NOT NULL,
  `Track_length` DECIMAL(9,2) NOT NULL,
  `Album_Album_id` INT NOT NULL,
  `Genres_Genres_id` INT NOT NULL,
  PRIMARY KEY (`Track_id`),
  INDEX `fk_Track_Album1_idx` (`Album_Album_id` ASC) ,
  INDEX `fk_Track_Genres1_idx` (`Genres_Genres_id` ASC) ,
  CONSTRAINT `fk_Track_Album1`
    FOREIGN KEY (`Album_Album_id`)
    REFERENCES `mydb`.`Album` (`Album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Track_Genres1`
    FOREIGN KEY (`Genres_Genres_id`)
    REFERENCES `mydb`.`Genres` (`Genres_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`playlist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`playlist` ;

CREATE TABLE IF NOT EXISTS `mydb`.`playlist` (
  `Track_Track_id` INT NOT NULL,
  `Customers_Customers_id` INT NOT NULL,
  `playlist_name` VARCHAR(45) NOT NULL,
  `playlist_CreatedOn` DATETIME NOT NULL,
  `playlist_ModifiedOn` DATETIME NOT NULL,
  `playlist_NumberOfTracks` INT NOT NULL,
  PRIMARY KEY (`Track_Track_id`, `Customers_Customers_id`),
  INDEX `fk_Track_has_Customers_Customers1_idx` (`Customers_Customers_id` ASC) ,
  INDEX `fk_Track_has_Customers_Track1_idx` (`Track_Track_id` ASC) ,
  CONSTRAINT `fk_Track_has_Customers_Track1`
    FOREIGN KEY (`Track_Track_id`)
    REFERENCES `mydb`.`Track` (`Track_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Track_has_Customers_Customers1`
    FOREIGN KEY (`Customers_Customers_id`)
    REFERENCES `mydb`.`Customers` (`Customers_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
