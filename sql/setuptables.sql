-- Adminer 4.2.2 MySQL dump

SET NAMES utf8;
-- SET time_zone = '+00:00';
-- SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `users_xataface`;
CREATE TABLE `users_xataface` (
  `username` varchar(32) NOT NULL,
  `password` varchar(244) NOT NULL,
  `Role` enum('READ','NO','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER','ADDER','EDITB1','MANAGER') DEFAULT 'ADDER',
  `first_name` varchar(233) DEFAULT NULL,
  `last_name` varchar(233) DEFAULT NULL,
  `address` varchar(244) DEFAULT NULL,
  `phone_num` varchar(211) DEFAULT NULL,
  `email` varchar(234) NOT NULL,
  `comment_fld1` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2016-11-19 14:45:15