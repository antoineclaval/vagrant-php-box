-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2014 at 11:19 PM
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
-- Table structure for table `template_defaults`
--

CREATE TABLE IF NOT EXISTS `template_defaults` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `custom_icon` varchar(150) NOT NULL DEFAULT '',
  `campaign_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `email_thumb` varchar(150) NOT NULL,
  `reply_name` varchar(150) NOT NULL,
  `reply_email` varchar(150) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_layout` tinyint(4) NOT NULL,
  `color_scheme_key` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `packages_themes_id` int(11) NOT NULL,
  `packages_affiliations_id` int(11) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `category` varchar(200) NOT NULL,
  `plain_text_content` text NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `plain_text_edited` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `template_id` (`template_id`),
  KEY `user_id` (`user_id`),
  KEY `packages_themes_id` (`packages_themes_id`),
  KEY `packages_affiliations_id` (`packages_affiliations_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63397 ;

--
-- Dumping data for table `template_defaults`
--

INSERT INTO `template_defaults` (`id`, `template_id`, `user_id`, `name`, `custom_icon`, `campaign_id`, `subject`, `email_thumb`, `reply_name`, `reply_email`, `last_modified`, `is_layout`, `color_scheme_key`, `featured`, `packages_themes_id`, `packages_affiliations_id`, `keyword`, `category`, `plain_text_content`, `is_deleted`, `plain_text_edited`) VALUES
(63392, 906, 0, 'Hero', '', 0, '', '', '', '', '2014-01-22 01:17:00', 1, 0, 0, 0, 0, '', '', '', 0, 0),
(63393, 907, 0, 'Build Your Own', '', 0, '', '', '', '', '2014-01-27 02:58:46', 0, 0, 0, 0, 0, '', '', '', 0, 0),
(63394, 906, 3131, 'test', '', 0, '', '', '', '', '2014-01-28 16:37:57', 0, 0, 0, 0, 0, '', '', '', 0, 0),
(63395, 906, 3131, 'NEWST', '', 0, 'Dennis Huckabee', '', 'dbhuckabgmail.com', 'dbhuckab@gmail.com', '2014-01-28 18:19:48', 0, 0, 0, 0, 0, '', '', '', 0, 0),
(63396, 906, 3131, 't2', '', 0, '', '', '', '', '2014-01-28 19:16:33', 0, 0, 0, 0, 0, '', '', '', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
