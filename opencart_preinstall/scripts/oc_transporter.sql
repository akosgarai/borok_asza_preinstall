-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 23, 2014 at 07:33 PM
-- Server version: 5.5.35
-- PHP Version: 5.4.6-1ubuntu1.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `opencart`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_transporter`
--

CREATE TABLE IF NOT EXISTS `oc_transporter` (
  `transporter_id` int(11) NOT NULL AUTO_INCREMENT,
  `transporter_name` varchar(200) CHARACTER SET latin2 COLLATE latin2_hungarian_ci NOT NULL,
  `transporter_address` varchar(200) CHARACTER SET latin2 COLLATE latin2_hungarian_ci NOT NULL,
  `transporter_information` varchar(2000) CHARACTER SET latin2 COLLATE latin2_hungarian_ci NOT NULL,
  `price_local` int(11) NOT NULL,
  `price_abroad` int(11) NOT NULL,
  PRIMARY KEY (`transporter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_transporter`
--

INSERT INTO `oc_transporter` (`transporter_id`, `transporter_name`, `transporter_address`, `transporter_information`, `price_local`, `price_abroad`) VALUES
(1, 'szallito ceg Kft.', 'Budapest, 1111, Fehervari ut 113/A', 'Ez a szerzodott szallitoceg, aki szallitja a borainkat nagy igyekezettel.', 900, 2300);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
