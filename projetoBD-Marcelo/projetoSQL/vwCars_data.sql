-- Inserts Make
INSERT INTO `VW_Cars`.`Make` (`name`) VALUES ('SEAT');
INSERT INTO `VW_Cars`.`Make` (`name`) VALUES ('VW');
INSERT INTO `VW_Cars`.`Make` (`name`) VALUES ('FIAT');
INSERT INTO `VW_Cars`.`Make` (`name`) VALUES ('BMW');
INSERT INTO `VW_Cars`.`Make` (`name`) VALUES ('OPEL');
INSERT INTO `VW_Cars`.`Make` (`name`) VALUES ('AUDI');

-- Inserts Cars

INSERT INTO `VW_Cars`.`Cars` (`name`) VALUES ('Leon');
INSERT INTO `VW_Cars`.`Cars` (`name`) VALUES ('Polo');
INSERT INTO `VW_Cars`.`Cars` (`name`) VALUES ('X1');
INSERT INTO `VW_Cars`.`Cars` (`name`) VALUES ('Corsa');
INSERT INTO `VW_Cars`.`Cars` (`name`) VALUES ('Punto');CarAgencyCarAgencyCarAgency
INSERT INTO `VW_Cars`.`Cars` (`name`) VALUES ('A3');

-- Inserts Carros em agencias
INSERT INTO `VW_Cars`.`CarAgency` (`name`, `telephone`, `address`, `make_id`) VALUES ('VWlisboa', '999555222', 'Lisbon', '2');
INSERT INTO `VW_Cars`.`CarAgency` (`name`, `telephone`, `address`, `make_id`) VALUES ('FiatLisbon', '955888555', 'Oeiras', '3');
INSERT INTO `VW_Cars`.`CarAgency` (`name`, `telephone`, `address`, `make_id`) VALUES ('Opel', '944888555', 'Amadora', '5');
INSERT INTO `VW_Cars`.`CarAgency` (`name`, `telephone`, `address`, `make_id`) VALUES ('Bmw', '933444777', 'Cascais', '4');
INSERT INTO `VW_Cars`.`CarAgency` (`name`, `telephone`, `address`, `make_id`) VALUES ('Audi', '255888522', 'Almada', '6');
INSERT INTO `VW_Cars`.`CarAgency` (`name`, `telephone`, `address`, `make_id`) VALUES ('Seat', '555777444', 'Palmela', '1');

