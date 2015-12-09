-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: db.systememerge.com
-- Generation Time: May 04, 2015 at 02:15 PM
-- Server version: 5.5.37-0ubuntu0.14.04.1
-- PHP Version: 5.2.6-3ubuntu4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `nave_header`
--

DROP TABLE IF EXISTS `nave_header`;
CREATE TABLE IF NOT EXISTS `nave_header` (
  `nav_header_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `href` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `html_class` varchar(100) NOT NULL,
  `html_id` varchar(100) NOT NULL,
  `nav_header_group_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `lorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nav_header_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nave_header`
--

INSERT INTO `nave_header` (`nav_header_id`, `href`, `name`, `html_class`, `html_id`, `nav_header_group_id`, `icon`, `lorder`) VALUES
(1, 'email_create.php', 'Create Email', '', '', 1, '<span class="glyphicon glyphicon-plus-sign"></span>', 0),
(2, '', 'Create Social Post', '', 'modal_create_social', 1, '<span class="glyphicon glyphicon-plus-sign"></span>', 0),
(3, 'content_calendar.php', 'View Calendar', '', '', 1, '<span class="glyphicon glyphicon-calendar"></span>', 0),
(4, '', 'Example1', '', '', 2, '', 0),
(5, '', 'Create Blog', '', 'modal_create_blog', 1, '<span class="glyphicon glyphicon-plus-sign"></span>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nave_header_group`
--

DROP TABLE IF EXISTS `nave_header_group`;
CREATE TABLE IF NOT EXISTS `nave_header_group` (
  `nav_header_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`nav_header_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nave_header_group`
--

INSERT INTO `nave_header_group` (`nav_header_group_id`, `name`) VALUES
(1, 'Default'),
(2, 'Examples');

-- --------------------------------------------------------

--
-- Table structure for table `nave_sidebar`
--

DROP TABLE IF EXISTS `nave_sidebar`;
CREATE TABLE IF NOT EXISTS `nave_sidebar` (
  `nav_sidebar_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `href` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `html_class` varchar(100) NOT NULL,
  `html_id` varchar(100) NOT NULL,
  `nav_sidebar_group_id` int(10) unsigned DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `lorder` int(11) NOT NULL DEFAULT '0',
  `products_id` char(100) NOT NULL,
  `managed_accounts` tinyint(4) NOT NULL DEFAULT '0',
  `campaign_product` tinyint(4) NOT NULL,
  `user_id` char(100) NOT NULL,
  PRIMARY KEY (`nav_sidebar_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `nave_sidebar`
--

INSERT INTO `nave_sidebar` (`nav_sidebar_id`, `href`, `name`, `html_class`, `html_id`, `nav_sidebar_group_id`, `icon`, `lorder`, `products_id`, `managed_accounts`, `campaign_product`, `user_id`) VALUES
(62, 'subaccount_report_l1.php', 'Agent Report', '', '', 7, '', 21, '0', 0, 0, '3280'),
(7, 'contacts.php', 'View / Search', '', '', 1, '', 1, '0', 0, 0, ''),
(8, 'list_management.php', 'Lists', '', '', 1, '', 2, '0', 0, 0, ''),
(9, 'group_management.php', 'Groups', '', '', 1, '', 3, '0', 0, 0, ''),
(11, 'contacts_add.php', '<span class="glyphicon glyphicon-plus-sign"></span> Add Contact', '', '', 1, '', 6, '0', 0, 0, ''),
(12, 'csv.php', 'Import', '', '', 1, '', 7, '0', 0, 0, ''),
(13, 'email_registration.php', 'Contact Form Builder', '', '', 1, '', 8, '0', 0, 0, ''),
(14, 'cl_articles.php', 'Articles', '', '', 2, '', 1, '10013,10014,10029,10045,10032', 0, 1, ''),
(15, 'cl_snippets.php', 'Snippets', '', '', 2, '', 2, '10013,10014,10029,10045,10032', 0, 1, ''),
(16, 'cl_images.php', 'Images', '', '', 2, '', 3, '0', 0, 0, ''),
(17, 'cl_files.php', 'Files', '', '', 2, '', 4, '0', 0, 0, ''),
(18, 'email_create.php', '<span class="glyphicon glyphicon-plus-sign"></span> Create Email', '', '', 3, '', 1, '0', 0, 0, ''),
(19, 'email_drafts.php', 'Drafts', '', '', 3, '', 2, '0', 0, 0, ''),
(20, 'email_templates.php', 'Templates', '', '', 3, '', 3, '0', 0, 0, ''),
(21, 'content_calendar.php', 'Scheduled', '', '', 3, '', 4, '0', 0, 0, ''),
(22, 'email_reports.php', 'Sent', '', '', 3, '', 5, '0', 0, 0, ''),
(24, 'auto_responders.php', 'Auto Responders', '', '', 3, '', 7, '0', 0, 0, ''),
(25, '#', '<span class="glyphicon glyphicon-plus-sign"></span> Create Social Post', 'modal_create_social', '', 4, '', 1, '0', 0, 0, ''),
(27, 'social_media_connect.php', 'Manage Connections', '', '', 4, '', 6, '0', 0, 0, ''),
(28, 'content_calendar.php', 'Scheduled', '', '', 4, '', 4, '0', 0, 0, ''),
(29, 'reporting.php', 'Reports', '', '', 4, '', 5, '0', 0, 0, ''),
(30, 'sms_send.php', 'Create Message', '', '', 5, '', 1, '0', 0, 0, ''),
(31, 'sms_keywords.php', 'Auto Replies', '', '', 5, '', 2, '0', 0, 0, ''),
(32, 'sms_scheduled.php', 'Scheduled', '', '', 5, '', 3, '0', 0, 0, ''),
(33, 'sms_manage.php', 'Manage Credits', '', '', 5, '', 4, '0', 0, 0, ''),
(34, 'sms_reporting.php', 'Reports', '', '', 5, '', 5, '0', 0, 0, ''),
(35, 'surveyforms.php', 'Create Survey', '', '', 8, '', 1, '0', 0, 0, ''),
(36, 'surveyforms.php', 'Manage Surveys', '', '', 8, '', 2, '0', 0, 0, ''),
(37, 'survey_simple_report_all.php', 'Reports', '', '', 8, '', 3, '0', 0, 0, ''),
(38, 'email_reports.php', 'Emails', '', '', 7, '', 1, '0', 0, 0, ''),
(39, 'reporting.php', 'Social', '', '', 7, '', 2, '0', 0, 0, ''),
(40, 'reports_campaigns.php', 'Campaigns', '', '', 7, '', 3, '0', 0, 0, ''),
(41, 'reporting.php', 'Build Your Own', '', '', 7, '', 5, '0', 0, 0, ''),
(42, 'sms_reporting.php', 'Text Messaging', '', '', 7, '', 6, '101', 0, 0, ''),
(43, 'survey_simple_report_all.php', 'Surveys / Forms', '', '', 7, '', 7, '10018', 0, 0, ''),
(44, 'subaccount_report.php', 'Managed Accounts', '', '', 7, '', 8, '0', 1, 0, ''),
(45, 'social_media_connect.php', 'Manage', '', '', 21, '', 1, '0', 0, 0, ''),
(47, 'email_registration.php', 'Contact Form Builder', '', '', 3, '', 20, '0', 0, 0, ''),
(61, 'subaccount_report_l1.php', 'Broker Report', 'user-restricted-nav user-restricted-3280', '', 7, '', 20, '0', 0, 0, '3280,152'),
(60, 'reports_ar.php', 'Auto Responders', '', '', 7, '', 6, '0', 0, 0, ''),
(52, '#', '<span class="glyphicon glyphicon-plus-sign"></span> Create Blog', 'modal_create_blog', '', 9, '', 1, '0', 0, 0, ''),
(53, 'content_calendar.php', 'Scheduled', '', '', 9, '', 2, '0', 0, 0, ''),
(54, 'social_media_connect.php', 'Manage Connections', '', '', 9, '', 3, '0', 0, 0, ''),
(55, 'cl_trending.php', 'Trending Topics', '', '', 2, '', -1, '10013,10014,10029,10045,10032', 0, 1, ''),
(56, 'saved_searches_management.php', 'Saved Searches', '', '', 1, '', 5, '0', 0, 0, ''),
(57, 'field_management.php', 'Fields', '', '', 1, '', 4, '0', 0, 0, ''),
(58, 'unsubscribes.php', 'Unsubscribes', '', '', 1, '', 9, '0', 0, 0, ''),
(59, 'bounces.php', 'Bouncebacks', '', '', 1, '', 10, '0', 0, 0, ''),
(64, 'profile_page.php', 'Subscribe/Profile Links', '', '', 1, '', 11, '0', 0, 0, '152,2788,3297'),
(65, 'subaccount_report_move.php', 'Move Inventory/Activity Report', '', '', 7, '', 22, '0', 0, 0, '3323'),
(66, 'subaccount_report_move_notifications.php', 'Move Matches Report', '', '', 7, '', 23, '0', 0, 0, '3323'),
(67, '3449_weekly_report.php', 'Waterfall Report', '', '', 7, '', 20, '0', 1, 0, '152,3449'),
(68, '3510_alert_report.php', 'Waiting List Alerts Report', '', '', 7, '', 20, '0', 1, 0, '152,3510'),
(69, '3510_waiting_changes.php', 'Waiting List Updates Report', '', '', 7, '', 21, '0', 1, 0, '152,3510'),
(70, 'ct_templates.php', 'Branding Themes', '', '', 2, '', 10, '10013,10014,10029,10045,10032', 0, 1, ''),
(71, 'cl_videos.php', 'Videos', '', '', 2, '', 5, '10013,10014,10029,10045,10032', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `nave_sidebar_group`
--

DROP TABLE IF EXISTS `nave_sidebar_group`;
CREATE TABLE IF NOT EXISTS `nave_sidebar_group` (
  `nav_sidebar_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `lorder` int(11) NOT NULL DEFAULT '0',
  `products_id` int(11) NOT NULL,
  PRIMARY KEY (`nav_sidebar_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `nave_sidebar_group`
--

INSERT INTO `nave_sidebar_group` (`nav_sidebar_group_id`, `name`, `icon`, `lorder`, `products_id`) VALUES
(1, 'Contacts', '<span class="emergeicon emergeicon-contacts"></span>', 8, 0),
(2, 'Content Library', '<span class="emergeicon emergeicon-content"></span>', 1, 0),
(3, 'Email', '<span class="emergeicon emergeicon-email"></span>', 2, 0),
(4, 'Social Media', '<span class="emergeicon emergeicon-social"></span>', 3, 0),
(5, 'Text Messaging', '<span class="emergeicon emergeicon-textmsg"></span>', 5, 101),
(7, 'Reporting', '<span class="emergeicon emergeicon-reporting"></span>', 7, 0),
(8, 'Survey / Forms', '<span class="emergeicon emergeicon-surveys"></span>', 6, 10018),
(21, 'Connections', '<span class="glyphicon glyphicon-transfer"></span>', 12, 0),
(9, 'Blog', '<span class="glyphicon glyphicon-pencil"></span>', 4, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
