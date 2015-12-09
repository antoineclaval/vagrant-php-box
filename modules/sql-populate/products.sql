-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: db.systememerge.com
-- Generation Time: Mar 26, 2015 at 03:20 PM
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
-- Table structure for table `pricing_levels`
--

DROP TABLE IF EXISTS `pricing_levels`;
CREATE TABLE IF NOT EXISTS `pricing_levels` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '',
  `max_recipients` int(11) unsigned NOT NULL DEFAULT '0',
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `products_id` int(11) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `megabytes` int(11) NOT NULL DEFAULT '0',
  `send_limit` int(11) NOT NULL,
  `additional_contacts` int(11) NOT NULL DEFAULT '0',
  `setup_price` float(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=304 ;

--
-- Dumping data for table `pricing_levels`
--

INSERT INTO `pricing_levels` (`id`, `title`, `max_recipients`, `price`, `products_id`, `public`, `megabytes`, `send_limit`, `additional_contacts`, `setup_price`) VALUES
(1, '0 - 500', 500, 10.00, 1, 1, 0, 0, 0, 0.00),
(2, '501 - 2,500', 2500, 30.00, 1, 1, 0, 0, 0, 0.00),
(3, '2,501 - 5,000', 5000, 50.00, 1, 0, 0, 0, 0, 0.00),
(4, '5,001 - 10,000', 10000, 75.00, 1, 0, 0, 0, 0, 0.00),
(5, '10,001 - 25,000', 25000, 150.00, 1, 0, 0, 0, 0, 0.00),
(6, '25,001 - 50,000', 50000, 240.00, 1, 0, 0, 0, 0, 0.00),
(7, '50,001 - 75,000', 75000, 380.00, 1, 1, 0, 600000, 0, 0.00),
(8, '75,001 - 100,000', 100000, 500.00, 1, 1, 0, 800000, 0, 0.00),
(9, '100,001 - 150,000', 150000, 740.00, 1, 1, 0, 1200000, 0, 0.00),
(10, '150,001 - 200,000', 200000, 975.00, 1, 1, 0, 1600000, 0, 0.00),
(11, '200,001 - 300,000', 300000, 1400.00, 1, 1, 0, 2400000, 0, 0.00),
(12, '300,001 - 400,000', 400000, 1825.00, 1, 0, 0, 3200000, 0, 0.00),
(13, '400,001 - 500,000', 500000, 2250.00, 1, 0, 0, 4000000, 0, 0.00),
(14, '500,001 - 750,000', 750000, 3240.00, 1, 0, 0, 6000000, 0, 0.00),
(15, '750,001 - 1,000,000', 1000000, 4300.00, 1, 0, 0, 8000000, 0, 0.00),
(17, '2,000,001 - 3,000,000', 3000000, 12450.00, 1, 0, 0, 24000000, 0, 0.00),
(50, 'Comp', 0, 0.00, 1, 0, 0, 0, 0, 0.00),
(51, 'Free Trial', 100, 0.00, 1, 0, 0, 0, 0, 0.00),
(52, 'Campaign Contract', 550000, 0.00, 1, 0, 0, 0, 0, 0.00),
(53, 'Outside Contract', 0, 0.00, 1, 0, 0, 0, 0, 0.00),
(72, 'Realtor Special', 100000, 100.00, 1, 0, 0, 0, 0, 0.00),
(200, '25 MB', 0, 5.00, 2, 1, 25, 0, 0, 0.00),
(201, '50 MB', 0, 10.00, 2, 1, 50, 0, 0, 0.00),
(202, '75 MB', 0, 15.00, 2, 1, 75, 0, 0, 0.00),
(203, '100 MB', 0, 20.00, 2, 1, 100, 0, 0, 0.00),
(204, '125 MB', 0, 25.00, 2, 1, 125, 0, 0, 0.00),
(205, '150 MB', 0, 30.00, 2, 1, 150, 0, 0, 0.00),
(206, '175 MB', 0, 35.00, 2, 1, 175, 0, 0, 0.00),
(207, '200 MB', 0, 40.00, 2, 1, 200, 0, 0, 0.00),
(208, '225 MB', 0, 45.00, 2, 1, 225, 0, 0, 0.00),
(209, '250 MB', 0, 50.00, 2, 1, 250, 0, 0, 0.00),
(226, '250 MB (free)', 0, 0.00, 2, 0, 250, 0, 0, 0.00),
(227, 'Remax Special', 1000000, 50.00, 1, 0, 0, 0, 0, 0.00),
(228, '60,000 ', 60000, 380.00, 1, 0, 0, 0, 0, 0.00),
(16, '1,000,001 - 2,000,000', 2000000, 8400.00, 1, 0, 0, 16000000, 0, 0.00),
(229, 'Groundbreaker', 5000, 49.99, 10012, 0, 0, 0, 0, 0.00),
(230, 'Rising Star', 10000, 69.99, 10013, 0, 0, 0, 0, 0.00),
(231, 'Total Market Dominator', 25000, 99.99, 10014, 0, 0, 0, 0, 0.00),
(232, '5 Active Surveys', 0, 15.00, 10018, 1, 0, 5, 0, 0.00),
(233, '10 Active Surveys', 0, 30.00, 10018, 1, 0, 10, 0, 0.00),
(234, '15 Active Surveys', 0, 45.00, 10018, 1, 0, 15, 0, 0.00),
(235, '20 Active Surveys', 0, 60.00, 10018, 1, 0, 20, 0, 0.00),
(236, '25 Active Surveys', 0, 75.00, 10018, 1, 0, 25, 0, 0.00),
(237, '5 Surveys Comp', 0, 0.00, 10018, 0, 0, 5, 0, 0.00),
(238, '10 Surveys Comp', 0, 0.00, 10018, 0, 0, 10, 0, 0.00),
(239, 'Total Market Dominator', 25000, 69.99, 10014, 0, 0, 0, 0, 0.00),
(240, '15 Surveys Comp', 0, 0.00, 10018, 0, 0, 15, 0, 0.00),
(241, 'Total Market Dominator - RE/MAX', 25000, 79.99, 10014, 0, 0, 0, 0, 0.00),
(242, 'Integra Offer', 25000, 80.00, 1, 0, 0, 0, 0, 0.00),
(243, 'Groundbreak - RE/MAX', 5000, 49.99, 10012, 0, 0, 0, 0, 0.00),
(244, 'Rising Star - RE/MAX', 10000, 69.99, 10013, 0, 0, 0, 0, 0.00),
(245, '0 - 25000', 25000, 80.00, 10021, 0, 0, 0, 0, 0.00),
(246, '0-5,000', 5000, 49.99, 1, 1, 0, 0, 0, 0.00),
(251, 'RE/MAX Dixie', 50000, 80.00, 10022, 1, 5, 0, 0, 0.00),
(248, '10,001-25,000', 25000, 149.99, 1, 1, 0, 0, 0, 0.00),
(249, '25,001-50,000', 50000, 239.99, 1, 1, 0, 0, 0, 0.00),
(250, '5,001-10,000', 10000, 79.99, 1, 1, 0, 0, 0, 0.00),
(252, '100 MB (free)', 0, 0.00, 2, 0, 100, 0, 0, 0.00),
(253, 'Comp', 25000, 0.00, 10014, 0, 0, 0, 0, 0.00),
(254, 'Total Market Dominator - Monthly', 25000, 99.99, 10014, 0, 0, 0, 0, 0.00),
(255, 'Total Market Dominator - VIPx2', 25000, 79.99, 10014, 0, 0, 0, 0, 0.00),
(257, '25,001-50,000 (RE/MAX)', 50000, 169.99, 10014, 0, 0, 0, 0, 0.00),
(258, '25,001-50,000', 50000, 189.99, 10014, 0, 0, 0, 0, 0.00),
(259, '50 MB Total', 0, 0.00, 2, 0, 45, 0, 0, 0.00),
(263, '25,001-50,000', 50000, 149.99, 10014, 0, 0, 0, 0, 0.00),
(264, 'Agent Only', 0, 0.00, 10029, 0, 0, 0, 5000, 0.00),
(265, 'Agent and Consumer', 0, 30.00, 10029, 0, 0, 0, 5000, 0.00),
(266, '(12 month agreement)', 0, 50.00, 10032, 0, 0, 0, 5000, 0.00),
(267, 'Included', 0, 0.00, 10032, 0, 0, 0, 5000, 0.00),
(268, '', 0, 50.00, 10029, 0, 0, 0, 5000, 0.00),
(269, 'Month-to-Month', 0, 50.00, 10032, 0, 0, 0, 5000, 549.01),
(270, 'Month-to-Month', 0, 30.00, 10032, 0, 0, 0, 5000, 549.01),
(271, 'Comp', 0, 0.00, 10029, 0, 0, 0, 5000, 0.00),
(272, '10,001-25,000 - CT', 25000, 49.99, 1, 0, 0, 0, 0, 0.00),
(273, '1-6 Accounts', 0, 399.00, 10044, 0, 0, 0, 0, 0.00),
(274, '7-20 Accounts', 0, 650.00, 10044, 0, 0, 0, 0, 0.00),
(275, 'Comp', 0, 0.00, 10045, 0, 0, 0, 0, 0.00),
(276, 'Historical', 0, 0.00, 10046, 0, 0, 0, 15000, 0.00),
(277, '', 0, 30.00, 10029, 0, 0, 0, 5000, 0.00),
(278, 'Month-to-Month (no setup fee)', 0, 50.00, 10032, 0, 0, 0, 5000, 0.00),
(279, 'Month-to-Month (no setup fee)', 0, 30.00, 10032, 0, 0, 0, 5000, 0.00),
(280, '(12 month agreement)', 0, 30.00, 10032, 0, 0, 0, 5000, 0.00),
(281, 'RE/MAX Contract', 500000, 100.00, 1, 0, 0, 4000000, 0, 0.00),
(282, '0 - 500', 500, 9.99, 1000, 1, 0, 0, 0, 0.00),
(283, '501 - 2,500', 2500, 29.99, 1000, 1, 0, 0, 0, 0.00),
(284, '2,501 - 5,000', 5000, 49.99, 1000, 1, 0, 0, 0, 0.00),
(285, '5,001 - 5,500', 5500, 59.99, 1000, 1, 0, 0, 0, 0.00),
(286, '5,501 - 6,000', 6000, 69.99, 1000, 1, 0, 0, 0, 0.00),
(287, '6,001  - 10,000', 10000, 79.99, 1000, 1, 0, 0, 0, 0.00),
(288, '10,001 - 12,000', 12000, 99.99, 1000, 1, 0, 0, 0, 0.00),
(289, '12,001 - 14,000', 14000, 124.99, 1000, 1, 0, 0, 0, 0.00),
(290, '14,001 - 25,000', 25000, 149.99, 1000, 1, 0, 0, 0, 0.00),
(291, '25,001 - 30,000', 30000, 189.99, 1000, 1, 0, 0, 0, 0.00),
(292, '30,001 - 50,000', 50000, 239.99, 1000, 1, 0, 0, 0, 0.00),
(293, 'Monthly', 0, 30.00, 10029, 0, 0, 0, 0, 0.00),
(294, 'Monthly', 0, 30.00, 10032, 0, 0, 0, 0, 0.00),
(295, '50,001 - 75,000', 75000, 380.00, 1000, 1, 0, 0, 0, 0.00),
(296, '75,001 - 100,000', 100000, 500.00, 1000, 1, 0, 0, 0, 0.00),
(297, '100,001 - 150,000', 150000, 740.00, 1000, 1, 0, 0, 0, 0.00),
(298, '150,001 - 200,000', 200000, 975.00, 1000, 1, 0, 0, 0, 0.00),
(299, '200,001 - 300,000', 300000, 1400.00, 1000, 1, 0, 0, 0, 0.00),
(300, '300,001 - 400,000', 400000, 1825.00, 1000, 1, 0, 0, 0, 0.00),
(301, '400,001 - 500,000', 500000, 2250.00, 1000, 1, 0, 0, 0, 0.00),
(302, '500,001 - 750,000', 750000, 3240.00, 1000, 1, 0, 0, 0, 0.00),
(303, '750,001 - 1,000,000', 1000000, 4300.00, 1000, 1, 0, 0, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `products_name` varchar(255) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `one_time_price` float(10,2) NOT NULL DEFAULT '0.00',
  `one_time_credits_sms` int(11) NOT NULL DEFAULT '0',
  `one_time_credits_email` int(11) NOT NULL DEFAULT '0',
  `recur_price` float(10,2) NOT NULL DEFAULT '0.00',
  `recur_credits_sms` int(11) NOT NULL DEFAULT '0',
  `recur_credits_email` int(11) NOT NULL DEFAULT '0',
  `priced_by_level` tinyint(4) NOT NULL DEFAULT '0',
  `is_recurring` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `qty_show` tinyint(4) NOT NULL DEFAULT '0',
  `qty_min` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL,
  `old_id` int(11) NOT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10055 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `sort_order`, `products_name`, `categories_id`, `one_time_price`, `one_time_credits_sms`, `one_time_credits_email`, `recur_price`, `recur_credits_sms`, `recur_credits_email`, `priced_by_level`, `is_recurring`, `is_active`, `qty_show`, `qty_min`, `priority`, `old_id`) VALUES
(1, 100, 'Email Marketing', 1, 0.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 10, 0),
(2, 200, 'Data Storage', 1, 0.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 100, 0),
(101, 500, 'SMS Phone Number', 2, 25.00, 100, 0, 10.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(102, 500, 'SMS Credits', 2, 0.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 1, 100, 100, 0),
(103, 1000, 'Month to Month Campaign - Basic', 3, 250.00, 0, 0, 250.00, 0, 0, 0, 1, 1, 0, 0, 20, 0),
(104, 1000, 'Month to Month Campaign - Professional', 3, 350.00, 0, 0, 350.00, 0, 0, 0, 1, 1, 0, 0, 20, 0),
(105, 1000, 'Month to Month Campaign - Executive', 3, 750.00, 0, 0, 750.00, 0, 0, 0, 1, 1, 0, 0, 20, 0),
(116, 1000, 'Social Media Management', 20, 0.00, 0, 0, 1500.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(117, 1000, 'Social Media Management', 20, 0.00, 0, 0, 375.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(118, 1000, 'Ad Management', 20, 0.00, 0, 0, 375.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(119, 1000, 'Facebook Ads', 20, 0.00, 0, 0, 300.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(4001, 1000, 'Old Products', 20, 30.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4002, 1000, 'Month to Month Subscription with Automatic Renewal', 0, 0.00, 0, 0, 30.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(4003, 1000, 'Six Month Subscription with Automatic Renewal', 0, 0.00, 0, 0, 54.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(4004, 1000, 'Twelve Month Subscription with Automatic Renewal (40015% Discount)', 0, 0.00, 0, 0, 102.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(4005, 1000, '25 MB Additional Data Storage', 0, 5.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4006, 1000, 'Custom Banner', 0, 75.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4007, 1000, 'Custom Email Registration Form', 0, 75.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4008, 1000, 'One Month List Size Upgrade', 0, 75.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4009, 1000, 'Facebook Setup', 0, 125.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4010, 1000, 'Twitter Branding', 0, 125.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4011, 1000, 'LinkedIn Setup', 0, 125.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4012, 1000, 'WordPress Setup', 0, 125.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4013, 1000, 'YouTube Branding', 0, 0.00, 0, 0, 5.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4014, 1000, 'Custom Banner - Special', 0, 46.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4015, 1000, 'Mega Camp  Facebook ', 0, 101.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4016, 1000, 'Mega Camp LinkedIn ', 0, 101.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(4017, 1000, 'Six Month Subscription (400Month-to-month fees apply after)', 0, 0.00, 0, 0, 54.00, 0, 0, 0, 1, 1, 0, 0, 20, 0),
(4018, 1000, 'Twelve Month Subscription (400Month-to-month fees apply after)', 0, 0.00, 0, 0, 102.00, 0, 0, 0, 1, 1, 0, 0, 20, 0),
(10027, 1000, 'Salesforce Integration - Standard', 21, 15.00, 0, 0, 15.00, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4021, 1000, 'Automatic Subscription Renewal', 0, 30.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(9999, 1000, 'Custom Charge', 20, 0.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10000, 1000, 'Custom Email Header & Footer', 4, 75.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 1, 1, 100, 0),
(10001, 1000, 'Custom Email Template', 4, 200.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 1, 1, 100, 0),
(10002, 1000, 'Facebook profile graphic with email list tab', 5, 225.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10003, 1000, 'Facebook profile graphic with custom tab', 20, 200.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10004, 1000, 'Facebook profile graphic with two custom tabs', 20, 275.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10005, 1000, 'LinkedIn profile graphic', 5, 75.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10006, 1000, 'Twitter Branding', 5, 175.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10007, 1000, 'YouTube Branding', 5, 175.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10008, 1000, 'Wordpress Blog Branding', 20, 350.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10009, 1000, 'Executive Campaign', 20, 550.00, 0, 0, 550.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(10010, 1000, 'Randazzos Social Media', 20, 0.00, 0, 0, 350.00, 0, 0, 0, 1, 0, 0, 0, 100, 0),
(10011, 1000, 'Randazzos Social Media', 20, 0.00, 0, 0, 350.00, 0, 0, 0, 1, 0, 0, 0, 100, 0),
(10012, 1000, 'Real Estate Package - Groundbreaker', 20, 199.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 30, 0),
(10013, 1000, 'Real Estate Package - Rising Star', 20, 499.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 30, 0),
(10014, 1000, 'Real Estate Package - Total Market Dominator', 3, 599.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 30, 0),
(10015, 1000, 'Real Estate - YouTube Branding', 20, 0.00, 0, 0, 0.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(10016, 1000, 'Real Estate - Tumblr Branding', 20, 0.00, 0, 0, 0.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(10017, 1000, 'Real Estate - YouTube and Tumblr Branding', 20, 0.00, 0, 0, 5.00, 0, 0, 0, 1, 1, 0, 0, 100, 0),
(10018, 6, 'Surveys', 6, 0.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 100, 0),
(10026, 1000, 'Credit', 0, 0.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(10020, 1000, 'Content Development and Execution - Integra', 20, 550.00, 0, 0, 550.00, 0, 0, 0, 1, 0, 0, 0, 100, 0),
(10021, 1000, 'RE/MAX Franchise Sales', 20, 225.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 100, 0),
(10022, 1000, 'RE/MAX Franchise Sales', 20, 530.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 1, 1, 100, 0),
(10023, 1000, 'Easy Pay', 20, 0.00, 0, 0, 50.00, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10024, 1000, 'Additional Content Plan', 0, 50.00, 0, 0, 50.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10025, 1000, 'Salesforce Integration', 21, 250.00, 0, 0, 50.00, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10032, 4, 'Campaign: Consumer Touch', 20, 0.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 0, 0),
(10029, 4, 'Campaign: Agent Recruitment', 20, 0.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 0, 0),
(10030, 1000, 'Social Media Campaign - Basic', 20, 0.00, 0, 0, 125.00, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(10031, 1000, 'Facebook Ad Management', 20, 0.00, 0, 0, 150.00, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(10033, 1000, 'Managed Account', 22, 0.00, 0, 0, 49.99, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10034, 1000, 'Interactive Marketing Campaign', 20, 0.00, 0, 0, 1000.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10035, 1000, 'Regional Market: Delaware', 23, 250.00, 0, 0, 250.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10036, 1000, 'Regional Market: Pittsburg', 23, 50.00, 0, 0, 50.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10037, 1000, 'Regoinal Market: Harrisburg', 23, 50.00, 0, 0, 50.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10038, 1000, 'Regional Market: Philadelphia', 23, 50.00, 0, 0, 50.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10039, 1000, 'Regional Market: Lehigh Valley', 23, 50.00, 0, 0, 50.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10040, 1000, 'Regional Market: St. Louis', 23, 250.00, 0, 0, 250.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10041, 1000, 'Regional Market: Cleveland, Akron, Canton', 23, 250.00, 0, 0, 250.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10042, 1000, 'Regional Market: Columbus', 23, 50.00, 0, 0, 50.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10043, 1000, 'Regional Market: Toledo', 23, 50.00, 0, 0, 50.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(10044, 1000, 'Power Broker', 22, 0.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 0, 0),
(10045, 1000, 'Content Library Access', 3, 0.00, 0, 0, 0.00, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(10046, 1000, 'Total Market Dominator', 20, 0.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 0, 0),
(10047, 1000, 'Regional Market: Los Angeles', 20, 200.00, 0, 0, 200.00, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(10048, 1000, 'Regional Market: Orange County', 20, 50.00, 0, 0, 50.00, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(10049, 1000, 'Regional Market: San Diego', 20, 50.00, 0, 0, 50.00, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(10050, 1000, 'Regional Market: San Francisco', 20, 50.00, 0, 0, 50.00, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(10051, 1000, 'United Agent Recruitment Emails', 20, 0.00, 0, 0, 0.00, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(1000, 1, 'eMerge Platform', 1, 0.00, 0, 0, 0.00, 0, 0, 1, 1, 1, 0, 0, 10, 0),
(10052, 1000, 'Custom Email Template', 0, 125.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10053, 1000, 'Real Estate Branding Package', 0, 250.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0),
(10054, 1000, 'Coaching Session', 0, 75.00, 0, 0, 0.00, 0, 0, 0, 0, 1, 0, 0, 100, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
