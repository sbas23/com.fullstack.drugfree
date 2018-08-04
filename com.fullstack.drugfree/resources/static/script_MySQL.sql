CREATE SCHEMA `drugfree` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `drugfree`.`tbl_users` (
  `PK_Id` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `Document` BIGINT(15) NOT NULL,
  `Mail` VARCHAR(45) NULL,
  `Cell_Phone` BIGINT(15) NULL,
  `Profession` VARCHAR(45) NULL,
  `FK_Id_Fundacion` INT NOT NULL,
  `FK_Id_Role` VARCHAR(45) NOT NULL,
  `Status` INT NOT NULL,
  PRIMARY KEY (`PK_Id`));

CREATE TABLE `drugfree`.`tbl_role` (
  `PK_Id_Role` INT NOT NULL,
  `Name_Role` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(45) NULL,
  PRIMARY KEY (`PK_Id_Role`));

CREATE TABLE `drugfree`.`tbl_fundation` (
  `PK_Id_foundation` INT NOT NULL,
  `Name_foundation` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `Phone` BIGINT(15) NULL,
  `Mail` VARCHAR(45) NULL,
  PRIMARY KEY (`PK_Id_foundation`));

CREATE TABLE `drugfree`.`tbl_services_fundation` (
  `PK_Service_Id` INT NOT NULL,
  `Name_Service` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(45) NULL,
  `Cost` BIGINT(15) NULL,
  PRIMARY KEY (`PK_Service_Id`));

CREATE TABLE `drugfree`.`tbl_chat` (
  `PK_Id_Conversation` INT NOT NULL,
  `FK_Id_User` INT NOT NULL,
  `Conversation` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PK_Id_Conversation`));

CREATE TABLE `drugfree`.`tbl_foro` (
  `PK_Id_Topic` INT NOT NULL,
  `Question` VARCHAR(45) NOT NULL,
  `Answer` VARCHAR(45) NOT NULL,
  `Professional_Id_user` INT NOT NULL,
  PRIMARY KEY (`PK_Id_Topic`));

CREATE TABLE `drugfree`.`tbl_calendar` (
  `PK_Calendar_Id` INT NOT NULL,
  `FK_Id_User` INT NOT NULL,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  `Id_Status` INT NOT NULL,
  PRIMARY KEY (`PK_Calendar_Id`));

CREATE TABLE `drugfree`.`tbl_status_calender` (
  `PK_Id_Status_Calendar` INT NOT NULL,
  `Description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PK_Id_Status_Calendar`));