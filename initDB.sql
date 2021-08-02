DROP DATABASE IF EXISTS test;

CREATE DATABASE IF NOT EXISTS test;

use test;

CREATE TABLE `companies` (
  `idCompany` int NOT NULL,
  `CompanyName` varchar(45) NOT NULL,
  `HeadOffice` varchar(45) NOT NULL,
  PRIMARY KEY (`idCompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customers` (
  `idCustomer` int NOT NULL,
  `CustomersName` varchar(45) NOT NULL,
  `TaxCode` varchar(45) NOT NULL,
  `HeadOffice` varchar(45) NOT NULL,
  PRIMARY KEY (`idCustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `developers` (
  `idDeveloper` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` enum('men','women') NOT NULL,
   PRIMARY KEY (`idDeveloper`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `projects` (
  `idProject` int NOT NULL,
  `ProjectName` varchar(45) NOT NULL,
  `BaseTechnology` varchar(45) NOT NULL,
  PRIMARY KEY (`idProject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `skills` (
  `idSkill` int NOT NULL AUTO_INCREMENT,
  `language` enum('Java','C++','C#','JS') NOT NULL,
  `Level` enum('Junior','Middle','Senior') NOT NULL,
  PRIMARY KEY (`idSkill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `developers_skills` (
  `idDeveloper` int NOT NULL,
  `idSkill` int NOT NULL,
  PRIMARY KEY (`idDeveloper`,`idSkill`),
  FOREIGN KEY (`idDeveloper`) REFERENCES `developers`(`idDeveloper`),
  FOREIGN KEY (`idSkill`) REFERENCES `skills`(`idSkill`));

CREATE TABLE `developers_projects` (
  `idDeveloper` int NOT NULL,
  `idProject` int NOT NULL,
  PRIMARY KEY (`idDeveloper`,`idProject`),
  FOREIGN KEY (`idDeveloper`) REFERENCES `developers` (`idDeveloper`),
  FOREIGN KEY (`idProject`) REFERENCES `projects` (`idProject`));

CREATE TABLE `companies_projects` (
  `idCompany` int NOT NULL,
  `idProject` int NOT NULL,
  PRIMARY KEY (`idCompany`,`idProject`),
  KEY `idProject` (`idProject`),
  FOREIGN KEY (`idCompany`) REFERENCES `companies` (`idCompany`),
  FOREIGN KEY (`idProject`) REFERENCES `projects` (`idProject`));

CREATE TABLE `customers_projects` (
  `idCustomer` int NOT NULL,
  `idProject` int NOT NULL,
  PRIMARY KEY (`idCustomer`,`idProject`),
  KEY `idProject` (`idProject`),
  FOREIGN KEY (`idCustomer`) REFERENCES `customers` (`idCustomer`),
  FOREIGN KEY (`idProject`) REFERENCES `projects` (`idProject`));
