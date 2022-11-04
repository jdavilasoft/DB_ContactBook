CREATE TABLE `CONTACTS` (
  `idContact` integer PRIMARY KEY,
  `name` varchar(255),
  `lastName` varchar(255),
  `email` varchar(255),
  `address` varchar(255),
  `company` varchar(255)
);

CREATE TABLE `NUMBERS` (
  `idNumber` integer PRIMARY KEY,
  `number` varchar(255),
  `idNumberType` integer,
  `idContact` integer
);

CREATE TABLE `NUMBER_TYPE` (
  `idNumberType` integer PRIMARY KEY,
  `description` varchar(255)
);

ALTER TABLE `NUMBERS` ADD FOREIGN KEY (`idContact`) REFERENCES `CONTACTS` (`idContact`);

ALTER TABLE `NUMBERS` ADD FOREIGN KEY (`idNumberType`) REFERENCES `NUMBER_TYPE` (`idNumberType`);
