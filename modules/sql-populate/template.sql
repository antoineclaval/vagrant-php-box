-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2014 at 11:18 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `emerge`
--

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE IF NOT EXISTS `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(100) NOT NULL DEFAULT '',
  `icon` varchar(100) NOT NULL DEFAULT '',
  `thumbhtml` varchar(255) NOT NULL,
  `packages_affiliations_id` int(11) NOT NULL,
  `packages_themes_id` int(11) NOT NULL,
  `is_newsletter` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `packages_affiliations_id` (`packages_affiliations_id`),
  KEY `packages_themes_id` (`packages_themes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=908 ;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `filename`, `icon`, `thumbhtml`, `packages_affiliations_id`, `packages_themes_id`, `is_newsletter`) VALUES
(906, 'Hero', 'app/view/templates/email/email_templates/hero_section_test.html', '', '', 0, 0, 0),
(907, 'Build Your Own', 'templates/createyourown.html', '', '', 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
