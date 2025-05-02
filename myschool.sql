SET NAMES utf8mb4;
SET time_zone = '+08:00';
SET foreign_key_checks = 0;

CREATE DATABASE IF NOT EXISTS `student_db` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student_db`;

CREATE TABLE IF NOT EXISTS `student_info` (
  `sid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` VARCHAR(60) NOT NULL,
  `school` VARCHAR(100) NOT NULL,
  `dob` DATE NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `student_info` (`fullname`, `school`, `dob`) VALUES
('陳翊恩', '高雄大學', '1900-01-01');

CREATE TABLE IF NOT EXISTS `login_users` (
  `uid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(40) NOT NULL,
  `user_pass` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `login_users` (`user_id`, `user_pass`) VALUES
('a1123304', '123');

SET foreign_key_checks = 1;
