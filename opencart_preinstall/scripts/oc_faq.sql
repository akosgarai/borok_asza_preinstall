-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2014 at 10:40 PM
-- Server version: 5.5.35
-- PHP Version: 5.4.6-1ubuntu1.7

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
-- Table structure for table `oc_faq`
--

CREATE TABLE IF NOT EXISTS `oc_faq` (
  `faq_title` varchar(200) CHARACTER SET latin2 COLLATE latin2_hungarian_ci NOT NULL,
  `faq_description` varchar(10000) CHARACTER SET latin2 COLLATE latin2_hungarian_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_faq`
--

INSERT INTO `oc_faq` (`faq_title`, `faq_description`, `id`, `hidden`) VALUES
('Mik a fobb kulonbsegek a szaraz es az edesebb borok kozott?', 'Borkészítéskor a kipréselt sz?l? leve erjedni kezd, amely során a benne lév? cukor alkohollá alakul. Ahogy csökken a lé cukortartalma, úgy n? az alkoholtartalma. Ahhoz, hogy a bor megtarthassa állagát megfelelő alkoholtartalommal kell rendelkeznie. Ha a kívánt alkoholtartalom elérése után még marad cukor a borban akkor a bor édes lesz, viszont ha már nem, vagy csak minimális cukor maradt benne, a bort száraznak nevezzük. Attól függ?en mennyi cukor maradt a borban, száraznak, félszáraznak, félédesnek vagy édesnek nevezhetjük.\r\nÉdes bornak nevezzük azt, amelynek literenkénti cukortartalma magasabb, mint 45 gramm. A félédesnél a megadott érték 18 és 45 gramm közé esik. Félszáraz borról 4 és 18 gramm közti cukortartalomnál beszélhetünk, egy liter száraz borban pedig 4 grammnál kevesebb a cukor.\r\nAz, hogy egy bort mennyire érzékelünk édesnek, azonban nem csak a cukortartalmától függ. Az édes-érzetünket nagyban befolyásolja például a bor savassága. Általánosságban elmondhatjuk, hogy minél savdúsabb egy bor, annál kevésbé érezzük édesnek. A savasság a cukortartalmat nem csökkenti, az érzetünket azonban befolyásolja.\r\nUgyancsak befolyásolja a bor ízét a gyümölcsös zamat jellege is. Minél inkább gyümölcsös ízű egy bor, annál édesebbnek érezzük. Végül, hogy mennyire édesnek vagy száraznak érzünk egy bort, befolyásolja az is, hogy milyen ételt fogyasztunk mellé.', 3, 0),
('Elmeleti fizika tananyag', 'Only engineers can directly transform land, with the results detailed in the catalogue below. For transforming swamp to ocean, one of the eight adjoining squares must be ocean already. To allow transforming ocean into swamp at least three of eight adjoining squares must be land. Load the engineers on a transport to move them on the right place on the ocean. The new swamp will have a river if built adjacent to some river square''s single mouth.\r\n\r\nNote that engineers have two movement points per turn to invest in their activities (moving or static), and thus complete all improvements in half the number of turns specified in the catalogue.\r\n\r\nTwo or more units working on the same square under the same orders combine their labor, speeding completion of their project.', 4, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
