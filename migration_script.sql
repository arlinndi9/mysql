-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: biblotekacopy
-- Source Schemata: bibloteka
-- Created: Tue Jan 25 00:17:10 2022
-- Workbench Version: 8.0.27
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema biblotekacopy
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `biblotekacopy` ;
CREATE SCHEMA IF NOT EXISTS `biblotekacopy` ;

-- ----------------------------------------------------------------------------
-- Table biblotekacopy.autori
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblotekacopy`.`autori` (
  `AutoriID` INT NOT NULL AUTO_INCREMENT,
  `emri` VARCHAR(50) NOT NULL,
  `mbiemri` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`AutoriID`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table biblotekacopy.autorilibrave
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblotekacopy`.`autorilibrave` (
  `idautori` INT NOT NULL AUTO_INCREMENT,
  `libriid` INT NOT NULL,
  PRIMARY KEY (`idautori`, `libriid`),
  INDEX `librishkruar_idx` (`libriid` ASC) VISIBLE,
  CONSTRAINT `autoriid`
    FOREIGN KEY (`idautori`)
    REFERENCES `biblotekacopy`.`autori` (`AutoriID`),
  CONSTRAINT `librishkruar`
    FOREIGN KEY (`libriid`)
    REFERENCES `biblotekacopy`.`libri` (`libriID`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table biblotekacopy.huazimet
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblotekacopy`.`huazimet` (
  `huazimetID` INT NOT NULL AUTO_INCREMENT,
  `lexuesiID` INT NOT NULL,
  `libriID` INT NOT NULL,
  `datahuazimit` DATE NOT NULL,
  `datakthimit` DATE NOT NULL,
  PRIMARY KEY (`huazimetID`),
  INDEX `lexuesid_idx` (`lexuesiID` ASC) VISIBLE,
  INDEX `libriid_idx` (`libriID` ASC) VISIBLE,
  CONSTRAINT `lexuesid`
    FOREIGN KEY (`lexuesiID`)
    REFERENCES `biblotekacopy`.`lexuesi` (`LexuesiID`),
  CONSTRAINT `libriid`
    FOREIGN KEY (`libriID`)
    REFERENCES `biblotekacopy`.`libri` (`libriID`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table biblotekacopy.lexuesi
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblotekacopy`.`lexuesi` (
  `LexuesiID` INT NOT NULL AUTO_INCREMENT,
  `emri` VARCHAR(50) NOT NULL,
  `mbiemri` VARCHAR(50) NOT NULL,
  `gjinia` CHAR(1) NOT NULL,
  `datelindja` DATE NOT NULL,
  `drejtimi` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`LexuesiID`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table biblotekacopy.libri
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblotekacopy`.`libri` (
  `libriID` INT NOT NULL AUTO_INCREMENT,
  `emri` VARCHAR(45) NOT NULL,
  `shbotuese` INT NOT NULL,
  `databotimit` DATE NOT NULL,
  `disponueshmeria` INT NULL DEFAULT NULL,
  `isbn` INT NULL DEFAULT NULL,
  `numrifaqeve` INT NOT NULL,
  `qmimi` FLOAT NOT NULL,
  PRIMARY KEY (`libriID`),
  INDEX `shbotuese_idx` (`shbotuese` ASC) VISIBLE,
  CONSTRAINT `shbotuese`
    FOREIGN KEY (`shbotuese`)
    REFERENCES `biblotekacopy`.`shtepiabotuese` (`ShtepiabotueseID`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table biblotekacopy.shtepiabotuese
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblotekacopy`.`shtepiabotuese` (
  `ShtepiabotueseID` INT NOT NULL AUTO_INCREMENT,
  `emri` VARCHAR(50) NOT NULL,
  `datathemelimit` VARCHAR(45) NOT NULL,
  `lokacioni` VARCHAR(45) NOT NULL,
  `telefoni` INT NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`ShtepiabotueseID`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Routine biblotekacopy.kerkostudent
-- ----------------------------------------------------------------------------
DELIMITER $$

DELIMITER $$
USE `biblotekacopy`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `kerkostudent`(in id int)
BEGIN
    select LexuesiID,CONCAT(emri,' ', mbiemri)as 'student name' from lexuesi where LexuesiID=id;
END$$

DELIMITER ;

-- ----------------------------------------------------------------------------
-- Routine biblotekacopy.mosha
-- ----------------------------------------------------------------------------
DELIMITER $$

DELIMITER $$
USE `biblotekacopy`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `mosha`()
BEGIN
  select timestampdiff(YEAR,datelindja,now()) AS datelindja from lexuesi;
  
END$$

DELIMITER ;

-- ----------------------------------------------------------------------------
-- Routine biblotekacopy.renditjanumritfaqev
-- ----------------------------------------------------------------------------
DELIMITER $$

DELIMITER $$
USE `biblotekacopy`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `renditjanumritfaqev`()
BEGIN
	select *from libri order by numrifaqeve;

END$$

DELIMITER ;

-- ----------------------------------------------------------------------------
-- Routine biblotekacopy.titullilibres
-- ----------------------------------------------------------------------------
DELIMITER $$

DELIMITER $$
USE `biblotekacopy`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `titullilibres`(emri varchar(100)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	return concat(emri);
END$$

DELIMITER ;
SET FOREIGN_KEY_CHECKS = 1;
