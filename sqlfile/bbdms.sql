-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 03, 2022 at 04:59 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'cd089cad82f8bccc2e8ed1942a6c6d62', '2020-12-13 05:55:53'),
(2, 'admin', 'cd089cad82f8bccc2e8ed1942a6c6d62', '2022-01-03 16:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

DROP TABLE IF EXISTS `tblblooddonars`;
CREATE TABLE IF NOT EXISTS `tblblooddonars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', '9999857868', 'anuj@gmail.com', 'Male', 27, 'O+', 'Jabalpur,MP', '2017-06-30 20:14:16', 1),
(2, 'Saroj', '41241241241', 'saroj@gmail.com', 'Male', 34, 'AB-', 'Indore,MP', '2017-06-30 20:48:11', 1),
(3, 'Ami', '42352352352', '', 'Male', 23, 'A+', NULL, '2017-07-01 07:21:21', 1),
(4, 'Ruhi', '35345435345', '', 'Female', 26, 'AB-', NULL, '2017-07-01 07:21:42', 1),
(5, 'Nitesh Kumar', '8569855244', 'niiii@gmail.com', 'Male', 32, 'A-', 'Katni,MP', '2017-07-01 09:00:18', 1),
(6, 'XYZ', '578898989', '', 'Male', 45, 'O-', '', '2020-11-19 18:44:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

DROP TABLE IF EXISTS `tblbloodgroup`;
CREATE TABLE IF NOT EXISTS `tblbloodgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(7, 'O+', '2020-12-03 07:06:11'),
(8, 'B+', '2020-12-03 07:06:20'),
(9, 'B-', '2020-12-03 07:06:30'),
(10, 'AB-', '2020-12-14 05:35:12'),
(11, 'O-', '2020-12-14 05:35:33'),
(12, 'A-', '2020-12-14 05:36:51'),
(13, 'A+', '2020-12-14 05:37:14'),
(14, 'AB+', '2020-12-14 05:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodstock`
--

DROP TABLE IF EXISTS `tblbloodstock`;
CREATE TABLE IF NOT EXISTS `tblbloodstock` (
  `Blood_Group` varchar(5) NOT NULL,
  `Stock` int(8) DEFAULT NULL,
  PRIMARY KEY (`Blood_Group`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodstock`
--

INSERT INTO `tblbloodstock` (`Blood_Group`, `Stock`) VALUES
('A+', 4),
('A-', 4),
('B+', 10),
('B-', 4),
('O+', 5),
('O-', 0),
('AB+', 6),
('AB-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

DROP TABLE IF EXISTS `tblcontactusinfo`;
CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Sadar,Jabalpur,MP,IN																									', 'test123@gmail.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

DROP TABLE IF EXISTS `tblcontactusquery`;
CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'xyz@gmail.com', '2147483647', 'Dummy text.Dummy text.', '2017-06-18 04:33:07', 1),
(2, 'caasda', 'amigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 15:47:09', NULL),
(3, 'caasda', 'amigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 15:51:30', NULL),
(4, 'te', 'sdfsdf@gmail.com', '75787875545', 'sfsdf sdg hs h sh', '2017-07-01 01:49:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '																																																																																																														<h5><span style=\"font-size: medium;\"><span style=\"color: rgb(0, 0, 0); text-align: justify; font-family: georgia;\">Donating blood can save lives.It is that simple.<br></span><span style=\"font-family: georgia;\"><span style=\"color: rgb(0, 0, 0); text-align: justify;\">We do not have to be a superhero to save someone,a simple act of donating blood can also save lives</span><span style=\"color: rgb(0, 0, 0); text-align: justify;\">.</span></span><span style=\"font-family: georgia;\"><span style=\"color: rgb(0, 0, 0); text-align: justify;\"><br></span></span><span style=\"font-family: georgia;\"><span style=\"color: rgb(0, 0, 0); text-align: justify;\">Donating blood also has numerous health benefits for the user including reducing the risk of heart attacks and even cancer.</span></span></span></h5><div><span style=\"font-family: georgia;\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\"><br></span></span></div><div><span style=\"font-family: georgia;\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\"><br></span></span></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(3, 'About Us ', 'aboutus', '																																								<h5><span style=\"color: rgb(0, 0, 0); text-align: justify; font-family: georgia; font-size: medium;\">We run a blood bank and donor management system&nbsp;<br></span><span style=\"color: rgb(0, 0, 0); text-align: justify; font-family: georgia; font-size: medium;\">which helps to receive blood from interested donors and supply them to those in need.<br></span><span style=\"color: rgb(0, 0, 0); text-align: justify; font-family: georgia; font-size: medium;\">We also store blood in stock for future use.</span></h5>\r\n										\r\n										');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
