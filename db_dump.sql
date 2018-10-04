# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.9
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2015-06-03 14:39:29
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

DROP DATABASE `math_calc`;

CREATE DATABASE IF NOT EXISTS `math_calc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `math_calc`;


CREATE TABLE IF NOT EXISTS `items` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` FLOAT NOT NULL,
  `volume` FLOAT NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `model` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `items` (`id`, `name`, `price`, `volume`, `image`, `description`, `model`) VALUES
	('1', 'Leffe Blond', 73.0, 0.75, 'images/beer/4086102-1000.jpg','1', 0),
	('2', 'Leffe Brune', 73.0, 0.75, 'images/beer/4053985-1000.jpg', '2', 0),
	('3', 'Hoegaarden', 70.0, 0.75, 'images/beer/3732165-1000.jpg', '3', 0),
	('4', 'Krombacher', 53.0, 0.75, 'images/beer/123100-1000.jpg', '4', 0),
	('5', 'Volodar', 5880.0, 0.7, 'images/hAlc/2901175-1000.jpg', '5', 1),
	('6', 'Hennessy', 5795.0, 0.7, 'images/hAlc/88174-1000.jpg', '6', 1),
	('7', 'Martell', 5252.0, 0.7, 'images/hAlc/55873-1000.jpg', '7', 1),
	('8', 'Remy Martin', 5215.0, 0.7, 'images/hAlc/28288-1000.jpg', '8', 1),
	('9', 'Hvanchkara', 501.0, 0.75, 'images/wine/45252-1000.jpg', '9', 2),
	('10', 'Campari Bitter', 474.0, 1.0, 'images/wine/22167-1000.jpg', '10', 2),
	('11', 'Mondoro Brut', 378.0, 0.75, 'images/wine/2951240-1000.jpg', '11', 2),
	('12', 'Mondoro Asti', 378.0, 0.75, 'images/wine/3589311-1000.jpg', '12', 2);

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `addr` varchar(250) NOT NULL,
  `card` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `order_items` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `users` (
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `advertising` tinyint(4) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
