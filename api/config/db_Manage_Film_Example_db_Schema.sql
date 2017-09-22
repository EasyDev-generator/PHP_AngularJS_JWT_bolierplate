--
-- Database: `Manage_Film_Example_db`
--

CREATE DATABASE IF NOT EXISTS `Manage_Film_Example_db`;
USE `Manage_Film_Example_db`;

CREATE TABLE IF NOT EXISTS `user` (
	`user` varchar(30) ,
	`pass` varchar(32) ,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);

INSERT INTO `Manage_Film_Example_db`.`user` (`user`, `pass`, `_id`) VALUES ('admin', '1a1dc91c907325c69271ddf0c944bc72', 1);

CREATE TABLE IF NOT EXISTS `roles` (
	`role` varchar(30) ,
	
	-- RELAZIONI

	`_user` int(11)  NOT NULL REFERENCES user(_id),
	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);
INSERT INTO `Manage_Film_Example_db`.`roles` (`role`, `_user`, `_id`) VALUES ('ADMIN', '1', 1);

-- ENTITIES

--
-- Struttura della tabella `actor`
--

CREATE TABLE IF NOT EXISTS `actor` (
	`birthDate` date ,
	`name` varchar(30)  NOT NULL,
	`surname` varchar(30) ,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);




--
-- Struttura della tabella `film`
--

CREATE TABLE IF NOT EXISTS `film` (
	`genre` varchar(30) ,
	`title` varchar(30)  NOT NULL,
	`year` numeric ,
	
	-- RELAZIONI
	`filmMaker` int(11)  NOT NULL REFERENCES filmmaker(_id),

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);



-- relation m:m cast Film - Actor
CREATE TABLE IF NOT EXISTS `Film_cast` (
    `_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `id_Film` int(11)  NOT NULL REFERENCES Film(_id),
    `id_Actor` int(11)  NOT NULL REFERENCES Actor(_id)
);




--
-- Struttura della tabella `filmmaker`
--

CREATE TABLE IF NOT EXISTS `filmmaker` (
	`name` varchar(30)  NOT NULL,
	`surname` varchar(30) ,
	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);




