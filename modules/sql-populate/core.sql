-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2015 at 04:52 PM
-- Server version: 5.0.67-0ubuntu6.1
-- PHP Version: 5.2.6-2ubuntu4.6

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
-- Table structure for table `1994_account_car_details`
--

CREATE TABLE IF NOT EXISTS `1994_account_car_details` (
  `recipient_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `dtime_key` datetime NOT NULL,
  `castrol_warranty_level` varchar(50) NOT NULL,
  `castrol_purchase_date` datetime NOT NULL,
  `castrol_odometer` int(11) NOT NULL,
  `castrol_reg_diff_name` tinyint(4) NOT NULL default '0',
  `castrol_ext_service_contract` tinyint(4) NOT NULL default '0',
  `castrol_xfer_competitive_motor_oil` tinyint(4) NOT NULL default '0',
  `castrol_subscribe_lec_updates` tinyint(4) NOT NULL default '0',
  `castrol_subscribe_communications` tinyint(4) NOT NULL default '0',
  `castrol_subscribe_racing_updates` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`recipient_id`,`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1994_cars`
--

CREATE TABLE IF NOT EXISTS `1994_cars` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) NOT NULL,
  `vin` varchar(100) NOT NULL,
  `make` varchar(100) NOT NULL,
  `model` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `thanks` datetime default NULL,
  `expected_date_3k` datetime default NULL,
  `expected_date_5k` datetime default NULL,
  `expected_date_5k3week` datetime default NULL,
  `receive_emails` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `recipient_id` (`recipient_id`,`vin`),
  KEY `vin` (`vin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54261 ;

-- --------------------------------------------------------

--
-- Table structure for table `1994_queries`
--

CREATE TABLE IF NOT EXISTS `1994_queries` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `query` text NOT NULL,
  `ar_id` int(11) NOT NULL,
  `nullify_field` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `1994_referrals`
--

CREATE TABLE IF NOT EXISTS `1994_referrals` (
  `referral_id` int(11) NOT NULL auto_increment,
  `referral_code_id` int(11) NOT NULL,
  `referred_by_id` int(11) NOT NULL,
  `refer_date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `redemption_date` datetime default NULL,
  `redemption_store_id` int(11) unsigned default NULL,
  `referred_by_code_id` int(11) default NULL,
  `referred_by_coupon` enum('EROADSIDE','EFUEL','ECOOLANT','EWIPERS','EREFER20') default NULL,
  `email_sent` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`referral_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

-- --------------------------------------------------------

--
-- Table structure for table `1994_servicestats`
--

CREATE TABLE IF NOT EXISTS `1994_servicestats` (
  `id` int(11) NOT NULL auto_increment,
  `car_id` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `oil` varchar(50) NOT NULL,
  `last_service` datetime NOT NULL,
  `store_id` int(11) NOT NULL,
  `invoice_number` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `car_id_index` (`car_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=668168 ;

-- --------------------------------------------------------

--
-- Table structure for table `1994_servicestats_20150219_production`
--

CREATE TABLE IF NOT EXISTS `1994_servicestats_20150219_production` (
  `id` int(11) NOT NULL auto_increment,
  `car_id` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `oil` varchar(50) NOT NULL,
  `last_service` datetime NOT NULL,
  `store_id` int(11) NOT NULL,
  `invoice_number` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `car_id_index` (`car_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=640876 ;

-- --------------------------------------------------------

--
-- Table structure for table `1994_stores`
--

CREATE TABLE IF NOT EXISTS `1994_stores` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `store_number` int(11) NOT NULL,
  `address` text NOT NULL,
  `shop_phone` varchar(40) NOT NULL,
  `manager` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `store_number` (`store_number`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

-- --------------------------------------------------------

--
-- Table structure for table `1994_store_to_district`
--

CREATE TABLE IF NOT EXISTS `1994_store_to_district` (
  `store_to_district_id` int(10) unsigned NOT NULL auto_increment,
  `store_number` int(11) NOT NULL,
  `district_supervisor_email` varchar(255) NOT NULL,
  PRIMARY KEY  (`store_to_district_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Table structure for table `2012_referrals`
--

CREATE TABLE IF NOT EXISTS `2012_referrals` (
  `referral_id` int(10) unsigned NOT NULL auto_increment,
  `referral_email` varchar(255) character set utf8 NOT NULL,
  `first_name` varchar(255) character set utf8 NOT NULL,
  `last_name` varchar(255) character set utf8 NOT NULL,
  `referred_by_id` int(10) unsigned NOT NULL,
  `refer_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `purchase_amt` float(10,2) unsigned NOT NULL default '0.00',
  `survey_completions` int(11) NOT NULL default '0',
  `emails_sent` int(11) NOT NULL default '0',
  PRIMARY KEY  (`referral_id`),
  UNIQUE KEY `referral_email` (`referral_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `2012_referred_by`
--

CREATE TABLE IF NOT EXISTS `2012_referred_by` (
  `referred_by_id` int(10) unsigned NOT NULL auto_increment,
  `referred_by_email` varchar(255) character set utf8 NOT NULL,
  `first_name` varchar(255) character set utf8 NOT NULL,
  `last_name` varchar(255) character set utf8 NOT NULL,
  `month_credits` int(11) NOT NULL default '0',
  `month_credits_used` int(11) NOT NULL default '0',
  PRIMARY KEY  (`referred_by_id`),
  UNIQUE KEY `referred_by_email` (`referred_by_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `2088_burger_entries`
--

CREATE TABLE IF NOT EXISTS `2088_burger_entries` (
  `burger_entries_id` int(10) unsigned NOT NULL auto_increment,
  `burger_name` varchar(255) NOT NULL,
  `burger_user_id` int(10) unsigned NOT NULL,
  `game_schedule_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  PRIMARY KEY  (`burger_entries_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2088_burger_entries_ingredients`
--

CREATE TABLE IF NOT EXISTS `2088_burger_entries_ingredients` (
  `burger_entries_ingredients_id` int(10) unsigned NOT NULL auto_increment,
  `burger_entries_id` int(10) unsigned NOT NULL,
  `ingredient_id` int(10) unsigned NOT NULL,
  `ingredient_val` text NOT NULL,
  PRIMARY KEY  (`burger_entries_ingredients_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2088_burger_ingredients`
--

CREATE TABLE IF NOT EXISTS `2088_burger_ingredients` (
  `ingredients_id` int(10) unsigned NOT NULL auto_increment,
  `ingredients_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`ingredients_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2088_game_schedule`
--

CREATE TABLE IF NOT EXISTS `2088_game_schedule` (
  `game_schedule_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `week` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `cutoff_date` datetime NOT NULL,
  `home_away` varchar(50) NOT NULL,
  PRIMARY KEY  (`game_schedule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `2088_prize_entries`
--

CREATE TABLE IF NOT EXISTS `2088_prize_entries` (
  `prize_entries_id` int(10) unsigned NOT NULL auto_increment,
  `burger_user_id` int(10) unsigned NOT NULL,
  `entry_type` enum('bb_tour','fb_share','tw_share','g+_share','pi_share','burger_name','burger_create','vote','bb_tour_signup') NOT NULL,
  `game_schedule_id` int(10) unsigned default NULL,
  `entered` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`prize_entries_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2088_redemption_codes`
--

CREATE TABLE IF NOT EXISTS `2088_redemption_codes` (
  `redemption_codes_id` int(10) unsigned NOT NULL auto_increment,
  `pin` int(4) unsigned NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY  (`redemption_codes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `2088_users`
--

CREATE TABLE IF NOT EXISTS `2088_users` (
  `burger_user_id` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `recipient_id` int(11) default NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY  (`burger_user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_account_info`
--

CREATE TABLE IF NOT EXISTS `3323_account_info` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `picture_url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `masterToSubSummaryTemplateId` int(11) default NULL,
  `recipNotificationEmailTemplateId` int(11) default NULL,
  `recipNotificationSMSId` int(11) default NULL,
  `email` varchar(100) NOT NULL,
  `presaleMasterToSubSummaryTemplateId` int(11) NOT NULL,
  `presaleRecipNotificationEmailTemplateId` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  `notify_recips` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_availability`
--

CREATE TABLE IF NOT EXISTS `3323_availability` (
  `availability_id` int(10) unsigned NOT NULL auto_increment,
  `imports_id` int(10) unsigned NOT NULL,
  `sheet` int(11) NOT NULL default '0',
  `sheet_row` int(11) NOT NULL default '0',
  `city` varchar(100) default NULL,
  `state` varchar(20) default NULL,
  `county` varchar(100) default NULL,
  `zip` varchar(11) default NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `product_home_search` int(11) NOT NULL default '0',
  `product_home_search_price` varchar(30) default NULL,
  `product_hand_raiser` int(11) NOT NULL default '0',
  `product_hand_raiser_price` varchar(30) default NULL,
  `product_zip_slots_full` int(11) NOT NULL default '0',
  `product_zip_slots_full_price` varchar(30) default NULL,
  `product_cluster_slots_full` int(11) NOT NULL default '0',
  `product_cluster_slots_full_price` varchar(30) default NULL,
  `product_zip_slots_half` int(11) NOT NULL default '0',
  `product_zip_slots_half_price` varchar(30) default NULL,
  `product_cluster_slots_half` int(11) NOT NULL default '0',
  `product_cluster_slots_half_price` varchar(30) default NULL,
  `product_fh_slots_available` int(11) NOT NULL default '0',
  `product_fh_slots_available_price` varchar(30) default NULL,
  `product_fac_banner` int(11) NOT NULL default '0',
  `product_fac_banner_price` varchar(30) default NULL,
  `product_fac_mrect` int(11) NOT NULL default '0',
  `product_fac_mrect_price` varchar(30) default NULL,
  `product_fac_companion` int(11) NOT NULL default '0',
  `product_fac_companion_price` varchar(30) default NULL,
  `product_zip_fast_slots_full` int(11) NOT NULL default '0',
  `product_zip_fast_slots_full_price` varchar(30) NOT NULL,
  `product_cluster_fast_slots_full` int(11) NOT NULL default '0',
  `product_cluster_fast_slots_full_price` varchar(30) NOT NULL,
  `product_zip_fast_slots_half` int(11) NOT NULL default '0',
  `product_zip_fast_slots_half_price` varchar(30) NOT NULL,
  `product_cluster_fast_slots_half` int(11) NOT NULL default '0',
  `product_cluster_fast_slots_half_price` varchar(30) NOT NULL,
  PRIMARY KEY  (`availability_id`),
  UNIQUE KEY `imports_id` (`imports_id`,`sheet`,`city`,`state`,`county`,`zip`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90219 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_availability_presale`
--

CREATE TABLE IF NOT EXISTS `3323_availability_presale` (
  `availability_id` int(10) unsigned NOT NULL auto_increment,
  `imports_id` int(10) unsigned NOT NULL,
  `sheet` int(11) NOT NULL default '0',
  `sheet_row` int(11) NOT NULL default '0',
  `city` varchar(100) default NULL,
  `state` varchar(20) default NULL,
  `county` varchar(100) default NULL,
  `zip` varchar(11) default NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `product_presale` int(11) NOT NULL default '0',
  `product_presale_price` varchar(30) NOT NULL,
  `product_presale_small` int(11) NOT NULL default '0',
  `product_presale_small_price` varchar(30) NOT NULL,
  PRIMARY KEY  (`availability_id`),
  UNIQUE KEY `imports_id` (`imports_id`,`sheet`,`city`,`state`,`county`,`zip`),
  KEY `city` (`city`,`state`,`zip`),
  KEY `city_2` (`city`,`state`),
  KEY `state` (`state`,`county`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6049 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_fac_market_map`
--

CREATE TABLE IF NOT EXISTS `3323_fac_market_map` (
  `market_id` int(10) unsigned NOT NULL auto_increment,
  `market` varchar(100) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  PRIMARY KEY  (`market_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41297 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_geo_lookup`
--

CREATE TABLE IF NOT EXISTS `3323_geo_lookup` (
  `zip` int(11) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(10) NOT NULL,
  `county` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY  (`zip`),
  KEY `city` (`city`),
  KEY `state` (`state`),
  KEY `county` (`county`),
  KEY `city_2` (`city`,`state`),
  KEY `city_3` (`city`,`county`),
  KEY `state_2` (`state`,`county`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `3323_imports`
--

CREATE TABLE IF NOT EXISTS `3323_imports` (
  `imports_id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(255) NOT NULL,
  `type` enum('cbc','pre') NOT NULL,
  `upload_date` datetime NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `matched` tinyint(4) NOT NULL default '0',
  `matches_count` varchar(30) NOT NULL default '0',
  `summary_mailed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`imports_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_imports_presale`
--

CREATE TABLE IF NOT EXISTS `3323_imports_presale` (
  `imports_id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(255) NOT NULL,
  `type` enum('cbc','pre','presale') NOT NULL,
  `upload_date` datetime NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `matched` tinyint(4) NOT NULL default '0',
  `matches_count` varchar(30) NOT NULL default '0',
  `summary_mailed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`imports_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_import_types`
--

CREATE TABLE IF NOT EXISTS `3323_import_types` (
  `import_types_id` int(11) NOT NULL auto_increment,
  `slug` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`import_types_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_matches`
--

CREATE TABLE IF NOT EXISTS `3323_matches` (
  `match_id` int(10) unsigned NOT NULL auto_increment,
  `account_user_id` int(10) unsigned NOT NULL,
  `recipient_id` int(10) unsigned NOT NULL,
  `recipient_location_id` int(10) unsigned NOT NULL,
  `product_home_search` int(11) NOT NULL default '0',
  `product_home_search_price` varchar(30) default NULL,
  `product_hand_raiser` int(11) NOT NULL default '0',
  `product_hand_raiser_price` varchar(30) default NULL,
  `product_zip_slots_full` int(11) NOT NULL default '0',
  `product_zip_slots_full_price` varchar(30) default NULL,
  `product_cluster_slots_full` int(11) NOT NULL default '0',
  `product_cluster_slots_full_price` varchar(30) default NULL,
  `product_zip_slots_half` int(11) NOT NULL default '0',
  `product_zip_slots_half_price` varchar(30) default NULL,
  `product_cluster_slots_half` int(11) NOT NULL default '0',
  `product_cluster_slots_half_price` varchar(30) default NULL,
  `product_fh_slots_available` int(11) NOT NULL default '0',
  `product_fh_slots_available_price` varchar(30) default NULL,
  `product_fac_banner` int(11) NOT NULL default '0',
  `product_fac_banner_price` varchar(30) default NULL,
  `product_fac_mrect` int(11) NOT NULL default '0',
  `product_fac_mrect_price` varchar(30) default NULL,
  `product_fac_companion` int(11) NOT NULL default '0',
  `product_fac_companion_price` varchar(30) default NULL,
  `product_presale` int(11) NOT NULL default '0',
  `product_presale_price` int(30) NOT NULL,
  `product_presale_small` int(11) NOT NULL default '0',
  `product_presale_small_price` varchar(30) NOT NULL,
  `product_zip_fast_slots_full` int(11) NOT NULL default '0',
  `product_zip_fast_slots_full_price` varchar(30) NOT NULL,
  `product_cluster_fast_slots_full` int(11) NOT NULL default '0',
  `product_cluster_fast_slots_full_price` varchar(30) NOT NULL,
  `product_zip_fast_slots_half` int(11) NOT NULL default '0',
  `product_zip_fast_slots_half_price` varchar(30) NOT NULL,
  `product_cluster_fast_slots_half` int(11) NOT NULL default '0',
  `product_cluster_fast_slots_half_price` varchar(30) NOT NULL,
  `date_matched` datetime NOT NULL,
  `email_text` text NOT NULL,
  `emailed` int(11) NOT NULL default '0',
  `availability_id` int(11) NOT NULL,
  PRIMARY KEY  (`match_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_matches_presale`
--

CREATE TABLE IF NOT EXISTS `3323_matches_presale` (
  `match_id` int(10) unsigned NOT NULL auto_increment,
  `account_user_id` int(10) unsigned NOT NULL,
  `recipient_id` int(10) unsigned NOT NULL,
  `recipient_location_id` int(10) unsigned NOT NULL,
  `product_presale` int(11) NOT NULL default '0',
  `product_presale_price` int(30) NOT NULL,
  `product_presale_small` int(11) NOT NULL default '0',
  `product_presale_small_price` varchar(30) NOT NULL,
  `date_matched` datetime NOT NULL,
  `email_text` text NOT NULL,
  `emailed` int(11) NOT NULL default '0',
  PRIMARY KEY  (`match_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_recipient_locations`
--

CREATE TABLE IF NOT EXISTS `3323_recipient_locations` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `county` varchar(100) NOT NULL,
  `submission_date` datetime NOT NULL,
  `inline_seen` tinyint(4) NOT NULL default '0',
  `summary_sent` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_recip_notifications`
--

CREATE TABLE IF NOT EXISTS `3323_recip_notifications` (
  `recip_notification_id` int(10) unsigned NOT NULL auto_increment,
  `account_user_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `email_text` text NOT NULL,
  `emailed` tinyint(4) NOT NULL default '0',
  `smsed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`recip_notification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_recip_notifications_presale`
--

CREATE TABLE IF NOT EXISTS `3323_recip_notifications_presale` (
  `recip_notification_id` int(10) unsigned NOT NULL auto_increment,
  `account_user_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `email_text` text NOT NULL,
  `emailed` tinyint(4) NOT NULL default '0',
  `smsed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`recip_notification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_waiting_cbc`
--

CREATE TABLE IF NOT EXISTS `3323_waiting_cbc` (
  `id` int(11) NOT NULL auto_increment,
  `import_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `date_inserted` date NOT NULL,
  `datetime_inserted` datetime NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `SID` varchar(30) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Market` varchar(10) NOT NULL,
  `Existing_Customer` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `import_id` (`import_id`,`recipient_id`,`Market`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7378 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_waiting_contact_info`
--

CREATE TABLE IF NOT EXISTS `3323_waiting_contact_info` (
  `id` int(11) NOT NULL auto_increment,
  `import_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `date_inserted` date NOT NULL,
  `datetime_inserted` datetime NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `SID` varchar(30) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `AccountName` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(5) NOT NULL,
  `Zip` varchar(10) default NULL,
  `Phone` varchar(20) NOT NULL,
  `Assigned` varchar(50) NOT NULL,
  `BOB` int(11) default NULL,
  `MLSSet` varchar(100) NOT NULL,
  `Account_Type` varchar(50) NOT NULL,
  `CustomerType` varchar(50) NOT NULL,
  `HLC` int(11) default NULL,
  `CLC` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `import_id` (`import_id`,`recipient_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34158 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_waiting_imports`
--

CREATE TABLE IF NOT EXISTS `3323_waiting_imports` (
  `imports_id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(255) NOT NULL,
  `type` enum('cbc','ci','tig','ren') NOT NULL,
  `upload_date` datetime NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `matched` tinyint(4) NOT NULL default '0',
  `matches_count` varchar(30) NOT NULL default '0',
  `summary_mailed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`imports_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_waiting_notifications`
--

CREATE TABLE IF NOT EXISTS `3323_waiting_notifications` (
  `waiting_id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) NOT NULL,
  `template_type` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `product_html` text NOT NULL,
  `statement` text NOT NULL,
  `email_sent` tinyint(4) NOT NULL,
  `email_sent_date` datetime NOT NULL,
  `sms_sent` tinyint(4) NOT NULL,
  `sms_sent_date` datetime NOT NULL,
  PRIMARY KEY  (`waiting_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_waiting_renewal`
--

CREATE TABLE IF NOT EXISTS `3323_waiting_renewal` (
  `id` int(11) NOT NULL auto_increment,
  `import_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `date_inserted` date NOT NULL,
  `datetime_inserted` datetime NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `SID` varchar(30) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Market` varchar(100) NOT NULL,
  `Slot` int(11) NOT NULL,
  `Slot_Type` varchar(20) NOT NULL,
  `Product_Type` varchar(100) NOT NULL,
  `Start_Date` datetime NOT NULL,
  `Expiration_Date` datetime NOT NULL,
  `Payment_Terms` varchar(50) NOT NULL,
  `Current_Price` varchar(30) default NULL,
  `Renewal_Price` varchar(30) NOT NULL,
  `Leads_To_Date` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `import_id` (`import_id`,`recipient_id`,`Market`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7290 ;

-- --------------------------------------------------------

--
-- Table structure for table `3323_waiting_tiger`
--

CREATE TABLE IF NOT EXISTS `3323_waiting_tiger` (
  `id` int(11) NOT NULL auto_increment,
  `import_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `date_inserted` date NOT NULL,
  `datetime_inserted` datetime NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `SID` varchar(30) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Main_Area` varchar(100) NOT NULL,
  `Additional_Areas` text NOT NULL,
  `State` varchar(5) NOT NULL,
  `License_Type_Of_Interest` varchar(50) NOT NULL,
  `Existing_Customer` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `import_id` (`import_id`,`recipient_id`,`Main_Area`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1193 ;

-- --------------------------------------------------------

--
-- Table structure for table `3449_group_change_notify`
--

CREATE TABLE IF NOT EXISTS `3449_group_change_notify` (
  `change_id` int(10) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) NOT NULL,
  `new_group_id` int(11) NOT NULL,
  `new_user_id` int(11) NOT NULL,
  `date_changed` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `processed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`change_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `acl_groups`
--

CREATE TABLE IF NOT EXISTS `acl_groups` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(50) default NULL,
  PRIMARY KEY  (`group_id`),
  UNIQUE KEY `group_name_UNIQUD` (`group_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `acl_groups_permissions`
--

CREATE TABLE IF NOT EXISTS `acl_groups_permissions` (
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`group_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acl_permissions`
--

CREATE TABLE IF NOT EXISTS `acl_permissions` (
  `permission_id` int(11) NOT NULL auto_increment,
  `permission_name` varchar(50) default NULL,
  `nice_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sub_user_only` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`permission_id`),
  UNIQUE KEY `permission_name_UNIQUE` (`permission_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `acl_users_permissions`
--

CREATE TABLE IF NOT EXISTS `acl_users_permissions` (
  `user_id` int(11) NOT NULL,
  `is_subid` tinyint(4) NOT NULL default '0',
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`is_subid`,`permission_id`),
  KEY `user_id` (`user_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acl_users_to_groups`
--

CREATE TABLE IF NOT EXISTS `acl_users_to_groups` (
  `user_id` int(11) NOT NULL,
  `is_subid` tinyint(4) NOT NULL default '0',
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`is_subid`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `active_guests`
--

CREATE TABLE IF NOT EXISTS `active_guests` (
  `ip` varchar(15) NOT NULL default '',
  `timestamp` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `active_users`
--

CREATE TABLE IF NOT EXISTS `active_users` (
  `username` varchar(30) NOT NULL default '',
  `timestamp` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE IF NOT EXISTS `alerts` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `allow_send` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `api_ip`
--

CREATE TABLE IF NOT EXISTS `api_ip` (
  `api_ip_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `ip` varchar(255) NOT NULL,
  PRIMARY KEY  (`api_ip_id`),
  UNIQUE KEY `user_id` (`user_id`,`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `api_log`
--

CREATE TABLE IF NOT EXISTS `api_log` (
  `user` varchar(50) NOT NULL,
  `user_ip` varchar(15) NOT NULL,
  `attempt_date` datetime NOT NULL,
  `result` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_settings`
--

CREATE TABLE IF NOT EXISTS `api_settings` (
  `api_settings_id` int(10) unsigned NOT NULL auto_increment,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY  (`api_settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `api_throttle`
--

CREATE TABLE IF NOT EXISTS `api_throttle` (
  `api_throttle_id` int(10) unsigned NOT NULL auto_increment,
  `endpoint` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `period` enum('second','minute','hour','day') NOT NULL,
  PRIMARY KEY  (`api_throttle_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

-- --------------------------------------------------------

--
-- Table structure for table `api_throttle_track`
--

CREATE TABLE IF NOT EXISTS `api_throttle_track` (
  `api_throttle_track_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `api_throttle_id` int(10) unsigned NOT NULL,
  `call_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `call_parameters` text NOT NULL,
  PRIMARY KEY  (`api_throttle_track_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1094 ;

-- --------------------------------------------------------

--
-- Table structure for table `api_token`
--

CREATE TABLE IF NOT EXISTS `api_token` (
  `user_id` int(11) unsigned NOT NULL,
  `token` varchar(40) default NULL,
  `auth_ip` varchar(18) default NULL,
  `login_time` datetime NOT NULL,
  `expir_date` datetime default NULL,
  KEY `user_id` (`user_id`,`token`),
  KEY `login_time` (`login_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `type` varchar(64) NOT NULL,
  `article_order` int(11) NOT NULL default '1',
  `title` varchar(128) character set utf8 NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_quickread` varchar(255) NOT NULL,
  `short_title` varchar(40) character set utf8 NOT NULL,
  `html` text character set utf8 NOT NULL,
  `plaintext` text character set utf8 NOT NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL,
  `quickread_html` text character set utf8 NOT NULL,
  `quickread_plaintext` text character set utf8 NOT NULL,
  `month` int(3) NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `read_only` tinyint(1) unsigned NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `language_id` int(10) unsigned default NULL,
  `do_not_publish_before_day` int(10) unsigned default NULL,
  `do_not_publish_before_month` int(10) unsigned default NULL,
  `do_not_publish_before_year` int(10) unsigned default NULL,
  `do_not_publish_after_day` int(10) unsigned default NULL,
  `do_not_publish_after_month` int(10) unsigned default NULL,
  `do_not_publish_after_year` int(10) unsigned default NULL,
  `ignore_year` tinyint(4) NOT NULL default '0',
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `byline_id` int(11) unsigned default NULL,
  `pending_review` tinyint(4) NOT NULL default '1',
  `rereviewed` tinyint(4) NOT NULL default '0',
  `reviewer_id` int(11) unsigned NOT NULL default '0',
  `is_coupon` tinyint(4) NOT NULL default '0',
  `coupon_format` enum('side','full') NOT NULL default 'full',
  `coupon_img_file` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `id` (`id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3322 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_backup20140603`
--

CREATE TABLE IF NOT EXISTS `articles_backup20140603` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `type` varchar(64) NOT NULL,
  `article_order` int(11) NOT NULL default '1',
  `title` varchar(128) character set utf8 NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_quickread` varchar(255) NOT NULL,
  `short_title` varchar(40) character set utf8 NOT NULL,
  `html` text character set utf8 NOT NULL,
  `plaintext` text character set utf8 NOT NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL,
  `quickread_html` text character set utf8 NOT NULL,
  `quickread_plaintext` text character set utf8 NOT NULL,
  `month` int(3) NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `read_only` tinyint(1) unsigned NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `language_id` int(10) unsigned default NULL,
  `do_not_publish_before_day` int(10) unsigned default NULL,
  `do_not_publish_before_month` int(10) unsigned default NULL,
  `do_not_publish_before_year` int(10) unsigned default NULL,
  `do_not_publish_after_day` int(10) unsigned default NULL,
  `do_not_publish_after_month` int(10) unsigned default NULL,
  `do_not_publish_after_year` int(10) unsigned default NULL,
  `ignore_year` tinyint(4) NOT NULL default '0',
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `byline_id` int(11) unsigned default NULL,
  `pending_review` tinyint(4) NOT NULL default '1',
  `rereviewed` tinyint(4) NOT NULL default '0',
  `reviewer_id` int(11) unsigned NOT NULL default '0',
  `is_coupon` tinyint(4) NOT NULL default '0',
  `coupon_format` enum('side','full') NOT NULL default 'full',
  `coupon_img_file` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `id` (`id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3307 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_Bad`
--

CREATE TABLE IF NOT EXISTS `articles_Bad` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `type` varchar(64) NOT NULL,
  `article_order` int(11) NOT NULL default '1',
  `title` varchar(128) character set utf8 NOT NULL,
  `short_title` varchar(40) character set utf8 NOT NULL,
  `html` text character set utf8 NOT NULL,
  `plaintext` text character set utf8 NOT NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL,
  `quickread_html` text character set utf8 NOT NULL,
  `quickread_plaintext` text character set utf8 NOT NULL,
  `month` int(3) NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `read_only` tinyint(1) unsigned NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `language_id` int(10) unsigned default NULL,
  `do_not_publish_before_day` int(10) unsigned default NULL,
  `do_not_publish_before_month` int(10) unsigned default NULL,
  `do_not_publish_before_year` int(10) unsigned default NULL,
  `do_not_publish_after_day` int(10) unsigned default NULL,
  `do_not_publish_after_month` int(10) unsigned default NULL,
  `do_not_publish_after_year` int(10) unsigned default NULL,
  `ignore_year` tinyint(4) NOT NULL default '0',
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `byline_id` int(11) unsigned default NULL,
  `pending_review` tinyint(4) NOT NULL default '1',
  `rereviewed` tinyint(4) NOT NULL default '0',
  `reviewer_id` int(11) unsigned NOT NULL default '0',
  `is_coupon` tinyint(1) NOT NULL,
  `coupon_format` enum('side','full') NOT NULL,
  `coupon_img_file` varchar(50) NOT NULL,
  `coupons_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `id` (`id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2148 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_bad2`
--

CREATE TABLE IF NOT EXISTS `articles_bad2` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `type` varchar(64) NOT NULL,
  `article_order` int(11) NOT NULL default '1',
  `title` varchar(128) character set utf8 NOT NULL,
  `short_title` varchar(40) character set utf8 NOT NULL,
  `html` text character set utf8 NOT NULL,
  `plaintext` text character set utf8 NOT NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL,
  `quickread_html` text character set utf8 NOT NULL,
  `quickread_plaintext` text character set utf8 NOT NULL,
  `month` int(3) NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `read_only` tinyint(1) unsigned NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `language_id` int(10) unsigned default NULL,
  `do_not_publish_before_day` int(10) unsigned default NULL,
  `do_not_publish_before_month` int(10) unsigned default NULL,
  `do_not_publish_before_year` int(10) unsigned default NULL,
  `do_not_publish_after_day` int(10) unsigned default NULL,
  `do_not_publish_after_month` int(10) unsigned default NULL,
  `do_not_publish_after_year` int(10) unsigned default NULL,
  `ignore_year` tinyint(4) NOT NULL default '0',
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `byline_id` int(11) unsigned default NULL,
  `pending_review` tinyint(4) NOT NULL default '1',
  `rereviewed` tinyint(4) NOT NULL default '0',
  `reviewer_id` int(11) unsigned NOT NULL default '0',
  `is_coupon` tinyint(1) NOT NULL,
  `coupon_format` enum('side','full') NOT NULL,
  `coupon_img_file` varchar(50) NOT NULL,
  `coupons_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `id` (`id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2148 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_bad3`
--

CREATE TABLE IF NOT EXISTS `articles_bad3` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `type` varchar(64) NOT NULL,
  `article_order` int(11) NOT NULL default '1',
  `title` varchar(128) character set utf8 NOT NULL,
  `short_title` varchar(40) character set utf8 NOT NULL,
  `html` text character set utf8 NOT NULL,
  `plaintext` text character set utf8 NOT NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL,
  `quickread_html` text character set utf8 NOT NULL,
  `quickread_plaintext` text character set utf8 NOT NULL,
  `month` int(3) NOT NULL,
  `year` int(4) unsigned NOT NULL,
  `read_only` tinyint(1) unsigned NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `language_id` int(10) unsigned default NULL,
  `do_not_publish_before_day` int(10) unsigned default NULL,
  `do_not_publish_before_month` int(10) unsigned default NULL,
  `do_not_publish_before_year` int(10) unsigned default NULL,
  `do_not_publish_after_day` int(10) unsigned default NULL,
  `do_not_publish_after_month` int(10) unsigned default NULL,
  `do_not_publish_after_year` int(10) unsigned default NULL,
  `ignore_year` tinyint(4) NOT NULL default '0',
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `byline_id` int(11) unsigned default NULL,
  `pending_review` tinyint(4) NOT NULL default '1',
  `rereviewed` tinyint(4) NOT NULL default '0',
  `reviewer_id` int(11) unsigned NOT NULL default '0',
  `is_coupon` tinyint(1) NOT NULL,
  `coupon_format` enum('side','full') NOT NULL,
  `coupon_img_file` varchar(50) NOT NULL,
  `coupons_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `id` (`id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2148 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_bylines`
--

CREATE TABLE IF NOT EXISTS `articles_bylines` (
  `byline_id` int(11) unsigned NOT NULL auto_increment,
  `byline_text` text NOT NULL,
  PRIMARY KEY  (`byline_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

CREATE TABLE IF NOT EXISTS `articles_categories` (
  `id` int(11) NOT NULL auto_increment,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `article_id` (`article_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7195 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_content_schedule`
--

CREATE TABLE IF NOT EXISTS `articles_content_schedule` (
  `id` int(11) NOT NULL auto_increment,
  `drop_type` enum('blog','newsletter') NOT NULL,
  `day` int(11) NOT NULL,
  `type` enum('email','blog','blog1','blog2','social1','social2','social') NOT NULL,
  `send_time` time NOT NULL default '09:00:00' COMMENT '24Hr time clock - default is 9AM',
  PRIMARY KEY  (`id`),
  KEY `week` (`drop_type`,`day`,`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_months`
--

CREATE TABLE IF NOT EXISTS `articles_months` (
  `id` int(11) NOT NULL auto_increment,
  `article_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `article_id` (`article_id`,`month`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43122 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_regions`
--

CREATE TABLE IF NOT EXISTS `articles_regions` (
  `article_to_region_id` int(10) unsigned NOT NULL auto_increment,
  `article_id` int(10) unsigned NOT NULL,
  `region_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`article_to_region_id`),
  KEY `article_id` (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3998 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_related`
--

CREATE TABLE IF NOT EXISTS `articles_related` (
  `articles_id1` int(10) unsigned NOT NULL,
  `articles_id2` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`articles_id1`,`articles_id2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `articles_schedule`
--

CREATE TABLE IF NOT EXISTS `articles_schedule` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `article_type` varchar(255) NOT NULL,
  `package_type` varchar(255) NOT NULL,
  `send_day` int(2) unsigned NOT NULL,
  `drop_num` smallint(1) unsigned NOT NULL,
  `products_id` int(11) unsigned NOT NULL,
  `early_send` tinyint(1) unsigned NOT NULL COMMENT 'alternate cycle for users who joined past content drop date',
  `article_number` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `drop_num` (`drop_num`,`products_id`,`article_number`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_social_updates`
--

CREATE TABLE IF NOT EXISTS `articles_social_updates` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(64) NOT NULL,
  `article_order` int(11) NOT NULL default '1',
  `plaintext` text character set utf8 NOT NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL,
  `read_only` tinyint(1) unsigned NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `no_send` int(11) NOT NULL default '0' COMMENT 'override the default behavior and send nothing at all. ',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  KEY `article_id_2` (`article_id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14670 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_thumbs`
--

CREATE TABLE IF NOT EXISTS `articles_thumbs` (
  `article_thumbs_id` int(10) unsigned NOT NULL auto_increment,
  `article_id` int(11) NOT NULL,
  `html_hash` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  PRIMARY KEY  (`article_thumbs_id`),
  UNIQUE KEY `article_id` (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_user_content`
--

CREATE TABLE IF NOT EXISTS `articles_user_content` (
  `articles_user_content_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `article_type` varchar(255) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `content_id` int(11) unsigned NOT NULL,
  `article_month` int(2) unsigned NOT NULL,
  `article_year` int(4) unsigned NOT NULL,
  `drop_num` smallint(1) unsigned NOT NULL,
  `notified` int(11) NOT NULL default '0',
  `should_notify` int(11) NOT NULL default '0',
  PRIMARY KEY  (`articles_user_content_id`),
  KEY `notified` (`notified`,`should_notify`),
  KEY `article_month` (`article_month`,`article_year`,`drop_num`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`,`content_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72611 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_categories_master`
--

CREATE TABLE IF NOT EXISTS `article_categories_master` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `name` varchar(50) character set utf8 NOT NULL,
  `default` tinyint(1) NOT NULL default '0',
  `is_deleted` tinyint(4) NOT NULL default '0',
  `language_id` int(11) default NULL,
  `is_primary` tinyint(4) NOT NULL default '0',
  `is_coupon` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_categories_related`
--

CREATE TABLE IF NOT EXISTS `article_categories_related` (
  `category_id1` int(10) unsigned NOT NULL,
  `category_id2` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`category_id1`,`category_id2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `article_coupon_drop_groups`
--

CREATE TABLE IF NOT EXISTS `article_coupon_drop_groups` (
  `acdg_id` int(11) unsigned NOT NULL auto_increment,
  `article_id` int(11) unsigned NOT NULL,
  `coupon_drop_group_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`acdg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_regions_master`
--

CREATE TABLE IF NOT EXISTS `article_regions_master` (
  `region_id` int(10) unsigned NOT NULL auto_increment,
  `region_name` varchar(100) NOT NULL,
  `region_description` text NOT NULL,
  `is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`region_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_regions_related`
--

CREATE TABLE IF NOT EXISTS `article_regions_related` (
  `region_related_id` int(10) unsigned NOT NULL auto_increment,
  `region_id` int(11) NOT NULL,
  `region_id_related` int(11) NOT NULL,
  PRIMARY KEY  (`region_related_id`),
  UNIQUE KEY `region_id` (`region_id`,`region_id_related`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans` (
  `acp_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `track_id` int(10) unsigned NOT NULL,
  `track_idv2` int(11) NOT NULL default '1',
  `name` varchar(50) NOT NULL,
  `is_default` tinyint(4) NOT NULL default '0',
  `is_deleted` tinyint(4) NOT NULL default '0',
  `is_inactive` tinyint(4) NOT NULL default '0',
  `send_report` tinyint(4) NOT NULL default '1',
  `send_report_days_plus` int(11) NOT NULL default '5',
  `article_selection_method` enum('all_mine','all_emerge','mine_first','emerge_first') NOT NULL default 'all_mine',
  `plan_type` enum('tmd','managed_account') NOT NULL,
  `coupon_track_pattern_id` int(11) default NULL,
  `coupon_alert_frequency` enum('each','summary','none') NOT NULL,
  `coupon_position` enum('top','bottom') NOT NULL default 'top',
  `campaign_id` int(11) default NULL,
  `last_publish_track_part` int(11) default NULL,
  PRIMARY KEY  (`acp_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=483 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_audiences`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_audiences` (
  `acpa_id` int(10) unsigned NOT NULL auto_increment,
  `audience` varchar(50) NOT NULL,
  PRIMARY KEY  (`acpa_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_categories`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_categories` (
  `acpc_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`acpc_id`),
  UNIQUE KEY `acp_id` (`acp_id`,`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41578 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_custom_branding`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_custom_branding` (
  `acpcb_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `color_1` varchar(10) NOT NULL,
  `color_2` varchar(10) NOT NULL,
  `color_3` varchar(10) NOT NULL,
  `brand_description` text NOT NULL,
  `website_1` varchar(255) NOT NULL,
  `website_2` varchar(255) NOT NULL,
  `website_3` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY  (`acpcb_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_links`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_links` (
  `acp_id1` int(10) unsigned NOT NULL,
  `acp_id2` int(10) unsigned NOT NULL,
  `link_articles` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`acp_id1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_opt_out`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_opt_out` (
  `acoo_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `week` int(10) unsigned NOT NULL,
  `email` tinyint(3) unsigned NOT NULL default '0',
  `blog` tinyint(3) unsigned NOT NULL default '0',
  `social` tinyint(3) unsigned NOT NULL default '0',
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`acoo_id`),
  UNIQUE KEY `acp_id` (`acp_id`,`week`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=773 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_opt_out_exception`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_opt_out_exception` (
  `acoo_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `week` int(10) unsigned NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `email` tinyint(3) unsigned NOT NULL default '0',
  `blog` tinyint(3) unsigned NOT NULL default '0',
  `social` tinyint(3) unsigned NOT NULL default '0',
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`acoo_id`),
  UNIQUE KEY `acp_id` (`acp_id`,`week`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_recipients`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_recipients` (
  `acpr_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `type` enum('list','group','search','all','none') NOT NULL,
  `type_key` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`acpr_id`),
  UNIQUE KEY `acp_id` (`acp_id`,`type`,`type_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2471 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_regions`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_regions` (
  `acp_regions_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `region_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`acp_regions_id`),
  UNIQUE KEY `acp_id` (`acp_id`,`region_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1287 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_social`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_social` (
  `acps_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `users_social_media_links_id` int(10) unsigned NOT NULL,
  `is_default_blog` tinyint(4) NOT NULL default '0',
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`acps_id`),
  UNIQUE KEY `acp_id` (`acp_id`,`users_social_media_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16371 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_social_2012-09-04`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_social_2012-09-04` (
  `acps_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `users_social_media_links_id` int(10) unsigned NOT NULL,
  `is_default_blog` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`acps_id`),
  UNIQUE KEY `acp_id` (`acp_id`,`users_social_media_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10041 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_social_backup`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_social_backup` (
  `acps_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `users_social_media_links_id` int(10) unsigned NOT NULL,
  `is_default_blog` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`acps_id`),
  UNIQUE KEY `acp_id` (`acp_id`,`users_social_media_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9782 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_templates`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_templates` (
  `act_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `default_template_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`act_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=803 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_users_audiences`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_users_audiences` (
  `acpua_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(11) NOT NULL,
  `acpa_id` int(11) NOT NULL,
  `audience_value` varchar(50) NOT NULL,
  PRIMARY KEY  (`acpua_id`),
  UNIQUE KEY `acp_id` (`acp_id`,`acpa_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- --------------------------------------------------------

--
-- Table structure for table `automated_content_plans_users_details`
--

CREATE TABLE IF NOT EXISTS `automated_content_plans_users_details` (
  `acpud_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(10) unsigned NOT NULL,
  `newsletter_title` varchar(150) character set utf8 NOT NULL,
  `hashtags` varchar(140) character set utf8 NOT NULL,
  `disclaimer` text character set utf8 NOT NULL,
  `logo_1` varchar(255) NOT NULL,
  `logo_2` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `courtesy` varchar(255) character set utf8 NOT NULL,
  `listing_url` varchar(255) NOT NULL,
  `nar` tinyint(1) NOT NULL default '0',
  `byline` varchar(255) character set utf8 NOT NULL,
  `bio` text NOT NULL,
  `newsletter_frequency` int(11) NOT NULL default '2',
  `no_title` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`acpud_id`),
  UNIQUE KEY `acp_id` (`acp_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=473 ;

-- --------------------------------------------------------

--
-- Table structure for table `auto_responders`
--

CREATE TABLE IF NOT EXISTS `auto_responders` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `template_default_id` int(11) unsigned NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `subject` varchar(150) NOT NULL default '',
  `date_selection` varchar(150) NOT NULL default '',
  `month_day` int(4) unsigned NOT NULL default '0',
  `number_of_days` int(11) NOT NULL default '0',
  `search_id` int(11) unsigned NOT NULL default '0',
  `ignore_year` tinyint(4) unsigned NOT NULL default '0',
  `deleted` tinyint(4) unsigned NOT NULL default '0',
  `email_id` int(11) unsigned NOT NULL,
  `custom_cron` int(11) NOT NULL default '0',
  `new_search_id` int(11) default NULL,
  `campaign_id` int(11) NOT NULL default '0',
  `optin_value_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

-- --------------------------------------------------------

--
-- Table structure for table `auto_responders_sent`
--

CREATE TABLE IF NOT EXISTS `auto_responders_sent` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `auto_id` int(11) unsigned NOT NULL default '0',
  `recipient_id` int(11) unsigned NOT NULL default '0',
  `date_sent` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `auto_id` (`auto_id`,`date_sent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8924 ;

-- --------------------------------------------------------

--
-- Table structure for table `banned_users`
--

CREATE TABLE IF NOT EXISTS `banned_users` (
  `username` varchar(30) NOT NULL default '',
  `timestamp` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bounce_codes`
--

CREATE TABLE IF NOT EXISTS `bounce_codes` (
  `code` int(11) NOT NULL default '0',
  `reason` varchar(255) NOT NULL default '',
  `type` enum('hard','soft') NOT NULL default 'hard',
  KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_categories`
--

CREATE TABLE IF NOT EXISTS `calendar_categories` (
  `ID` int(11) NOT NULL auto_increment,
  `Category` varchar(150) NOT NULL default '',
  `icon` varchar(255) NOT NULL default '',
  `cat_ord` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_exceptions`
--

CREATE TABLE IF NOT EXISTS `calendar_exceptions` (
  `ID` int(11) unsigned NOT NULL auto_increment,
  `EventID` mediumint(11) NOT NULL default '0',
  `origDate` date NOT NULL default '0000-00-00',
  `EventDesc` text NOT NULL,
  `Headline` varchar(150) NOT NULL default '',
  `Address` varchar(150) NOT NULL default '',
  `Address2` varchar(150) NOT NULL default '',
  `City` varchar(80) NOT NULL default '',
  `State` varchar(20) NOT NULL default 'LA',
  `Zip` varchar(12) NOT NULL default '',
  `Phone` varchar(20) NOT NULL default '',
  `Fax` varchar(20) NOT NULL default '',
  `Email` varchar(80) NOT NULL default '',
  `Website` varchar(80) NOT NULL default '',
  `Category` varchar(50) NOT NULL default '',
  `newDate` date NOT NULL default '0000-00-00',
  `Time` varchar(30) NOT NULL default '',
  `Image` varchar(50) NOT NULL default '',
  `ImageType` varchar(20) NOT NULL default '',
  `DateUpdated` timestamp NULL default NULL,
  `opt0` varchar(100) NOT NULL default '',
  `opt1` varchar(100) NOT NULL default '',
  `opt2` varchar(100) NOT NULL default '',
  `opt3` varchar(100) NOT NULL default '',
  `opt4` varchar(100) NOT NULL default '',
  `opt5` varchar(100) NOT NULL default '',
  `opt6` varchar(100) NOT NULL default '',
  `opt7` varchar(100) NOT NULL default '',
  `opt8` varchar(100) NOT NULL default '',
  `opt9` varchar(100) NOT NULL default '',
  `startTime` time default NULL,
  `endTime` time default NULL,
  `allday` int(11) NOT NULL default '0',
  `FileUpload` varchar(150) NOT NULL default '',
  `hidden` smallint(1) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_main`
--

CREATE TABLE IF NOT EXISTS `calendar_main` (
  `ID` int(11) unsigned NOT NULL auto_increment,
  `EventName` varchar(150) NOT NULL default '',
  `EventDesc` text NOT NULL,
  `Headline` varchar(150) default NULL,
  `Address` varchar(150) default NULL,
  `Address2` varchar(150) default NULL,
  `City` varchar(80) default NULL,
  `State` varchar(20) default 'LA',
  `Zip` varchar(12) default NULL,
  `Phone` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Email` varchar(80) default NULL,
  `Website` varchar(80) default NULL,
  `Category` varchar(50) default NULL,
  `StartDate` date NOT NULL default '0000-00-00',
  `EndDate` date NOT NULL default '0000-00-00',
  `Frequency` varchar(5) default NULL,
  `FrequencyParent` int(5) NOT NULL default '0',
  `RepeatDay` varchar(20) default NULL,
  `Time` varchar(30) default NULL,
  `Image` varchar(50) default NULL,
  `ImageType` varchar(20) default NULL,
  `DateUpdated` timestamp NULL default NULL,
  `opt0` varchar(100) default NULL,
  `opt1` varchar(100) default NULL,
  `opt2` varchar(100) default NULL,
  `opt3` varchar(100) default NULL,
  `opt4` varchar(100) default NULL,
  `opt5` varchar(100) default NULL,
  `opt6` varchar(100) default NULL,
  `opt7` varchar(100) default NULL,
  `opt8` varchar(100) default NULL,
  `opt9` varchar(100) default NULL,
  `startTime` time default NULL,
  `endTime` time default NULL,
  `allday` int(11) default '0',
  `FileUpload` varchar(150) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_tz`
--

CREATE TABLE IF NOT EXISTS `calendar_tz` (
  `tz_id` int(11) NOT NULL auto_increment,
  `timezone` varchar(40) NOT NULL,
  `modifier` int(11) NOT NULL,
  PRIMARY KEY  (`tz_id`),
  KEY `timezone` (`timezone`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `description` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_report_pieces`
--

CREATE TABLE IF NOT EXISTS `campaign_report_pieces` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `campaign_id` int(11) unsigned NOT NULL default '0',
  `module_type` varchar(55) NOT NULL default '' COMMENT 'summary, link, optin, keyword',
  `order_by` int(11) unsigned NOT NULL default '0',
  `options` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `canada_bts`
--

CREATE TABLE IF NOT EXISTS `canada_bts` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) unsigned NOT NULL,
  `afterglow_comments` text NOT NULL,
  `game_comments` text NOT NULL,
  `torch_comments` text NOT NULL,
  `overall_rating` int(4) NOT NULL,
  `overall_comments` text NOT NULL,
  `education_rating` int(4) NOT NULL,
  `education_comments` text NOT NULL,
  `balance_rating` int(4) NOT NULL,
  `balance_comments` text NOT NULL,
  `information_rating` int(4) NOT NULL,
  `information_comments` text NOT NULL,
  `future_meeting` varchar(15) NOT NULL,
  `meeting_year` varchar(15) NOT NULL,
  `meeting_month` varchar(15) NOT NULL,
  `meeting_rooms` varchar(15) NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `cg_messages`
--

CREATE TABLE IF NOT EXISTS `cg_messages` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `type` varchar(15) NOT NULL default '' COMMENT 'active(5+), casual(3-4), at-risk(1-2), non-active(0)',
  `message` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=147 ;

-- --------------------------------------------------------

--
-- Table structure for table `cg_settings`
--

CREATE TABLE IF NOT EXISTS `cg_settings` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `type` varchar(15) NOT NULL default '',
  `message_id` int(11) unsigned NOT NULL default '0',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `cg_temp`
--

CREATE TABLE IF NOT EXISTS `cg_temp` (
  `member_number` varchar(25) NOT NULL default '',
  `visits` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `change_log`
--

CREATE TABLE IF NOT EXISTS `change_log` (
  `change_log_id` int(10) unsigned NOT NULL auto_increment,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY  (`change_log_id`),
  KEY `title` (`title`),
  KEY `date_created` (`date_created`),
  KEY `date_modified` (`date_modified`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `change_log_categories`
--

CREATE TABLE IF NOT EXISTS `change_log_categories` (
  `change_log_category_id` int(10) unsigned NOT NULL auto_increment,
  `category_name` varchar(255) NOT NULL,
  `category_order` int(11) NOT NULL,
  PRIMARY KEY  (`change_log_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `color_id` int(11) NOT NULL auto_increment,
  `color_scheme_id` int(11) NOT NULL,
  `hex` varchar(8) NOT NULL,
  `element` enum('COLOR_BG','COLOR_TXT','COLOR_ACC') NOT NULL default 'COLOR_BG',
  `index` int(11) NOT NULL,
  PRIMARY KEY  (`color_id`),
  KEY `color_scheme_key` (`color_scheme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=254 ;

-- --------------------------------------------------------

--
-- Table structure for table `color_schemes`
--

CREATE TABLE IF NOT EXISTS `color_schemes` (
  `color_scheme_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `keywords` varchar(1024) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`color_scheme_id`),
  KEY `user_key` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

-- --------------------------------------------------------

--
-- Table structure for table `company_industry`
--

CREATE TABLE IF NOT EXISTS `company_industry` (
  `industry_id` int(11) unsigned NOT NULL auto_increment,
  `industry` varchar(200) NOT NULL,
  PRIMARY KEY  (`industry_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `company_type`
--

CREATE TABLE IF NOT EXISTS `company_type` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `type` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_drop`
--

CREATE TABLE IF NOT EXISTS `content_drop` (
  `drop_id` int(11) unsigned NOT NULL auto_increment,
  `drop_pattern_id` int(11) NOT NULL,
  `drop_days_plus` int(4) NOT NULL,
  `drop_time` time NOT NULL,
  `drop_type` varchar(20) NOT NULL,
  `article_num` int(4) NOT NULL COMMENT '0 = all articles',
  PRIMARY KEY  (`drop_id`),
  KEY `drop_pattern_id` (`drop_pattern_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_drop_pattern`
--

CREATE TABLE IF NOT EXISTS `content_drop_pattern` (
  `drop_pattern_id` int(11) NOT NULL auto_increment,
  `drop_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`drop_pattern_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_library_favorites_db`
--

CREATE TABLE IF NOT EXISTS `content_library_favorites_db` (
  `clfd_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `table` varchar(40) NOT NULL,
  `key` int(11) NOT NULL,
  PRIMARY KEY  (`clfd_id`),
  UNIQUE KEY `user_id` (`user_id`,`table`,`key`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_library_favorites_files`
--

CREATE TABLE IF NOT EXISTS `content_library_favorites_files` (
  `clff_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY  (`clff_id`),
  UNIQUE KEY `user_id` (`user_id`,`file`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_opt_out`
--

CREATE TABLE IF NOT EXISTS `content_opt_out` (
  `opt_out_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned default NULL,
  `week` int(4) default NULL,
  `email` tinyint(1) NOT NULL default '0',
  `blog` tinyint(1) NOT NULL default '0',
  `social` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`opt_out_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_predecessor`
--

CREATE TABLE IF NOT EXISTS `content_predecessor` (
  `content_predecessor_id` int(10) unsigned NOT NULL auto_increment,
  `content_table` varchar(50) NOT NULL,
  `content_key` int(11) NOT NULL,
  `content_predecessor` int(11) default NULL,
  `is_deleted` tinyint(4) NOT NULL default '0',
  `last_modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`content_predecessor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_schedule`
--

CREATE TABLE IF NOT EXISTS `content_schedule` (
  `schedule_id` int(11) unsigned NOT NULL auto_increment,
  `track_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `drop_pattern_id` int(11) NOT NULL,
  `month` int(4) NOT NULL,
  `week` int(4) NOT NULL,
  PRIMARY KEY  (`schedule_id`),
  KEY `track_id` (`track_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2148 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_tracks`
--

CREATE TABLE IF NOT EXISTS `content_tracks` (
  `track_id` int(11) unsigned NOT NULL auto_increment,
  `products_id` int(11) unsigned NOT NULL,
  `track_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`track_id`),
  KEY `products_id` (`products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversion_funnel`
--

CREATE TABLE IF NOT EXISTS `conversion_funnel` (
  `cf_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`cf_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversion_funnel_steps`
--

CREATE TABLE IF NOT EXISTS `conversion_funnel_steps` (
  `cfs_id` int(10) unsigned NOT NULL auto_increment,
  `cf_id` int(10) unsigned NOT NULL,
  `cl_id` int(10) unsigned NOT NULL,
  `order` int(11) NOT NULL default '0',
  `step_type` varchar(50) NOT NULL,
  PRIMARY KEY  (`cfs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversion_funnel_steps_links`
--

CREATE TABLE IF NOT EXISTS `conversion_funnel_steps_links` (
  `cfs_id` int(10) unsigned NOT NULL,
  `cf_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`cfs_id`,`cf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversion_links`
--

CREATE TABLE IF NOT EXISTS `conversion_links` (
  `cl_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `link_type` enum('goem_link','url','code','email_link') NOT NULL,
  `link_value` varchar(255) NOT NULL,
  `nice_name` varchar(100) NOT NULL,
  `monetary_value` double(10,2) NOT NULL,
  `conversion_window` int(11) NOT NULL default '180' COMMENT 'days',
  `link_window` int(10) unsigned NOT NULL default '3600' COMMENT 'For goem and email links... window to fuzzy match on respective tables, seconds',
  `source` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `is_deleted` tinyint(4) NOT NULL default '0',
  `is_coupon` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`cl_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversion_tracking`
--

CREATE TABLE IF NOT EXISTS `conversion_tracking` (
  `ct_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `cl_id` int(10) unsigned NOT NULL,
  `ctc_id` int(10) unsigned NOT NULL,
  `browser_url` varchar(255) default NULL,
  `date_visited` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `referrer` varchar(255) default NULL,
  `outbound_url` varchar(255) NOT NULL,
  `outbound_alert_processed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`ct_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=186 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversion_tracking_contacts`
--

CREATE TABLE IF NOT EXISTS `conversion_tracking_contacts` (
  `ctc_id` int(10) unsigned NOT NULL auto_increment,
  `cookie_key` varchar(255) NOT NULL,
  `recipient_id` int(10) unsigned default NULL,
  `ip_address` varchar(50) NOT NULL,
  `browser_string` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ctc_id`),
  UNIQUE KEY `cookie_key` (`cookie_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(6) NOT NULL auto_increment,
  `value` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=243 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_code` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  `type` enum('dollar','percent','credit') NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `expires` date NOT NULL,
  `note` varchar(255) NOT NULL,
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `coupons_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`coupons_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupons_used`
--

CREATE TABLE IF NOT EXISTS `coupons_used` (
  `coupons_used_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `acp_id` int(11) unsigned NOT NULL,
  `article_id` int(11) unsigned NOT NULL,
  `used_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `used_usaymw` varchar(20) NOT NULL,
  PRIMARY KEY  (`coupons_used_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_drop_groups`
--

CREATE TABLE IF NOT EXISTS `coupon_drop_groups` (
  `coupon_drop_group_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`coupon_drop_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_impressions`
--

CREATE TABLE IF NOT EXISTS `coupon_impressions` (
  `coupon_impressions_id` int(10) unsigned NOT NULL auto_increment,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source` enum('web','email','facebook','facebookpage','twitter','linkedin','email','unknown') NOT NULL,
  `impression_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`coupon_impressions_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_optouts`
--

CREATE TABLE IF NOT EXISTS `coupon_optouts` (
  `user_id` int(11) NOT NULL,
  `usa_ymw` varchar(50) NOT NULL,
  PRIMARY KEY  (`user_id`,`usa_ymw`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_publish_override`
--

CREATE TABLE IF NOT EXISTS `coupon_publish_override` (
  `coupon_publish_override_id` int(10) unsigned NOT NULL auto_increment,
  `acp_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  PRIMARY KEY  (`coupon_publish_override_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_tracks_drop`
--

CREATE TABLE IF NOT EXISTS `coupon_tracks_drop` (
  `coupon_tracks_drop_id` int(11) unsigned NOT NULL auto_increment,
  `coupon_track_pattern_id` int(11) unsigned NOT NULL,
  `coupon_drop_group_id` int(11) unsigned NOT NULL,
  `type` enum('social','email') NOT NULL,
  `week` int(11) unsigned NOT NULL,
  `pref_day` tinyint(1) default NULL,
  `pref_time` time default NULL,
  PRIMARY KEY  (`coupon_tracks_drop_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_track_pattern`
--

CREATE TABLE IF NOT EXISTS `coupon_track_pattern` (
  `coupon_track_pattern_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`coupon_track_pattern_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `cron_activity`
--

CREATE TABLE IF NOT EXISTS `cron_activity` (
  `cron_activity_id` int(10) unsigned NOT NULL auto_increment,
  `cron_id` int(10) unsigned NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `errors` text NOT NULL,
  `is_finished` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`cron_activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

-- --------------------------------------------------------

--
-- Table structure for table `cron_scripts`
--

CREATE TABLE IF NOT EXISTS `cron_scripts` (
  `cron_id` int(10) unsigned NOT NULL auto_increment,
  `cron_name` varchar(100) NOT NULL,
  `cron_path` varchar(255) NOT NULL,
  `cron_interval` int(11) NOT NULL,
  `cron_period` varchar(20) NOT NULL,
  `cron_time` time NOT NULL,
  PRIMARY KEY  (`cron_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL auto_increment,
  `country` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_symbol` varchar(10) default NULL,
  `rate` float(20,5) NOT NULL COMMENT 'Relative to 1 USD',
  PRIMARY KEY  (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=159 ;

-- --------------------------------------------------------

--
-- Table structure for table `delete_reasons`
--

CREATE TABLE IF NOT EXISTS `delete_reasons` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `reason` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `subject` varchar(255) default NULL,
  `recipients` text NOT NULL,
  `template_id` int(11) NOT NULL default '0',
  `template_default_id` int(11) default NULL,
  `template_name` varchar(60) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `sub_user_id` int(11) unsigned NOT NULL default '0',
  `sub_pending` tinyint(4) unsigned NOT NULL default '0',
  `content` text character set utf8 COMMENT 'everything in a mail',
  `plain_text_content` text character set utf8 collate utf8_swedish_ci,
  `customized_css` text,
  `main_column_content` text,
  `side_column_content` text,
  `footer_content` text,
  `header_text` text,
  `header_image_loc` varchar(255) default NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `schedule_date` datetime NOT NULL,
  `sent` smallint(1) unsigned NOT NULL default '0',
  `is_draft` smallint(1) unsigned NOT NULL default '0',
  `is_deleted` smallint(1) unsigned NOT NULL default '0',
  `is_system_deleted` tinyint(4) NOT NULL default '0',
  `campaign_id` int(11) unsigned NOT NULL default '0',
  `send_report` tinyint(4) unsigned NOT NULL,
  `send_report_date` datetime NOT NULL,
  `rss_post` tinyint(4) NOT NULL default '0',
  `recipient_category` enum('all','group','list','search','one') default NULL,
  `recipient_cat_id` varchar(255) default NULL,
  `recipient_cat_name` varchar(50) default NULL,
  `pdf` varchar(140) default NULL,
  `thumb_img` varchar(140) default NULL,
  `reply_name` varchar(140) default NULL,
  `reply_email` varchar(140) default NULL,
  `processing` tinyint(1) NOT NULL,
  `color_scheme_id` int(11) default NULL,
  `acp_id` int(11) unsigned default NULL,
  `usa_ymw` varchar(20) default NULL,
  `send_cc_emails` tinyint(4) NOT NULL default '0',
  `plain_text_edited` tinyint(4) NOT NULL default '0',
  `cc_emails` varchar(1000) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `campaign_id` (`campaign_id`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1048960519 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailtosend`
--

CREATE TABLE IF NOT EXISTS `emailtosend` (
  `ID` int(20) NOT NULL auto_increment,
  `tofield` varchar(255) NOT NULL default '',
  `fromfield` varchar(255) NOT NULL default '',
  `plaintextpart` text NOT NULL,
  `htmlpart` text NOT NULL,
  `thesubject` varchar(150) NOT NULL default '',
  `replyto` varchar(150) NOT NULL default '',
  `emailid` varchar(100) NOT NULL default '',
  `is_sent` tinyint(1) NOT NULL default '0',
  `priority` tinyint(4) NOT NULL default '10',
  `server_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1228 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailtosend_06242012`
--

CREATE TABLE IF NOT EXISTS `emailtosend_06242012` (
  `ID` int(20) NOT NULL auto_increment,
  `tofield` varchar(255) NOT NULL default '',
  `fromfield` varchar(255) NOT NULL default '',
  `plaintextpart` text NOT NULL,
  `htmlpart` text NOT NULL,
  `thesubject` varchar(150) NOT NULL default '',
  `replyto` varchar(150) NOT NULL default '',
  `emailid` varchar(100) NOT NULL default '',
  `is_sent` tinyint(1) NOT NULL default '0',
  `priority` tinyint(4) NOT NULL default '10',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=381 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailtosend_gz`
--

CREATE TABLE IF NOT EXISTS `emailtosend_gz` (
  `ID` int(20) NOT NULL auto_increment,
  `tofield` varchar(255) NOT NULL default '',
  `fromfield` varchar(255) NOT NULL default '',
  `plaintextpart` blob NOT NULL,
  `htmlpart` blob NOT NULL,
  `thesubject` varchar(150) NOT NULL default '',
  `replyto` varchar(150) NOT NULL default '',
  `emailid` varchar(100) NOT NULL default '',
  `is_sent` tinyint(1) NOT NULL default '0',
  `priority` tinyint(4) NOT NULL default '10',
  `server_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailtosend_move`
--

CREATE TABLE IF NOT EXISTS `emailtosend_move` (
  `ID` int(20) NOT NULL auto_increment,
  `tofield` varchar(255) NOT NULL default '',
  `fromfield` varchar(255) NOT NULL default '',
  `plaintextpart` text NOT NULL,
  `htmlpart` text NOT NULL,
  `thesubject` varchar(150) NOT NULL default '',
  `replyto` varchar(150) NOT NULL default '',
  `emailid` varchar(100) NOT NULL default '',
  `is_sent` tinyint(1) NOT NULL default '0',
  `priority` tinyint(4) NOT NULL default '10',
  `server_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailtosend_movetemp`
--

CREATE TABLE IF NOT EXISTS `emailtosend_movetemp` (
  `ID` int(20) NOT NULL auto_increment,
  `tofield` varchar(255) NOT NULL default '',
  `fromfield` varchar(255) NOT NULL default '',
  `plaintextpart` text NOT NULL,
  `htmlpart` text NOT NULL,
  `thesubject` varchar(150) NOT NULL default '',
  `replyto` varchar(150) NOT NULL default '',
  `emailid` varchar(100) NOT NULL default '',
  `is_sent` tinyint(1) NOT NULL default '0',
  `priority` tinyint(4) NOT NULL default '10',
  `server_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailtosend_t5test`
--

CREATE TABLE IF NOT EXISTS `emailtosend_t5test` (
  `ID` int(20) NOT NULL auto_increment,
  `tofield` varchar(255) NOT NULL default '',
  `fromfield` varchar(255) NOT NULL default '',
  `plaintextpart` text NOT NULL,
  `htmlpart` text NOT NULL,
  `thesubject` varchar(150) NOT NULL default '',
  `replyto` varchar(150) NOT NULL default '',
  `emailid` varchar(100) NOT NULL default '',
  `is_sent` tinyint(1) NOT NULL default '0',
  `priority` tinyint(4) NOT NULL default '10',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailtosend_testing`
--

CREATE TABLE IF NOT EXISTS `emailtosend_testing` (
  `ID` int(20) NOT NULL auto_increment,
  `tofield` varchar(255) NOT NULL default '',
  `fromfield` varchar(255) NOT NULL default '',
  `plaintextpart` text NOT NULL,
  `htmlpart` text NOT NULL,
  `thesubject` varchar(150) NOT NULL default '',
  `replyto` varchar(150) NOT NULL default '',
  `emailid` varchar(100) NOT NULL default '',
  `is_sent` tinyint(1) NOT NULL default '0',
  `priority` int(11) NOT NULL default '10',
  `server_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailtosend_trans`
--

CREATE TABLE IF NOT EXISTS `emailtosend_trans` (
  `ID` int(20) NOT NULL auto_increment,
  `tofield` varchar(255) NOT NULL default '',
  `fromfield` varchar(255) NOT NULL default '',
  `plaintextpart` text NOT NULL,
  `htmlpart` longtext NOT NULL,
  `thesubject` varchar(150) NOT NULL default '',
  `replyto` varchar(150) NOT NULL default '',
  `emailid` varchar(100) NOT NULL default '',
  `is_sent` tinyint(1) NOT NULL default '0',
  `priority` tinyint(4) NOT NULL default '10',
  `server_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_06242012`
--

CREATE TABLE IF NOT EXISTS `email_06242012` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `subject` varchar(255) default NULL,
  `recipients` text NOT NULL,
  `template_id` int(11) NOT NULL default '0',
  `template_name` varchar(60) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `sub_user_id` int(11) unsigned NOT NULL default '0',
  `sub_pending` tinyint(4) unsigned NOT NULL default '0',
  `content` text COMMENT 'everything in a mail',
  `plain_text_content` text character set utf8 collate utf8_swedish_ci,
  `customized_css` text,
  `main_column_content` text,
  `side_column_content` text,
  `footer_content` text,
  `header_text` text,
  `header_image_loc` varchar(255) default NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `schedule_date` datetime NOT NULL,
  `sent` smallint(1) unsigned NOT NULL default '0',
  `is_draft` smallint(1) unsigned NOT NULL default '0',
  `is_deleted` smallint(1) unsigned NOT NULL default '0',
  `campaign_id` int(11) unsigned NOT NULL default '0',
  `send_report` tinyint(4) unsigned NOT NULL,
  `send_report_date` datetime NOT NULL,
  `rss_post` tinyint(4) NOT NULL default '0',
  `recipient_category` enum('all','group','list','search','one') default NULL,
  `recipient_cat_id` varchar(255) default NULL,
  `recipient_cat_name` varchar(50) default NULL,
  `pdf` varchar(140) default NULL,
  `thumb_img` varchar(140) default NULL,
  `reply_name` varchar(140) default NULL,
  `reply_email` varchar(140) default NULL,
  `processing` tinyint(1) NOT NULL,
  `color_scheme_id` int(11) default NULL,
  `acp_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `campaign_id` (`campaign_id`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_audit`
--

CREATE TABLE IF NOT EXISTS `email_audit` (
  `email_id` int(11) NOT NULL,
  `sent` int(11) NOT NULL,
  `bounces` int(11) NOT NULL,
  `bouncePercent` decimal(10,2) NOT NULL,
  `fbl` int(11) NOT NULL,
  `fblPercent` decimal(10,2) NOT NULL,
  `percent` decimal(10,2) NOT NULL,
  `threshhold` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_automation`
--

CREATE TABLE IF NOT EXISTS `email_automation` (
  `email_id` int(11) NOT NULL,
  `enable_automation` tinyint(4) NOT NULL default '1',
  `populate_date_field_id` int(11) default NULL,
  `overwrite_existing_dates` tinyint(4) NOT NULL default '0',
  `date_field_processed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_backup-11-20-2012`
--

CREATE TABLE IF NOT EXISTS `email_backup-11-20-2012` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `subject` varchar(255) default NULL,
  `recipients` text NOT NULL,
  `template_id` int(11) NOT NULL default '0',
  `template_name` varchar(60) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `sub_user_id` int(11) unsigned NOT NULL default '0',
  `sub_pending` tinyint(4) unsigned NOT NULL default '0',
  `content` text character set utf8 COMMENT 'everything in a mail',
  `plain_text_content` text character set utf8 collate utf8_swedish_ci,
  `customized_css` text,
  `main_column_content` text,
  `side_column_content` text,
  `footer_content` text,
  `header_text` text,
  `header_image_loc` varchar(255) default NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `schedule_date` datetime NOT NULL,
  `sent` smallint(1) unsigned NOT NULL default '0',
  `is_draft` smallint(1) unsigned NOT NULL default '0',
  `is_deleted` smallint(1) unsigned NOT NULL default '0',
  `campaign_id` int(11) unsigned NOT NULL default '0',
  `send_report` tinyint(4) unsigned NOT NULL,
  `send_report_date` datetime NOT NULL,
  `rss_post` tinyint(4) NOT NULL default '0',
  `recipient_category` enum('all','group','list','search','one') default NULL,
  `recipient_cat_id` varchar(255) default NULL,
  `recipient_cat_name` varchar(50) default NULL,
  `pdf` varchar(140) default NULL,
  `thumb_img` varchar(140) default NULL,
  `reply_name` varchar(140) default NULL,
  `reply_email` varchar(140) default NULL,
  `processing` tinyint(1) NOT NULL,
  `color_scheme_id` int(11) default NULL,
  `acp_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `campaign_id` (`campaign_id`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81491 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_bounces`
--

CREATE TABLE IF NOT EXISTS `email_bounces` (
  `email_id` int(11) NOT NULL default '0',
  `recipient_id` int(11) NOT NULL default '0',
  `code` int(11) NOT NULL default '0',
  `bounce_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `processed` tinyint(4) NOT NULL default '0',
  KEY `email_id` (`email_id`,`recipient_id`),
  KEY `bounce_date` (`bounce_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_content`
--

CREATE TABLE IF NOT EXISTS `email_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `email_id` int(11) unsigned NOT NULL default '0',
  `template_piece_id` int(11) unsigned default '0',
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `template_id` int(11) unsigned NOT NULL default '0',
  `read_only` tinyint(3) unsigned NOT NULL COMMENT 'user can edit this ',
  `users_scheduled_articles_id` int(10) unsigned default NULL,
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3633 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_deferred_thumbs`
--

CREATE TABLE IF NOT EXISTS `email_deferred_thumbs` (
  `email_deferred_thumbs_id` int(10) unsigned NOT NULL auto_increment,
  `email_id` int(11) NOT NULL,
  `template_defaults_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deferred_at` timestamp NULL default NULL,
  `processed_at` timestamp NULL default NULL,
  `processed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`email_deferred_thumbs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_fbl`
--

CREATE TABLE IF NOT EXISTS `email_fbl` (
  `email_id` int(11) NOT NULL default '0',
  `recipient_id` int(11) NOT NULL default '0',
  `code` int(11) NOT NULL default '0',
  `bounce_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `processed` tinyint(4) NOT NULL default '0',
  KEY `email_id` (`email_id`,`recipient_id`),
  KEY `recipient_id` (`recipient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_feedbackstats`
--

CREATE TABLE IF NOT EXISTS `email_feedbackstats` (
  `fb_date` date NOT NULL,
  `fb_count` int(11) unsigned NOT NULL,
  `fb_source` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_images`
--

CREATE TABLE IF NOT EXISTS `email_images` (
  `email_images_id` int(10) unsigned NOT NULL auto_increment,
  `email_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `basename` varchar(100) NOT NULL,
  `is_userfile` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`email_images_id`),
  UNIQUE KEY `email_id` (`email_id`,`image_url`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=165201 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_image_resize_cache`
--

CREATE TABLE IF NOT EXISTS `email_image_resize_cache` (
  `eirc_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `img` varchar(255) NOT NULL,
  `original_img` varchar(255) NOT NULL,
  `md5` varchar(255) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  PRIMARY KEY  (`eirc_id`),
  KEY `img` (`img`),
  KEY `md5` (`md5`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_links`
--

CREATE TABLE IF NOT EXISTS `email_links` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `email_id` int(11) NOT NULL default '0',
  `destination` varchar(255) NOT NULL default '',
  `link_type` enum('general','facebook','twitter','linkedin') default NULL,
  PRIMARY KEY  (`id`),
  KEY `email_id` (`email_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37117 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_links_actions`
--

CREATE TABLE IF NOT EXISTS `email_links_actions` (
  `ela_id` int(10) unsigned NOT NULL auto_increment,
  `email_link_id` int(10) unsigned NOT NULL,
  `nice_name` varchar(255) NOT NULL default '',
  `send_email_immediately` tinyint(4) NOT NULL default '0',
  `send_email_summary` tinyint(4) NOT NULL default '0',
  `add_to_email_list_id` int(10) unsigned default NULL,
  `populate_date_field_id` int(10) unsigned default NULL,
  `remove_from_email_list_id` int(11) default NULL,
  PRIMARY KEY  (`ela_id`),
  KEY `email_link_id` (`email_link_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_links_backup`
--

CREATE TABLE IF NOT EXISTS `email_links_backup` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `email_id` int(11) NOT NULL default '0',
  `destination` varchar(255) NOT NULL default '',
  `link_type` enum('general','facebook','twitter','linkedin') default NULL,
  PRIMARY KEY  (`id`),
  KEY `email_id` (`email_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83490 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_link_keywords`
--

CREATE TABLE IF NOT EXISTS `email_link_keywords` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `link_id` int(10) unsigned NOT NULL default '0',
  `keyword` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_opt_map`
--

CREATE TABLE IF NOT EXISTS `email_opt_map` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `query` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_recipient_messages`
--

CREATE TABLE IF NOT EXISTS `email_recipient_messages` (
  `email_recipient_messages_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `html` text NOT NULL,
  `active` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`email_recipient_messages_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_recip_count_at_send`
--

CREATE TABLE IF NOT EXISTS `email_recip_count_at_send` (
  `rcas_id` int(11) NOT NULL auto_increment,
  `email_id` int(11) NOT NULL,
  `recipient_count` int(11) NOT NULL,
  PRIMARY KEY  (`rcas_id`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_blacklist`
--

CREATE TABLE IF NOT EXISTS `email_smtp_blacklist` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `domain` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_blacklist_per_server`
--

CREATE TABLE IF NOT EXISTS `email_smtp_blacklist_per_server` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `domain` varchar(255) NOT NULL,
  `server_id` int(10) unsigned NOT NULL COMMENT 'from email_smtp_servers table',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_config`
--

CREATE TABLE IF NOT EXISTS `email_smtp_config` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_daily_stats`
--

CREATE TABLE IF NOT EXISTS `email_smtp_daily_stats` (
  `smtp_server_id` int(10) unsigned NOT NULL,
  `day` date NOT NULL,
  `count` int(11) NOT NULL default '0',
  PRIMARY KEY  (`smtp_server_id`,`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_email_blacklist`
--

CREATE TABLE IF NOT EXISTS `email_smtp_email_blacklist` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(255) NOT NULL,
  `date_unsubscribed` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_per_email_throttle`
--

CREATE TABLE IF NOT EXISTS `email_smtp_per_email_throttle` (
  `per_email_throttle_id` int(10) unsigned NOT NULL auto_increment,
  `email_id` int(11) NOT NULL,
  `last_processed` timestamp NULL default NULL,
  `finished` tinyint(4) NOT NULL default '0',
  `emails_sent` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`per_email_throttle_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_servers`
--

CREATE TABLE IF NOT EXISTS `email_smtp_servers` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(11) NOT NULL default '80',
  `weight` int(11) NOT NULL default '10',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_server_pools`
--

CREATE TABLE IF NOT EXISTS `email_smtp_server_pools` (
  `server_pool_id` int(11) NOT NULL auto_increment,
  `type` enum('general','preferred') NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_default` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`server_pool_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_server_pools_to_server_id`
--

CREATE TABLE IF NOT EXISTS `email_smtp_server_pools_to_server_id` (
  `server_pool_id` int(11) NOT NULL,
  `smtp_server_id` int(11) NOT NULL,
  PRIMARY KEY  (`server_pool_id`,`smtp_server_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_server_pool_overrides`
--

CREATE TABLE IF NOT EXISTS `email_smtp_server_pool_overrides` (
  `user_id` int(11) NOT NULL,
  `server_pool_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`server_pool_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_throttle_count`
--

CREATE TABLE IF NOT EXISTS `email_smtp_throttle_count` (
  `id` int(11) NOT NULL auto_increment,
  `throttle_domain_id` int(10) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_throttle_domains`
--

CREATE TABLE IF NOT EXISTS `email_smtp_throttle_domains` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `domain` varchar(255) NOT NULL,
  `email_count` int(10) unsigned NOT NULL,
  `timespan` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_social`
--

CREATE TABLE IF NOT EXISTS `email_social` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `sm_id` int(11) unsigned NOT NULL default '0',
  `message` text,
  `title` varchar(255) default NULL,
  `email_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`sm_id`,`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_stats`
--

CREATE TABLE IF NOT EXISTS `email_stats` (
  `email_id` int(11) unsigned NOT NULL default '0',
  `send_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `send_count` int(11) NOT NULL default '0',
  `forward_count` int(11) NOT NULL default '0',
  `forward_signups` int(11) NOT NULL default '0',
  `recipient_list_filename` varchar(60) NOT NULL default '',
  PRIMARY KEY  (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emerge_fb_apps`
--

CREATE TABLE IF NOT EXISTS `emerge_fb_apps` (
  `emerge_fb_apps_id` int(10) unsigned NOT NULL auto_increment,
  `app_title` varchar(50) NOT NULL,
  `app_id` varchar(100) NOT NULL,
  `app_secret` varchar(255) NOT NULL,
  `page_url` varchar(500) NOT NULL,
  `page_url_secure` varchar(500) NOT NULL,
  `app_url` varchar(500) NOT NULL,
  `app_url_secure` varchar(500) NOT NULL,
  `app_source` varchar(100) NOT NULL,
  PRIMARY KEY  (`emerge_fb_apps_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `emerge_fb_apps_subscriptions`
--

CREATE TABLE IF NOT EXISTS `emerge_fb_apps_subscriptions` (
  `emerge_fb_apps_subscriptions_id` int(10) unsigned NOT NULL auto_increment,
  `emerge_fb_apps_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_id` varchar(100) NOT NULL,
  `tab_id` varchar(100) NOT NULL,
  PRIMARY KEY  (`emerge_fb_apps_subscriptions_id`),
  UNIQUE KEY `emerge_fb_apps_id` (`emerge_fb_apps_id`,`user_id`,`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `emerge_fb_apps_templates`
--

CREATE TABLE IF NOT EXISTS `emerge_fb_apps_templates` (
  `emerge_fb_apps_templates_id` int(10) unsigned NOT NULL auto_increment,
  `emerge_fb_apps_subscriptions_id` int(10) unsigned NOT NULL,
  `template_source_fan` text NOT NULL,
  `template_source_non_fan` text NOT NULL,
  `tab_name` varchar(50) NOT NULL,
  `tab_position` int(11) NOT NULL default '0',
  `page_id` int(11) default NULL,
  PRIMARY KEY  (`emerge_fb_apps_templates_id`),
  UNIQUE KEY `emerge_fb_apps_subscriptions_id` (`emerge_fb_apps_subscriptions_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `error_stack`
--

CREATE TABLE IF NOT EXISTS `error_stack` (
  `error_stack_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `error_id` int(11) NOT NULL,
  `error_type` enum('email','facebook','twitter','linkedin','posterous','wordpress','tumblr','blogger') character set utf8 NOT NULL,
  `error_string` text character set utf8 NOT NULL,
  `error_string_simple` text NOT NULL,
  `table` varchar(100) character set utf8 NOT NULL,
  `table_key` varchar(100) character set utf8 NOT NULL,
  `error_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `first_seen` datetime default NULL,
  `date_expires` datetime default NULL,
  `seen` tinyint(4) NOT NULL default '0',
  `email_sent_at` datetime default NULL,
  PRIMARY KEY  (`error_stack_id`),
  UNIQUE KEY `user_id` (`user_id`,`error_type`,`table`,`table_key`,`error_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=213 ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `events_id` int(10) unsigned NOT NULL auto_increment,
  `events_master_id` int(10) unsigned default NULL,
  `event_name` varchar(100) NOT NULL COMMENT 'For php triggered events',
  `event_data` text NOT NULL COMMENT 'serialized data only...keep it concise, no entire objects!',
  `event_return_type` varchar(30) NOT NULL COMMENT 'array,json,serialized,string',
  `user_id` int(10) unsigned NOT NULL,
  `date_created` datetime default NULL,
  `date_seen` datetime default NULL,
  `date_expires` datetime default NULL,
  `is_completed` tinyint(4) NOT NULL default '0',
  `completed_data` text NOT NULL COMMENT 'auto serialized for db',
  `is_deleted` tinyint(4) NOT NULL default '0',
  `custom_cron` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`events_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Table structure for table `events_alerts`
--

CREATE TABLE IF NOT EXISTS `events_alerts` (
  `events_alerts_id` int(10) unsigned NOT NULL auto_increment,
  `events_id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` enum('success','info','warning','danger') NOT NULL,
  `body` text NOT NULL,
  `hide_close` varchar(10) NOT NULL,
  `action_href` varchar(255) NOT NULL,
  `action_route` varchar(255) NOT NULL,
  `hide_action` varchar(10) NOT NULL,
  `action_text` varchar(50) NOT NULL,
  `action_new_window` varchar(10) NOT NULL,
  `timeout` int(11) NOT NULL default '0',
  PRIMARY KEY  (`events_alerts_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Table structure for table `events_master`
--

CREATE TABLE IF NOT EXISTS `events_master` (
  `events_master_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `default_title` varchar(100) NOT NULL,
  `default_type` enum('success','info','warning','danger') NOT NULL default 'info',
  `default_body` text NOT NULL,
  `default_hide_close` varchar(10) default NULL COMMENT 'use "hidden" to hide',
  `default_action_href` varchar(255) NOT NULL,
  `default_action_route` varchar(255) NOT NULL,
  `default_hide_action` varchar(10) NOT NULL default 'hidden' COMMENT 'use "hidden" to hide',
  `defautl_action_text` varchar(50) NOT NULL,
  `default_action_new_window` varchar(10) NOT NULL,
  `default_timeout` int(11) NOT NULL default '0',
  PRIMARY KEY  (`events_master_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `ext_api_code_to_view`
--

CREATE TABLE IF NOT EXISTS `ext_api_code_to_view` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `error_code_id` int(11) NOT NULL,
  `view_type` enum('connect','page','dashboard','email') NOT NULL,
  `view_path` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `ext_api_error_codes`
--

CREATE TABLE IF NOT EXISTS `ext_api_error_codes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `network` varchar(30) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `nice_code` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `network` (`network`,`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=241 ;

-- --------------------------------------------------------

--
-- Table structure for table `ext_api_nice_codes`
--

CREATE TABLE IF NOT EXISTS `ext_api_nice_codes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nice_code` varchar(100) NOT NULL,
  `nice_code_description` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nice_code` (`nice_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Table structure for table `fairmont_survey`
--

CREATE TABLE IF NOT EXISTS `fairmont_survey` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) unsigned NOT NULL,
  `question_1` varchar(50) NOT NULL,
  `question_2` varchar(50) NOT NULL,
  `question_2_name` varchar(100) NOT NULL,
  `question_3` varchar(50) NOT NULL,
  `question_4_fairmont` varchar(50) NOT NULL,
  `question_4_raffles` varchar(50) NOT NULL,
  `question_4_swiss` varchar(50) NOT NULL,
  `question_5_canada` varchar(50) NOT NULL,
  `question_5_mexico` varchar(50) NOT NULL,
  `question_5_europe` varchar(50) NOT NULL,
  `question_5_asia` varchar(50) NOT NULL,
  `question_5_bermuda` varchar(50) NOT NULL,
  `question_5_africa` varchar(50) NOT NULL,
  `question_5_hawaii` varchar(50) NOT NULL,
  `question_5_usa` varchar(50) NOT NULL,
  `question_5_caribbean` varchar(50) NOT NULL,
  `question_5_other` varchar(200) NOT NULL,
  `question_6` varchar(50) NOT NULL,
  `question_7_name` varchar(100) NOT NULL,
  `question_7_dest` varchar(100) NOT NULL,
  `question_7_rooms` varchar(50) NOT NULL,
  `question_7_call` varchar(50) NOT NULL,
  `question_7_directory` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `organization` varchar(150) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE IF NOT EXISTS `features` (
  `features_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  PRIMARY KEY  (`features_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `features_users`
--

CREATE TABLE IF NOT EXISTS `features_users` (
  `features_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`features_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fileupload`
--

CREATE TABLE IF NOT EXISTS `fileupload` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(255) NOT NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE IF NOT EXISTS `fonts` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(55) NOT NULL,
  `file` varchar(75) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- --------------------------------------------------------

--
-- Table structure for table `ga_config`
--

CREATE TABLE IF NOT EXISTS `ga_config` (
  `ga_config_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `web_property_id` varchar(50) NOT NULL,
  `profile_name` varchar(80) NOT NULL,
  `account_name` varchar(80) NOT NULL,
  `fb_app_id` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ga_config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=423 ;

-- --------------------------------------------------------

--
-- Table structure for table `goem_browsers`
--

CREATE TABLE IF NOT EXISTS `goem_browsers` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `http_user_agent` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `browser_string` (`http_user_agent`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `goem_link`
--

CREATE TABLE IF NOT EXISTS `goem_link` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL,
  `link` varchar(255) NOT NULL,
  `tag` varchar(6) character set latin1 collate latin1_bin NOT NULL,
  `date_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31542 ;

-- --------------------------------------------------------

--
-- Table structure for table `goem_track`
--

CREATE TABLE IF NOT EXISTS `goem_track` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `link_id` int(10) unsigned NOT NULL,
  `browser_id` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) NOT NULL,
  `http_accept_lang` varchar(255) NOT NULL,
  `remote_addr` varchar(46) NOT NULL,
  `datetime_clicked` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=315647 ;

-- --------------------------------------------------------

--
-- Table structure for table `greeting`
--

CREATE TABLE IF NOT EXISTS `greeting` (
  `greeting_id` int(11) unsigned NOT NULL auto_increment,
  `email_id` int(11) unsigned NOT NULL,
  `found_string` varchar(150) NOT NULL,
  `not_found_string` varchar(150) NOT NULL,
  `first_name_required` tinyint(4) NOT NULL default '0',
  `last_name_required` tinyint(4) NOT NULL default '0',
  `email_required` tinyint(4) NOT NULL default '0',
  `for_subject_line` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`greeting_id`),
  KEY `email_id` (`email_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `groupname` varchar(60) NOT NULL default '',
  `creation` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `removable` tinyint(1) NOT NULL default '1',
  `campaign_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `removable` (`removable`),
  KEY `groupname` (`groupname`),
  KEY `groupname_2` (`groupname`,`removable`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6987 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups_shared`
--

CREATE TABLE IF NOT EXISTS `groups_shared` (
  `group_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  UNIQUE KEY `group_id` (`group_id`,`user_id`),
  KEY `group_id_2` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image_library`
--

CREATE TABLE IF NOT EXISTS `image_library` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `partner_id` int(11) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `category` varchar(255) NOT NULL default '',
  `image_type` varchar(255) NOT NULL default '',
  `tags` varchar(4000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2743 ;

-- --------------------------------------------------------

--
-- Table structure for table `internal_link_tracking`
--

CREATE TABLE IF NOT EXISTS `internal_link_tracking` (
  `id` int(5) NOT NULL auto_increment,
  `user_id` int(5) NOT NULL,
  `from_page` varchar(255) NOT NULL,
  `hierarchy` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `click_time` time NOT NULL,
  `click_date` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `from_page` (`from_page`),
  KEY `user_id` (`user_id`,`click_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1631281 ;

-- --------------------------------------------------------

--
-- Table structure for table `internal_page_views`
--

CREATE TABLE IF NOT EXISTS `internal_page_views` (
  `id` int(5) NOT NULL auto_increment,
  `user_id` int(5) NOT NULL,
  `page` varchar(255) NOT NULL,
  `time_visited` time NOT NULL,
  `date_visited` date NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `date_visited` (`date_visited`),
  KEY `user_id` (`user_id`,`date_visited`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2266127 ;

-- --------------------------------------------------------

--
-- Table structure for table `ismrm_user_interests`
--

CREATE TABLE IF NOT EXISTS `ismrm_user_interests` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) unsigned NOT NULL,
  `discover_annual_meetings` varchar(100) NOT NULL,
  `discover_courses` varchar(100) NOT NULL,
  `discover_workshops` varchar(100) NOT NULL,
  `discover_chapter_meetings` varchar(100) NOT NULL,
  `save_fees` varchar(100) NOT NULL,
  `save_bookstore` varchar(100) NOT NULL,
  `save_career` varchar(100) NOT NULL,
  `engage_reviews` varchar(100) NOT NULL,
  `engage_committeees` varchar(100) NOT NULL,
  `engage_study` varchar(100) NOT NULL,
  `develop_career` varchar(100) NOT NULL,
  `develop_courses` varchar(100) NOT NULL,
  `develop_meetings` varchar(100) NOT NULL,
  `develop_workshops` varchar(100) NOT NULL,
  `connect_membership` varchar(100) NOT NULL,
  `connect_meetings` varchar(100) NOT NULL,
  `connect_educational` varchar(100) NOT NULL,
  `connect_workshops` varchar(100) NOT NULL,
  `access_educational` varchar(100) NOT NULL,
  `access_grants` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

-- --------------------------------------------------------

--
-- Table structure for table `landingpage_pref`
--

CREATE TABLE IF NOT EXISTS `landingpage_pref` (
  `user_id` int(11) NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `background_color` varchar(10) NOT NULL,
  `font_style` varchar(50) NOT NULL,
  `font_color` varchar(10) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `language_id` int(11) NOT NULL auto_increment,
  `iso` varchar(5) NOT NULL,
  `language` varchar(50) NOT NULL,
  `hidden` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=185 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages_translations`
--

CREATE TABLE IF NOT EXISTS `languages_translations` (
  `languages_translations_id` int(10) unsigned NOT NULL auto_increment,
  `english_phrase` varchar(255) character set utf8 NOT NULL,
  `language_to_id` int(10) unsigned NOT NULL,
  `translated_phrase` varchar(255) character set utf8 NOT NULL,
  PRIMARY KEY  (`languages_translations_id`),
  UNIQUE KEY `english_phrase` (`english_phrase`,`language_to_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `lead_entries`
--

CREATE TABLE IF NOT EXISTS `lead_entries` (
  `lead_entries_id` int(10) unsigned NOT NULL auto_increment,
  `lead_master_id` int(11) NOT NULL,
  `lead_users_id` int(11) NOT NULL,
  `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`lead_entries_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

-- --------------------------------------------------------

--
-- Table structure for table `lead_entries_fields`
--

CREATE TABLE IF NOT EXISTS `lead_entries_fields` (
  `lead_entries_id` int(11) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `field_value` varchar(255) NOT NULL,
  PRIMARY KEY  (`lead_entries_id`,`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lead_master`
--

CREATE TABLE IF NOT EXISTS `lead_master` (
  `lead_master_id` int(10) unsigned NOT NULL auto_increment,
  `master_user_id` int(11) NOT NULL,
  `domain_match` varchar(100) NOT NULL,
  `lead_list_id` int(11) NOT NULL,
  PRIMARY KEY  (`lead_master_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `lead_notified`
--

CREATE TABLE IF NOT EXISTS `lead_notified` (
  `lead_notified_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  PRIMARY KEY  (`lead_notified_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `lead_users`
--

CREATE TABLE IF NOT EXISTS `lead_users` (
  `lead_users_id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `level` int(11) NOT NULL,
  `master_user_id` int(11) NOT NULL,
  PRIMARY KEY  (`lead_users_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `link_tracking`
--

CREATE TABLE IF NOT EXISTS `link_tracking` (
  `link_tracking_id` int(10) unsigned NOT NULL auto_increment,
  `domain` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `referred_by_url` varchar(255) NOT NULL,
  `teg` varchar(20) NOT NULL,
  `time_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`link_tracking_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE IF NOT EXISTS `lists` (
  `list_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `recipient_id` int(11) unsigned NOT NULL default '0',
  `listname` varchar(60) NOT NULL default '',
  `creation` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_tracking`
--

CREATE TABLE IF NOT EXISTS `login_tracking` (
  `login_tracking_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `login_ip` varchar(100) NOT NULL,
  `login_session_id` varchar(255) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL,
  `admin_login` tinyint(1) NOT NULL default '0',
  `seen_alert` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`login_tracking_id`),
  KEY `user_id` (`user_id`),
  KEY `login_session_id` (`login_session_id`),
  KEY `user_id_2` (`user_id`,`login_session_id`),
  KEY `user_id_3` (`user_id`,`login_session_id`,`logout_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1161 ;

-- --------------------------------------------------------

--
-- Table structure for table `mail_log_queue`
--

CREATE TABLE IF NOT EXISTS `mail_log_queue` (
  `mailLogQueueId` int(10) unsigned NOT NULL auto_increment,
  `server` int(11) NOT NULL,
  `queueId` varchar(20) NOT NULL,
  `dateTime` datetime NOT NULL,
  `from` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `mailId` int(11) NOT NULL,
  PRIMARY KEY  (`mailLogQueueId`),
  KEY `queueId` (`queueId`),
  KEY `dateTime` (`dateTime`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=165798 ;

-- --------------------------------------------------------

--
-- Table structure for table `mail_log_response`
--

CREATE TABLE IF NOT EXISTS `mail_log_response` (
  `mailLogResponseId` int(10) unsigned NOT NULL auto_increment,
  `server` int(11) NOT NULL,
  `queueId` varchar(20) NOT NULL,
  `dateTime` datetime NOT NULL,
  `to` varchar(255) NOT NULL,
  `to_domain` varchar(50) NOT NULL,
  `relay` varchar(255) NOT NULL,
  `delay` float(10,2) NOT NULL,
  `delays` varchar(50) NOT NULL,
  `dsn` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `message` varchar(500) NOT NULL,
  `code` int(11) NOT NULL,
  `host` varchar(255) NOT NULL,
  `host_ip` varchar(100) NOT NULL,
  PRIMARY KEY  (`mailLogResponseId`),
  KEY `queueId` (`queueId`),
  KEY `dateTime` (`dateTime`),
  KEY `host` (`host`),
  KEY `host_ip` (`host_ip`),
  KEY `status` (`status`),
  KEY `dateTime_2` (`dateTime`,`status`),
  KEY `to_domain` (`to_domain`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=164550 ;

-- --------------------------------------------------------

--
-- Table structure for table `managed_account_settings`
--

CREATE TABLE IF NOT EXISTS `managed_account_settings` (
  `mas_id` int(10) unsigned NOT NULL auto_increment,
  `mas_name` varchar(100) NOT NULL,
  `mas_slug` varchar(50) NOT NULL,
  PRIMARY KEY  (`mas_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `managed_account_users_settings`
--

CREATE TABLE IF NOT EXISTS `managed_account_users_settings` (
  `maus_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `mas_id` int(10) unsigned NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`maus_id`),
  UNIQUE KEY `user_id` (`user_id`,`mas_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE IF NOT EXISTS `manage_website` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_tips`
--

CREATE TABLE IF NOT EXISTS `marketing_tips` (
  `marketing_tips_id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `full_text` text NOT NULL,
  `date_inserted` datetime NOT NULL,
  `date_modified` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`marketing_tips_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_tips_categories`
--

CREATE TABLE IF NOT EXISTS `marketing_tips_categories` (
  `marketing_tips_categories_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY  (`marketing_tips_categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_tips_to_affiliations_id`
--

CREATE TABLE IF NOT EXISTS `marketing_tips_to_affiliations_id` (
  `marketing_tips_id` int(11) NOT NULL,
  `affiliations_id` int(11) NOT NULL,
  PRIMARY KEY  (`marketing_tips_id`,`affiliations_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_tips_to_categories`
--

CREATE TABLE IF NOT EXISTS `marketing_tips_to_categories` (
  `marketing_tips_id` int(11) NOT NULL,
  `marketing_tips_categories_id` int(11) NOT NULL,
  PRIMARY KEY  (`marketing_tips_id`,`marketing_tips_categories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_tips_used`
--

CREATE TABLE IF NOT EXISTS `marketing_tips_used` (
  `marketing_tips_used_id` int(11) NOT NULL auto_increment,
  `marketing_tips_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `use_date` datetime NOT NULL,
  PRIMARY KEY  (`marketing_tips_used_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Table structure for table `modal`
--

CREATE TABLE IF NOT EXISTS `modal` (
  `modal_id` int(10) unsigned NOT NULL auto_increment,
  `el` varchar(100) NOT NULL COMMENT 'Informational purposes only for now',
  `description` varchar(255) NOT NULL COMMENT 'Informational purposes only for now',
  PRIMARY KEY  (`modal_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `modal_do_not_show`
--

CREATE TABLE IF NOT EXISTS `modal_do_not_show` (
  `mdns_id` int(10) unsigned NOT NULL auto_increment,
  `modal_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `do_not_show` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`mdns_id`),
  UNIQUE KEY `modal_id` (`modal_id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `mscrm_config`
--

CREATE TABLE IF NOT EXISTS `mscrm_config` (
  `user_id` int(11) unsigned NOT NULL,
  `user_name` varchar(24) NOT NULL,
  `password` varchar(30) NOT NULL,
  `organization` varchar(24) NOT NULL,
  `mscrm_config_id` int(11) unsigned NOT NULL auto_increment,
  `is_active` tinyint(1) unsigned NOT NULL default '1' COMMENT 'flags if this account is set for script contact retrieval',
  `org_id` varchar(34) NOT NULL,
  PRIMARY KEY  (`mscrm_config_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `mscrm_log`
--

CREATE TABLE IF NOT EXISTS `mscrm_log` (
  `user_id` int(11) unsigned NOT NULL,
  `log_date` datetime NOT NULL,
  `updated_count` int(11) unsigned NOT NULL,
  `added_count` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mscrm_mapping`
--

CREATE TABLE IF NOT EXISTS `mscrm_mapping` (
  `user_id` int(11) unsigned NOT NULL,
  `field_name` varchar(24) NOT NULL COMMENT 'name of crm data field as it appears',
  `optin_value_id` int(11) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`optin_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nave_header`
--

CREATE TABLE IF NOT EXISTS `nave_header` (
  `nav_header_id` int(10) unsigned NOT NULL auto_increment,
  `href` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `html_class` varchar(100) NOT NULL,
  `html_id` varchar(100) NOT NULL,
  `nav_header_group_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `lorder` int(11) NOT NULL default '0',
  PRIMARY KEY  (`nav_header_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `nave_header_group`
--

CREATE TABLE IF NOT EXISTS `nave_header_group` (
  `nav_header_group_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`nav_header_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `nave_sidebar`
--

CREATE TABLE IF NOT EXISTS `nave_sidebar` (
  `nav_sidebar_id` int(10) unsigned NOT NULL auto_increment,
  `href` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `html_class` varchar(100) NOT NULL,
  `html_id` varchar(100) NOT NULL,
  `nav_sidebar_group_id` int(10) unsigned default NULL,
  `icon` varchar(255) NOT NULL,
  `lorder` int(11) NOT NULL default '0',
  `products_id` char(100) NOT NULL,
  `managed_accounts` tinyint(4) NOT NULL default '0',
  `campaign_product` tinyint(4) NOT NULL,
  `user_id` char(100) NOT NULL,
  PRIMARY KEY  (`nav_sidebar_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

-- --------------------------------------------------------

--
-- Table structure for table `nave_sidebar_group`
--

CREATE TABLE IF NOT EXISTS `nave_sidebar_group` (
  `nav_sidebar_group_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `lorder` int(11) NOT NULL default '0',
  `products_id` int(11) NOT NULL,
  PRIMARY KEY  (`nav_sidebar_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Table structure for table `nav_groups`
--

CREATE TABLE IF NOT EXISTS `nav_groups` (
  `nav_groups_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`nav_groups_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `nav_header`
--

CREATE TABLE IF NOT EXISTS `nav_header` (
  `nav_header_id` int(10) unsigned NOT NULL auto_increment,
  `nav_links_id` int(11) NOT NULL,
  `lorder` int(11) NOT NULL default '0',
  PRIMARY KEY  (`nav_header_id`),
  UNIQUE KEY `nav_links_id` (`nav_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `nav_header_to_group`
--

CREATE TABLE IF NOT EXISTS `nav_header_to_group` (
  `nav_header_id` int(11) NOT NULL,
  `nav_groups_id` int(11) NOT NULL,
  PRIMARY KEY  (`nav_header_id`,`nav_groups_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nav_links`
--

CREATE TABLE IF NOT EXISTS `nav_links` (
  `nav_links_id` int(10) unsigned NOT NULL auto_increment,
  `file` varchar(50) NOT NULL,
  `href` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `html_class` varchar(100) NOT NULL,
  `html_id` varchar(100) NOT NULL,
  `parent_id` int(10) unsigned default NULL,
  `nav_groups_id` int(10) unsigned default NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY  (`nav_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `nav_links_to_product_id`
--

CREATE TABLE IF NOT EXISTS `nav_links_to_product_id` (
  `nav_links_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`nav_links_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nav_sidebar`
--

CREATE TABLE IF NOT EXISTS `nav_sidebar` (
  `nav_sidebar_id` int(10) unsigned NOT NULL auto_increment,
  `nav_links_id` int(10) unsigned NOT NULL,
  `lorder` int(11) NOT NULL default '0',
  PRIMARY KEY  (`nav_sidebar_id`),
  UNIQUE KEY `nav_links_id` (`nav_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `template_id` int(11) unsigned NOT NULL default '0',
  `user_id` int(11) unsigned NOT NULL default '0',
  `email_name` varchar(255) NOT NULL default '',
  `email_subject` varchar(255) NOT NULL default '',
  `email_from` varchar(255) NOT NULL default '',
  `email_reply` varchar(255) NOT NULL default '',
  `date_created` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_content`
--

CREATE TABLE IF NOT EXISTS `newsletter_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `newsletter_id` int(11) NOT NULL default '0',
  `template_id` int(11) NOT NULL default '0',
  `section` int(11) NOT NULL default '0',
  `image` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_templates`
--

CREATE TABLE IF NOT EXISTS `newsletter_templates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `content_header` smallint(1) NOT NULL default '0',
  `content_main` smallint(1) NOT NULL default '0',
  `content_sidetop` smallint(1) NOT NULL default '0',
  `content_sidemiddle` smallint(1) NOT NULL default '0',
  `content_sidebottom` smallint(1) NOT NULL default '0',
  `content_footer` smallint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `optin_groups`
--

CREATE TABLE IF NOT EXISTS `optin_groups` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `group_name` varchar(50) NOT NULL default '',
  `order` int(11) NOT NULL default '0',
  `is_survey` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=223 ;

-- --------------------------------------------------------

--
-- Table structure for table `optin_values`
--

CREATE TABLE IF NOT EXISTS `optin_values` (
  `optin_value_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `type` enum('b','i','s','d','l') NOT NULL default 'b',
  `question_type` enum('Dropdown List','Radio Buttons','Checkboxes','Textarea','TextNoAnswer') default NULL,
  `classification` enum('public','private') NOT NULL default 'public',
  `signup` tinyint(4) NOT NULL default '0',
  `group_id` int(11) NOT NULL default '0',
  `alt_login` tinyint(4) NOT NULL default '0',
  `email_list` tinyint(4) unsigned NOT NULL default '0',
  `position` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL default '0',
  `sub_can_edit` tinyint(4) NOT NULL default '1',
  `sub_can_add_only` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`optin_value_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13569 ;

-- --------------------------------------------------------

--
-- Table structure for table `optin_values_backup`
--

CREATE TABLE IF NOT EXISTS `optin_values_backup` (
  `optin_value_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `type` enum('b','i','s','d') NOT NULL default 'b',
  `classification` enum('public','private') NOT NULL default 'public',
  `signup` tinyint(4) NOT NULL default '0',
  `group_id` int(11) NOT NULL default '0',
  `alt_login` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`optin_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=170 ;

-- --------------------------------------------------------

--
-- Table structure for table `optin_values_listitems`
--

CREATE TABLE IF NOT EXISTS `optin_values_listitems` (
  `opt_list_item_id` int(11) NOT NULL auto_increment,
  `optin_value_id` int(11) NOT NULL,
  `list_item_title` varchar(150) NOT NULL,
  `position` int(11) default NULL,
  PRIMARY KEY  (`opt_list_item_id`),
  KEY `optin_value_id` (`optin_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=651 ;

-- --------------------------------------------------------

--
-- Table structure for table `optin_values_list_shared`
--

CREATE TABLE IF NOT EXISTS `optin_values_list_shared` (
  `ovls_id` int(10) unsigned NOT NULL auto_increment,
  `optin_value_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`ovls_id`),
  UNIQUE KEY `optin_value_id` (`optin_value_id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- Table structure for table `packages_affiliations`
--

CREATE TABLE IF NOT EXISTS `packages_affiliations` (
  `id` smallint(11) unsigned NOT NULL auto_increment,
  `affiliation` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `package_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Table structure for table `packages_logos`
--

CREATE TABLE IF NOT EXISTS `packages_logos` (
  `packages_logos_id` int(11) unsigned NOT NULL auto_increment,
  `packages_affiliations_id` int(11) unsigned default NULL,
  `logo_name` varchar(255) default NULL,
  `logo_file` varchar(255) default NULL,
  PRIMARY KEY  (`packages_logos_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `packages_realestate_requirements`
--

CREATE TABLE IF NOT EXISTS `packages_realestate_requirements` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `packages_steps`
--

CREATE TABLE IF NOT EXISTS `packages_steps` (
  `id` smallint(11) unsigned NOT NULL auto_increment,
  `step` varchar(255) NOT NULL,
  `priority` tinyint(11) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `tab_order` tinyint(11) unsigned NOT NULL default '1',
  `prompt_order` smallint(11) unsigned NOT NULL default '0' COMMENT 'determines which prompt "view" this step will be presented on',
  `package_type` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `packages_templates_model`
--

CREATE TABLE IF NOT EXISTS `packages_templates_model` (
  `packages_templates_model_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `template_group` int(11) unsigned NOT NULL,
  `package_type` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY  (`packages_templates_model_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `packages_themes`
--

CREATE TABLE IF NOT EXISTS `packages_themes` (
  `packages_themes_id` int(11) unsigned NOT NULL auto_increment,
  `packages_affiliations_id` int(11) unsigned NOT NULL,
  `theme_name` varchar(255) NOT NULL,
  `theme_icon` varchar(255) NOT NULL,
  `theme_loc` varchar(255) NOT NULL,
  PRIMARY KEY  (`packages_themes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

-- --------------------------------------------------------

--
-- Table structure for table `packages_user_details`
--

CREATE TABLE IF NOT EXISTS `packages_user_details` (
  `user_id` int(11) unsigned NOT NULL,
  `packages_affiliations_id` int(11) unsigned NOT NULL default '0',
  `packages_themes_id_1` int(11) unsigned NOT NULL,
  `packages_themes_id_2` int(11) unsigned NOT NULL,
  `default_theme` int(11) unsigned NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `contact_group_type` varchar(255) NOT NULL default 'all',
  `contact_group_id` varchar(255) NOT NULL default '0',
  `hashtags` varchar(4000) NOT NULL default '',
  `track_id` int(11) NOT NULL default '1',
  `listing_url` varchar(255) default NULL,
  `newsletter_title` varchar(255) default NULL,
  `courtesy` varchar(255) default NULL,
  `nar` tinyint(1) NOT NULL default '0',
  `disclaimer` text,
  `photo` varchar(255) default NULL,
  `logo` varchar(255) default NULL,
  `template_defaults_id` int(11) NOT NULL,
  `needs_fb_page` int(11) NOT NULL default '0',
  `needs_tumblr` int(11) NOT NULL default '0',
  `logo_2` varchar(255) default NULL,
  `styling_complete` tinyint(1) unsigned NOT NULL default '0',
  `blog_link` int(11) NOT NULL default '0',
  `first_publish_date` date default NULL,
  `send_secondary_email` tinyint(1) unsigned NOT NULL default '0',
  `agent_broker` varchar(100) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages_user_sm_links`
--

CREATE TABLE IF NOT EXISTS `packages_user_sm_links` (
  `user_id` int(11) NOT NULL,
  `users_sm_links_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages_user_steps`
--

CREATE TABLE IF NOT EXISTS `packages_user_steps` (
  `packages_steps_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `complete` tinyint(1) unsigned NOT NULL default '0',
  `date_completed` datetime NOT NULL default '0000-00-00 00:00:00',
  `packages_affiliations_id` int(11) unsigned NOT NULL,
  `step_contents` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(10) unsigned NOT NULL auto_increment,
  `page_template_id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY  (`page_id`),
  UNIQUE KEY `slug_2` (`slug`),
  KEY `page_id` (`page_id`,`page_template_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `page_parts`
--

CREATE TABLE IF NOT EXISTS `page_parts` (
  `page_id` int(10) unsigned NOT NULL,
  `page_part` varchar(50) NOT NULL,
  `content` varchar(5000) NOT NULL,
  UNIQUE KEY `page_id` (`page_id`,`page_part`),
  KEY `page_id_2` (`page_id`),
  KEY `page_part` (`page_part`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page_template`
--

CREATE TABLE IF NOT EXISTS `page_template` (
  `page_template_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`page_template_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `page_template_parts`
--

CREATE TABLE IF NOT EXISTS `page_template_parts` (
  `page_part_id` int(10) unsigned NOT NULL auto_increment,
  `page_part` varchar(50) NOT NULL,
  `page_template_id` int(10) unsigned NOT NULL,
  `content` varchar(5000) NOT NULL,
  `nice_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`page_part_id`),
  KEY `page_part` (`page_part`),
  KEY `nice_name` (`nice_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `partner_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `partner_code` varchar(50) default NULL,
  `partner_type_id` int(11) NOT NULL,
  `partner_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `payment_method` enum('partner','users') NOT NULL default 'partner',
  PRIMARY KEY  (`partner_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `partners_image_categories`
--

CREATE TABLE IF NOT EXISTS `partners_image_categories` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `partner_id` int(11) unsigned NOT NULL,
  `image_category` varchar(50) NOT NULL,
  `category_type` enum('emerge','partner') NOT NULL default 'emerge',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- Table structure for table `partners_nav`
--

CREATE TABLE IF NOT EXISTS `partners_nav` (
  `partners_nav_id` int(11) unsigned NOT NULL auto_increment,
  `partner_id` int(11) unsigned NOT NULL,
  `nav_url` varchar(200) NOT NULL,
  `nav_text` varchar(75) NOT NULL,
  `order_by` int(4) unsigned NOT NULL,
  PRIMARY KEY  (`partners_nav_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `partners_promos`
--

CREATE TABLE IF NOT EXISTS `partners_promos` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `full_path` varchar(200) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `height` int(4) unsigned NOT NULL,
  `width` int(4) unsigned NOT NULL,
  `cat` int(4) unsigned NOT NULL default '0',
  `sub_cat` int(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- --------------------------------------------------------

--
-- Table structure for table `partners_template`
--

CREATE TABLE IF NOT EXISTS `partners_template` (
  `partners_template_id` int(11) NOT NULL auto_increment,
  `partner_id` int(11) NOT NULL,
  `url` varchar(127) NOT NULL,
  `favor_icon` varchar(127) default NULL,
  `email_header_img` varchar(127) default NULL,
  `email_footer_img` varchar(127) default NULL,
  `support_email` varchar(127) default NULL,
  `page_title` varchar(127) default NULL,
  `page_bg_color` varchar(7) default NULL,
  `page_bg_image` varchar(127) default NULL,
  `header_html` text,
  `header_hight_px` int(11) NOT NULL,
  `divContentMain_bg_image` varchar(127) default NULL,
  `content_wrpper_bg_img` varchar(127) default NULL,
  `content_bg_color` varchar(7) default NULL,
  `content_bg_image` varchar(127) default NULL,
  `content_bottom_bg_image` varchar(255) default NULL,
  `nav_bar_link` varchar(511) default NULL,
  `footer_html` text,
  `footer_bg_image` varchar(127) default NULL,
  `footer_bg_color` varchar(7) default NULL,
  `content_nav_bg_image` varchar(127) default NULL,
  `content_top_nav_bg_image` varchar(127) default NULL,
  `content_nav_bg_color` varchar(7) default NULL,
  `content_top_nav_bg_color` varchar(7) default NULL,
  `css_body` varchar(511) default NULL,
  `css_hyper_link` varchar(511) default NULL,
  `css_hyper_link_hover` varchar(255) default NULL,
  `css_font_family` varchar(127) NOT NULL,
  `css_font_size` int(2) NOT NULL,
  `css_h1` varchar(511) default NULL,
  `tr_bg_color` varchar(7) default NULL,
  `tr_bg_alter_color` varchar(7) default NULL,
  `th_bg_color` varchar(7) default NULL,
  `css_h2` varchar(511) default NULL,
  `css_th` varchar(511) default NULL,
  `css_h3` varchar(511) default NULL,
  `css_h4` varchar(511) default NULL,
  PRIMARY KEY  (`partners_template_id`),
  KEY `url` (`url`),
  KEY `partner_id` (`partner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `partners_tracking`
--

CREATE TABLE IF NOT EXISTS `partners_tracking` (
  `tracking_id` int(11) unsigned NOT NULL auto_increment,
  `tracking_code` varchar(20) NOT NULL default '',
  `date_clicked` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_purchased` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_id` int(11) unsigned NOT NULL default '0',
  `customer_ip` varchar(16) NOT NULL default '',
  `get_string` text NOT NULL,
  PRIMARY KEY  (`tracking_id`),
  KEY `tracking_code` (`tracking_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

-- --------------------------------------------------------

--
-- Table structure for table `partners_type`
--

CREATE TABLE IF NOT EXISTS `partners_type` (
  `partner_type_id` int(11) NOT NULL auto_increment,
  `partner_type_name` varchar(127) NOT NULL,
  PRIMARY KEY  (`partner_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `partner_template_defaults_content`
--

CREATE TABLE IF NOT EXISTS `partner_template_defaults_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `partner_id` int(11) NOT NULL,
  `template_default_id` int(11) unsigned NOT NULL default '0',
  `template_piece_id` int(11) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `pcma_temp`
--

CREATE TABLE IF NOT EXISTS `pcma_temp` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `first_name` varchar(200) NOT NULL default '',
  `last_name` varchar(200) NOT NULL default '',
  `title` varchar(200) NOT NULL default '',
  `company` varchar(200) NOT NULL default '',
  `city` varchar(200) NOT NULL default '',
  `state` varchar(200) NOT NULL default '',
  `country` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=691 ;

-- --------------------------------------------------------

--
-- Table structure for table `pricing_campaigns`
--

CREATE TABLE IF NOT EXISTS `pricing_campaigns` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(150) NOT NULL,
  `number_of_emails` int(4) unsigned NOT NULL,
  `price` int(7) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `pricing_levels`
--

CREATE TABLE IF NOT EXISTS `pricing_levels` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(150) NOT NULL default '',
  `max_recipients` int(11) unsigned NOT NULL default '0',
  `price` float(10,2) NOT NULL default '0.00',
  `products_id` int(11) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `megabytes` int(11) NOT NULL default '0',
  `send_limit` int(11) NOT NULL,
  `additional_contacts` int(11) NOT NULL default '0',
  `setup_price` float(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=304 ;

-- --------------------------------------------------------

--
-- Table structure for table `pricing_power_broker`
--

CREATE TABLE IF NOT EXISTS `pricing_power_broker` (
  `users_billing_acct_id` int(11) NOT NULL,
  `per_account_discount` tinyint(4) NOT NULL default '0',
  `total_account_flat_rate` tinyint(4) NOT NULL default '0',
  `scale` text NOT NULL,
  PRIMARY KEY  (`users_billing_acct_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) unsigned NOT NULL auto_increment,
  `sort_order` int(11) NOT NULL,
  `products_name` varchar(255) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `one_time_price` float(10,2) NOT NULL default '0.00',
  `one_time_credits_sms` int(11) NOT NULL default '0',
  `one_time_credits_email` int(11) NOT NULL default '0',
  `recur_price` float(10,2) NOT NULL default '0.00',
  `recur_credits_sms` int(11) NOT NULL default '0',
  `recur_credits_email` int(11) NOT NULL default '0',
  `priced_by_level` tinyint(4) NOT NULL default '0',
  `is_recurring` tinyint(4) NOT NULL default '0',
  `is_active` tinyint(4) NOT NULL default '1',
  `qty_show` tinyint(4) NOT NULL default '0',
  `qty_min` int(11) NOT NULL default '0',
  `priority` int(11) NOT NULL,
  `old_id` int(11) NOT NULL,
  PRIMARY KEY  (`products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10055 ;

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE IF NOT EXISTS `products_categories` (
  `categories_id` int(11) unsigned NOT NULL auto_increment,
  `categories_name` varchar(150) NOT NULL,
  `sort_order` smallint(5) unsigned NOT NULL default '0',
  `public` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`categories_id`),
  KEY `sort_order` (`sort_order`,`public`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE IF NOT EXISTS `products_description` (
  `products_id` int(11) unsigned NOT NULL,
  `products_description` text,
  `products_image` varchar(255) default NULL,
  PRIMARY KEY  (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products_purchased`
--

CREATE TABLE IF NOT EXISTS `products_purchased` (
  `user_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_level` int(11) NOT NULL default '0',
  `bill_count` int(4) NOT NULL default '-1',
  `bill_count_total` int(4) NOT NULL,
  `date_renewal` date default NULL,
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`,`products_id`),
  KEY `products_id` (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products_qty_pricing`
--

CREATE TABLE IF NOT EXISTS `products_qty_pricing` (
  `pricing_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `max_qty` int(11) NOT NULL default '0',
  `price_per_item` float(10,3) NOT NULL default '0.000',
  PRIMARY KEY  (`pricing_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `profile_page`
--

CREATE TABLE IF NOT EXISTS `profile_page` (
  `profile_page_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `show_lists` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`profile_page_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `publish_content_static`
--

CREATE TABLE IF NOT EXISTS `publish_content_static` (
  `idpublish_content_static` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `quickread_html` text NOT NULL,
  `html` text NOT NULL,
  `id_deleted` tinyint(4) NOT NULL default '0',
  `no_edit_wrap` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`idpublish_content_static`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `publish_scheduled_articles`
--

CREATE TABLE IF NOT EXISTS `publish_scheduled_articles` (
  `idpublish_scheduled_articles` int(11) NOT NULL auto_increment,
  `acp_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `month` int(11) default NULL,
  `week` int(11) default NULL,
  `year` int(11) default NULL,
  `time_published` datetime default NULL,
  `time_generated` datetime default NULL,
  `time_notified` datetime default NULL,
  `assign_json` text,
  `publish_json` text,
  `track_id` int(11) default NULL,
  PRIMARY KEY  (`idpublish_scheduled_articles`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `publish_tracks`
--

CREATE TABLE IF NOT EXISTS `publish_tracks` (
  `idpublish_track` int(11) NOT NULL auto_increment,
  `publish_track_name` varchar(45) default NULL,
  `publish_track_description` text,
  PRIMARY KEY  (`idpublish_track`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `publish_track_overrides`
--

CREATE TABLE IF NOT EXISTS `publish_track_overrides` (
  `idpublish_track_overrides` int(11) NOT NULL auto_increment,
  `acp_id` int(11) default NULL,
  `year` int(11) default NULL,
  `month` int(11) default NULL,
  `week` int(11) default NULL,
  `json` text,
  PRIMARY KEY  (`idpublish_track_overrides`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `publish_track_parts`
--

CREATE TABLE IF NOT EXISTS `publish_track_parts` (
  `idpublish_track_parts` int(11) NOT NULL auto_increment,
  `idpublish_track` int(11) default NULL,
  `publish_track_part_order` int(11) default '0',
  `publish_track_part_json` text,
  PRIMARY KEY  (`idpublish_track_parts`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients`
--

CREATE TABLE IF NOT EXISTS `recipients` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `group_id` int(11) unsigned NOT NULL default '0',
  `first_name` varchar(50) NOT NULL default '',
  `last_name` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `signup_complete` tinyint(4) NOT NULL default '0',
  `is_deleted` tinyint(4) NOT NULL default '0',
  `active` tinyint(4) NOT NULL default '1',
  `delete_reason` tinyint(4) NOT NULL default '0',
  `soft_bounce_count` tinyint(4) NOT NULL default '0',
  `score` tinyint(4) NOT NULL default '3',
  `import_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`,`group_id`,`email`),
  KEY `user_id_2` (`user_id`,`email`),
  KEY `user_id_3` (`user_id`,`is_deleted`),
  KEY `user_id_4` (`user_id`,`signup_complete`,`is_deleted`),
  KEY `id` (`id`,`user_id`,`signup_complete`,`is_deleted`),
  KEY `user_id_5` (`user_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id_6` (`user_id`,`group_id`),
  KEY `group_id_2` (`group_id`,`is_deleted`),
  KEY `user_id_7` (`user_id`,`group_id`,`is_deleted`),
  KEY `group_id_3` (`group_id`,`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6193830 ;

--
-- Triggers `recipients`
--
DROP TRIGGER IF EXISTS `double_optin`;
DELIMITER //
CREATE TRIGGER `double_optin` AFTER INSERT ON `recipients`
 FOR EACH ROW BEGIN
IF NEW.signup_complete= 0 THEN         INSERT INTO recipients_new_signed SET recipient_id=NEW.id, user_id=NEW.user_id;        END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_alt_contact`
--

CREATE TABLE IF NOT EXISTS `recipients_alt_contact` (
  `recipient_id` int(11) NOT NULL,
  `contact_type` int(11) NOT NULL,
  `contact_info` varchar(250) NOT NULL,
  `description` varchar(250) default NULL,
  `opt_in` tinyint(4) default '-1',
  KEY `recipient_id` (`recipient_id`),
  KEY `recipient_id_2` (`recipient_id`,`contact_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Triggers `recipients_alt_contact`
--
DROP TRIGGER IF EXISTS `trigger_sms_double_optin`;
DELIMITER //
CREATE TRIGGER `trigger_sms_double_optin` AFTER INSERT ON `recipients_alt_contact`
 FOR EACH ROW BEGIN 
    IF NEW.contact_type = '4' AND NEW.opt_in = '0'
    THEN 
       INSERT INTO sms_new_signups SET recipient_id = NEW.recipient_id, contact_info = NEW.contact_info;
    END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_alt_contact_type`
--

CREATE TABLE IF NOT EXISTS `recipients_alt_contact_type` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_backup`
--

CREATE TABLE IF NOT EXISTS `recipients_backup` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `group_id` int(11) unsigned NOT NULL default '1',
  `first_name` varchar(50) NOT NULL default '',
  `last_name` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `signup_complete` tinyint(4) NOT NULL default '0',
  `is_deleted` tinyint(4) NOT NULL default '0',
  `active` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28398 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_id_hashes_temp`
--

CREATE TABLE IF NOT EXISTS `recipients_id_hashes_temp` (
  `hash` varchar(8) NOT NULL,
  `recipient_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`hash`),
  KEY `recipient_id` (`recipient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_imports`
--

CREATE TABLE IF NOT EXISTS `recipients_imports` (
  `import_id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(255) NOT NULL,
  `import_date` datetime NOT NULL,
  `num_imported` int(11) NOT NULL default '0',
  PRIMARY KEY  (`import_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_innodb`
--

CREATE TABLE IF NOT EXISTS `recipients_innodb` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `group_id` int(11) unsigned NOT NULL default '0',
  `first_name` varchar(50) NOT NULL default '',
  `last_name` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `signup_complete` tinyint(4) NOT NULL default '0',
  `is_deleted` tinyint(4) NOT NULL default '0',
  `active` tinyint(4) NOT NULL default '1',
  `delete_reason` tinyint(4) NOT NULL default '0',
  `soft_bounce_count` tinyint(4) NOT NULL default '0',
  `score` tinyint(4) NOT NULL default '3',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`,`group_id`,`email`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4759257 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_lead_notified`
--

CREATE TABLE IF NOT EXISTS `recipients_lead_notified` (
  `user_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`user_id`,`recipient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_new_signed`
--

CREATE TABLE IF NOT EXISTS `recipients_new_signed` (
  `recipient_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `confirm_request_sent` tinyint(1) NOT NULL default '0',
  `sent_time` datetime default NULL,
  PRIMARY KEY  (`recipient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_notes`
--

CREATE TABLE IF NOT EXISTS `recipients_notes` (
  `recipients_notes_id` int(10) unsigned NOT NULL auto_increment,
  `recipient_id` int(10) unsigned NOT NULL,
  `created_by_user_id` int(10) unsigned NOT NULL,
  `is_deleted` tinyint(4) NOT NULL default '0',
  `date_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`recipients_notes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12979 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_notes_revisions`
--

CREATE TABLE IF NOT EXISTS `recipients_notes_revisions` (
  `revision_id` int(10) unsigned NOT NULL auto_increment,
  `recipients_notes_id` int(10) unsigned NOT NULL,
  `revised_by_user_id` int(10) unsigned NOT NULL,
  `note_text` text NOT NULL,
  `date_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`revision_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12999 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_open`
--

CREATE TABLE IF NOT EXISTS `recipients_open` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) NOT NULL default '0',
  `email_id` int(11) NOT NULL default '0',
  `click_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `click_count` int(11) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `email_id` (`email_id`),
  KEY `recipient_id_2` (`recipient_id`,`email_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4016949 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_optin`
--

CREATE TABLE IF NOT EXISTS `recipients_optin` (
  `recip_optin_id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) unsigned NOT NULL default '0',
  `optin_value_id` int(11) unsigned NOT NULL default '0',
  `int_value` int(11) unsigned NOT NULL default '0',
  `string_value` varchar(255) NOT NULL default '',
  `date_value` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`recip_optin_id`),
  KEY `optin_value_id` (`optin_value_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `optin_value_id_2` (`optin_value_id`,`int_value`),
  KEY `optin_value_id_3` (`optin_value_id`,`date_value`),
  KEY `recipient_id_2` (`recipient_id`,`optin_value_id`,`int_value`),
  KEY `recipient_id_3` (`recipient_id`,`optin_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64386092 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_optin_backup`
--

CREATE TABLE IF NOT EXISTS `recipients_optin_backup` (
  `recip_optin_id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) unsigned NOT NULL default '0',
  `optin_value_id` int(11) unsigned NOT NULL default '0',
  `int_value` int(11) unsigned NOT NULL default '0',
  `string_value` varchar(255) NOT NULL default '',
  `date_value` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`recip_optin_id`),
  KEY `optin_value_id` (`optin_value_id`),
  KEY `recipient_id` (`recipient_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29914 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_optin_backup_2013227`
--

CREATE TABLE IF NOT EXISTS `recipients_optin_backup_2013227` (
  `recip_optin_id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) unsigned NOT NULL default '0',
  `optin_value_id` int(11) unsigned NOT NULL default '0',
  `int_value` int(11) unsigned NOT NULL default '0',
  `string_value` varchar(255) NOT NULL default '',
  `date_value` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`recip_optin_id`),
  KEY `optin_value_id` (`optin_value_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `optin_value_id_2` (`optin_value_id`,`int_value`),
  KEY `optin_value_id_3` (`optin_value_id`,`date_value`),
  KEY `recipient_id_2` (`recipient_id`,`optin_value_id`,`int_value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37449160 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_optin_innodb`
--

CREATE TABLE IF NOT EXISTS `recipients_optin_innodb` (
  `recip_optin_id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) unsigned NOT NULL default '0',
  `optin_value_id` int(11) unsigned NOT NULL default '0',
  `int_value` int(11) unsigned NOT NULL default '0',
  `string_value` varchar(1000) NOT NULL,
  `date_value` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`recip_optin_id`),
  KEY `optin_value_id` (`optin_value_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `recipient_id_2` (`recipient_id`,`optin_value_id`),
  KEY `optin_value_id_2` (`optin_value_id`,`int_value`),
  KEY `optin_value_id_3` (`optin_value_id`,`date_value`),
  KEY `optin_value_id_4` (`optin_value_id`),
  KEY `recipient_id_3` (`recipient_id`,`optin_value_id`,`int_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37448583 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_optin_lonewold`
--

CREATE TABLE IF NOT EXISTS `recipients_optin_lonewold` (
  `recip_optin_id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) unsigned NOT NULL default '0',
  `optin_value_id` int(11) unsigned NOT NULL default '0',
  `int_value` int(11) unsigned NOT NULL default '0',
  `string_value` varchar(255) NOT NULL default '',
  `date_value` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`recip_optin_id`),
  KEY `optin_value_id` (`optin_value_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `optin_value_id_2` (`optin_value_id`,`int_value`),
  KEY `optin_value_id_3` (`optin_value_id`,`date_value`),
  KEY `recipient_id_2` (`recipient_id`,`optin_value_id`,`int_value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57900844 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_optin_lonewold_backup`
--

CREATE TABLE IF NOT EXISTS `recipients_optin_lonewold_backup` (
  `recip_optin_id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) unsigned NOT NULL default '0',
  `optin_value_id` int(11) unsigned NOT NULL default '0',
  `int_value` int(11) unsigned NOT NULL default '0',
  `string_value` varchar(255) NOT NULL default '',
  `date_value` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`recip_optin_id`),
  KEY `optin_value_id` (`optin_value_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `optin_value_id_2` (`optin_value_id`,`int_value`),
  KEY `optin_value_id_3` (`optin_value_id`,`date_value`),
  KEY `recipient_id_2` (`recipient_id`,`optin_value_id`,`int_value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57900844 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_optin_public`
--

CREATE TABLE IF NOT EXISTS `recipients_optin_public` (
  `recipients_optin_public_id` int(10) unsigned NOT NULL auto_increment,
  `survey_id` int(11) NOT NULL,
  `recip_optin_id` int(10) unsigned NOT NULL,
  `hidden` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`recipients_optin_public_id`),
  UNIQUE KEY `survey_id` (`survey_id`,`recip_optin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_score_deferred`
--

CREATE TABLE IF NOT EXISTS `recipients_score_deferred` (
  `rsd_id` int(11) NOT NULL auto_increment,
  `recipient_id` int(10) unsigned NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `score_adjust` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`rsd_id`),
  KEY `processed` (`processed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_sent`
--

CREATE TABLE IF NOT EXISTS `recipients_sent` (
  `recipient_id` int(11) unsigned NOT NULL default '0',
  `email_id` int(11) unsigned NOT NULL default '0',
  `send_date` datetime NOT NULL default '0000-00-00 00:00:00',
  KEY `email_id` (`email_id`),
  KEY `recipient_id` (`recipient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_signup_tracking`
--

CREATE TABLE IF NOT EXISTS `recipients_signup_tracking` (
  `recipient_id` int(11) unsigned NOT NULL,
  `ip` char(16) NOT NULL,
  `referer` varchar(200) NOT NULL,
  `signup_date` datetime NOT NULL,
  KEY `recipient_id` (`recipient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_temp`
--

CREATE TABLE IF NOT EXISTS `recipients_temp` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `group_id` int(11) unsigned NOT NULL default '1',
  `first_name` varchar(50) NOT NULL default '',
  `last_name` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `signup_complete` tinyint(4) NOT NULL default '0',
  `is_deleted` tinyint(4) NOT NULL default '0',
  `active` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13927 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_to_import_id`
--

CREATE TABLE IF NOT EXISTS `recipients_to_import_id` (
  `recipient_id` int(10) unsigned NOT NULL,
  `import_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`recipient_id`,`import_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_track`
--

CREATE TABLE IF NOT EXISTS `recipients_track` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) NOT NULL default '0',
  `email_id` int(11) NOT NULL default '0',
  `email_link_id` int(11) NOT NULL default '0',
  `click_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `click_count` int(11) NOT NULL default '0',
  `ip_address` varchar(50) NOT NULL default '',
  `last_click_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `actions_processed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `recipient_id` (`recipient_id`,`email_id`,`email_link_id`),
  KEY `email_id` (`email_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=395454 ;

-- --------------------------------------------------------

--
-- Table structure for table `recipients_track_innodb`
--

CREATE TABLE IF NOT EXISTS `recipients_track_innodb` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `recipient_id` int(11) NOT NULL default '0',
  `email_id` int(11) NOT NULL default '0',
  `email_link_id` int(11) NOT NULL default '0',
  `click_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `click_count` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `recipient_id` (`recipient_id`,`email_id`,`email_link_id`),
  KEY `email_id` (`email_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=392961 ;

-- --------------------------------------------------------

--
-- Table structure for table `referral_codes`
--

CREATE TABLE IF NOT EXISTS `referral_codes` (
  `referral_code_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `referral_code` varchar(10) NOT NULL,
  `reseller` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`referral_code_id`),
  UNIQUE KEY `user_id` (`user_id`,`referral_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=443 ;

-- --------------------------------------------------------

--
-- Table structure for table `referral_codes_activity`
--

CREATE TABLE IF NOT EXISTS `referral_codes_activity` (
  `referral_code_activity_id` int(10) unsigned NOT NULL auto_increment,
  `referral_code_id` int(10) unsigned NOT NULL,
  `tracking_code_id` varchar(200) NOT NULL,
  `datetime_used` datetime NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `checkout_complete` tinyint(4) NOT NULL default '0',
  `checkout_complete_userid` int(11) default NULL,
  `credit_value` decimal(10,2) default NULL,
  `checkout_complete_recipient_id` int(11) default NULL,
  PRIMARY KEY  (`referral_code_activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_email_announcement`
--

CREATE TABLE IF NOT EXISTS `reminder_email_announcement` (
  `announcement_id` int(11) NOT NULL auto_increment,
  `announcement` text NOT NULL,
  `title` varchar(250) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `country` varchar(30) NOT NULL,
  `affiliation_id` int(11) NOT NULL,
  PRIMARY KEY  (`announcement_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_content`
--

CREATE TABLE IF NOT EXISTS `reseller_content` (
  `reseller_id` int(11) NOT NULL,
  `page_name` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`reseller_id`),
  KEY `page_name` (`page_name`),
  KEY `reseller_id` (`reseller_id`,`page_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_products`
--

CREATE TABLE IF NOT EXISTS `reseller_products` (
  `reseller_products_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `pricing_levels_id` int(11) NOT NULL,
  PRIMARY KEY  (`reseller_products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

CREATE TABLE IF NOT EXISTS `reviewer` (
  `reviewer_id` int(11) unsigned NOT NULL auto_increment,
  `reviewer_name` varchar(200) NOT NULL,
  PRIMARY KEY  (`reviewer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_customer_rep`
--

CREATE TABLE IF NOT EXISTS `sales_customer_rep` (
  `sales_customer_rep_id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(40) NOT NULL,
  PRIMARY KEY  (`sales_customer_rep_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_pc`
--

CREATE TABLE IF NOT EXISTS `sales_pc` (
  `sales_pc_id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY  (`sales_pc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_people`
--

CREATE TABLE IF NOT EXISTS `sales_people` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(250) NOT NULL default '',
  `email` varchar(250) NOT NULL default '',
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE IF NOT EXISTS `searches` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `json` text NOT NULL,
  `querystring` text NOT NULL,
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=484 ;

-- --------------------------------------------------------

--
-- Table structure for table `searches_main`
--

CREATE TABLE IF NOT EXISTS `searches_main` (
  `searches_main_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `search_name` varchar(255) NOT NULL,
  `search_params` text NOT NULL,
  `recipient_count` int(11) NOT NULL,
  `recipient_cache_time` datetime NOT NULL,
  `search_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `search_modified` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `temp` tinyint(1) NOT NULL default '1',
  `show_is_deleted` tinyint(4) NOT NULL default '0',
  `show_duplicates` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`searches_main_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3854 ;

-- --------------------------------------------------------

--
-- Table structure for table `searches_module`
--

CREATE TABLE IF NOT EXISTS `searches_module` (
  `searches_module_id` int(11) unsigned NOT NULL auto_increment,
  `searches_main_id` int(11) NOT NULL,
  `search_module` varchar(255) NOT NULL,
  `search_params` text NOT NULL,
  `item_num` int(11) NOT NULL,
  `next_operator` enum('AND','OR','NOT IN','-1') NOT NULL,
  `search_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`searches_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4850 ;

-- --------------------------------------------------------

--
-- Table structure for table `searches_user_column_settings`
--

CREATE TABLE IF NOT EXISTS `searches_user_column_settings` (
  `idcolumn_settings` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `extended_fields` text NOT NULL,
  `sort_order` varchar(10) NOT NULL,
  `sort_field` varchar(100) NOT NULL,
  PRIMARY KEY  (`idcolumn_settings`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `server_errors`
--

CREATE TABLE IF NOT EXISTS `server_errors` (
  `sid` int(10) unsigned NOT NULL auto_increment,
  `date` datetime NOT NULL,
  `date_only` date NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `type` varchar(30) NOT NULL,
  `message` varchar(500) NOT NULL,
  `top_file` varchar(255) NOT NULL,
  `line` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128120 ;

-- --------------------------------------------------------

--
-- Table structure for table `server_errors_db_call_stack`
--

CREATE TABLE IF NOT EXISTS `server_errors_db_call_stack` (
  `sedcs_id` int(10) unsigned NOT NULL auto_increment,
  `sid` int(10) unsigned NOT NULL,
  `order` int(11) NOT NULL,
  `query` varchar(500) NOT NULL,
  `timing` varchar(100) NOT NULL,
  PRIMARY KEY  (`sedcs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `server_errors_globals`
--

CREATE TABLE IF NOT EXISTS `server_errors_globals` (
  `seg_id` int(10) unsigned NOT NULL auto_increment,
  `sid` int(10) unsigned NOT NULL,
  `_get` text NOT NULL,
  `_post` text NOT NULL,
  `_server` text NOT NULL,
  `_session` text NOT NULL,
  PRIMARY KEY  (`seg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128120 ;

-- --------------------------------------------------------

--
-- Table structure for table `server_errors_stack_entries`
--

CREATE TABLE IF NOT EXISTS `server_errors_stack_entries` (
  `sese_id` int(10) unsigned NOT NULL auto_increment,
  `order` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` int(11) NOT NULL,
  `function` varchar(255) NOT NULL,
  PRIMARY KEY  (`sese_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=688087 ;

-- --------------------------------------------------------

--
-- Table structure for table `server_errors_stack_entries_args`
--

CREATE TABLE IF NOT EXISTS `server_errors_stack_entries_args` (
  `sesea_id` int(10) unsigned NOT NULL auto_increment,
  `sese_id` int(10) unsigned NOT NULL,
  `key` varchar(100) NOT NULL,
  `val` text NOT NULL,
  PRIMARY KEY  (`sesea_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=871351 ;

-- --------------------------------------------------------

--
-- Table structure for table `service_status`
--

CREATE TABLE IF NOT EXISTS `service_status` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `service` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  `last_checked` datetime NOT NULL,
  `last_service_unavailable` datetime NOT NULL,
  `endpoint_url` varchar(255) NOT NULL,
  `endpoint_port` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `sfcrm_config`
--

CREATE TABLE IF NOT EXISTS `sfcrm_config` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `access_token` text NOT NULL,
  `instance_url` varchar(28) NOT NULL,
  `sf_account_id` text NOT NULL COMMENT 'Salesforce database id of user''s crm',
  `is_active` tinyint(1) unsigned NOT NULL default '1',
  `last_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `sf_user_fullname` varchar(40) NOT NULL,
  `sf_user_image` varchar(55) NOT NULL,
  `sf_user_company` varchar(35) NOT NULL,
  `sf_user_id` varchar(30) NOT NULL,
  `import_option` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `sfcrm_contact_map`
--

CREATE TABLE IF NOT EXISTS `sfcrm_contact_map` (
  `sfcrm_contact_map_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `recipient_id` int(11) unsigned NOT NULL,
  `sf_contact_id` text NOT NULL COMMENT 'contact id stored in salesforce contact database table',
  PRIMARY KEY  (`sfcrm_contact_map_id`),
  KEY `user_id` (`user_id`,`recipient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sfcrm_opt_list`
--

CREATE TABLE IF NOT EXISTS `sfcrm_opt_list` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_name` varchar(25) NOT NULL,
  `description` varchar(35) NOT NULL,
  `type` varchar(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Table structure for table `sfcrm_opt_mapping`
--

CREATE TABLE IF NOT EXISTS `sfcrm_opt_mapping` (
  `user_id` int(11) unsigned NOT NULL,
  `sfcrm_opt_list_id` int(11) unsigned NOT NULL,
  `optin_value_id` int(11) unsigned NOT NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL default '0',
  KEY `user_id` (`user_id`,`optin_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sfcrm_task_map`
--

CREATE TABLE IF NOT EXISTS `sfcrm_task_map` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `email_id` int(11) unsigned NOT NULL,
  `task_id` varchar(24) NOT NULL COMMENT 'Task ID of salesforce database',
  `user_id` int(11) unsigned NOT NULL,
  `sfcrm_contact_map_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `email_id` (`email_id`,`user_id`),
  KEY `sfcrm_contact_map_id` (`sfcrm_contact_map_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE IF NOT EXISTS `sms` (
  `id` int(20) NOT NULL auto_increment,
  `recipients` text NOT NULL,
  `user_id` int(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `schedule_date` datetime NOT NULL,
  `sent` int(1) NOT NULL default '0',
  `is_deleted` int(1) NOT NULL default '0',
  `cancelled` int(1) NOT NULL default '0',
  `processing` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_balances`
--

CREATE TABLE IF NOT EXISTS `sms_balances` (
  `id` int(20) NOT NULL auto_increment,
  `user_id` int(20) NOT NULL,
  `balance` int(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_forward`
--

CREATE TABLE IF NOT EXISTS `sms_forward` (
  `sms_phone_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL default '0',
  `email_list_id` int(11) NOT NULL default '0',
  `destination_phone` char(20) NOT NULL,
  `active` tinyint(4) NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_keywords`
--

CREATE TABLE IF NOT EXISTS `sms_keywords` (
  `id` int(20) NOT NULL auto_increment,
  `user_id` int(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `date_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL default '1',
  `is_deleted` int(1) NOT NULL default '0' COMMENT 'for reporting',
  `reply` varchar(155) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_log`
--

CREATE TABLE IF NOT EXISTS `sms_log` (
  `id` int(20) NOT NULL auto_increment,
  `user_id` int(20) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `recipient_id` int(20) NOT NULL,
  `recipient_phone` varchar(20) NOT NULL,
  `message_body` text NOT NULL,
  `keyword_id` int(15) default NULL,
  `in_out` enum('in','out') NOT NULL,
  `time_processed` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=338 ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_new_signups`
--

CREATE TABLE IF NOT EXISTS `sms_new_signups` (
  `id` int(15) NOT NULL auto_increment,
  `recipient_id` int(15) NOT NULL,
  `contact_info` varchar(25) NOT NULL,
  `request_sent` int(1) NOT NULL default '0',
  `request_time` datetime default NULL,
  `processing` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34979 ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_optins`
--

CREATE TABLE IF NOT EXISTS `sms_optins` (
  `id` int(20) NOT NULL auto_increment,
  `keyword_id` int(15) NOT NULL,
  `optin_value_id` int(20) NOT NULL,
  `active` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=370 ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_phones`
--

CREATE TABLE IF NOT EXISTS `sms_phones` (
  `id` int(20) NOT NULL auto_increment,
  `user_id` int(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `sid` varchar(50) NOT NULL,
  `active` int(1) NOT NULL default '1',
  `is_deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_insights_values`
--

CREATE TABLE IF NOT EXISTS `sm_insights_values` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `emerge_id` int(10) unsigned NOT NULL,
  `network` varchar(255) NOT NULL,
  `sm_id` varchar(255) NOT NULL,
  `metric_name` varchar(255) NOT NULL,
  `metric_value` text NOT NULL,
  `metric_datetime` datetime NOT NULL,
  `post_id` int(11) unsigned NOT NULL default '0' COMMENT 'This metric is specific to a certain post event. (optional)',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `emerge_id` (`emerge_id`,`sm_id`,`metric_name`,`metric_datetime`),
  KEY `post_id` (`post_id`),
  KEY `sm_id` (`sm_id`,`metric_datetime`),
  KEY `emerge_id_2` (`emerge_id`,`sm_id`,`metric_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5616887 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_items_insights_values`
--

CREATE TABLE IF NOT EXISTS `sm_items_insights_values` (
  `sm_items_id` int(11) NOT NULL auto_increment,
  `emerge_id` int(10) unsigned NOT NULL,
  `network` varchar(255) NOT NULL,
  `sm_id` varchar(255) NOT NULL,
  `metric_name` varchar(255) NOT NULL,
  `metric_value` text NOT NULL,
  `metric_datetime` datetime NOT NULL,
  `smu_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`sm_items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_metrics`
--

CREATE TABLE IF NOT EXISTS `sm_metrics` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` int(11) NOT NULL COMMENT 'Holds the default graph type for this metric',
  `network` varchar(50) NOT NULL,
  `metric` varchar(255) NOT NULL,
  `nice_name` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `scale` varchar(15) NOT NULL COMMENT 'This is the minimum granularity the metric can get',
  PRIMARY KEY  (`id`),
  KEY `network` (`network`,`metric`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_metrics_allowed_charts`
--

CREATE TABLE IF NOT EXISTS `sm_metrics_allowed_charts` (
  `metric_id` int(11) NOT NULL,
  `chart_type_id` int(11) NOT NULL,
  PRIMARY KEY  (`metric_id`,`chart_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sm_reports`
--

CREATE TABLE IF NOT EXISTS `sm_reports` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `emergeId` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  `emerge_cat` varchar(255) NOT NULL COMMENT 'Internal category for setting special reports, like an overall report type',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1032 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_reports_chart_types`
--

CREATE TABLE IF NOT EXISTS `sm_reports_chart_types` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `constant_value` int(5) unsigned NOT NULL,
  `constant_name` varchar(40) NOT NULL,
  `nice_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `constant_value` (`constant_value`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_reports_summary`
--

CREATE TABLE IF NOT EXISTS `sm_reports_summary` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `summary_groups_id` int(11) unsigned NOT NULL,
  `widgets_config_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `summary_groups_id` (`summary_groups_id`,`widgets_config_id`),
  KEY `widget_id` (`summary_groups_id`),
  KEY `widgets_config_id` (`widgets_config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=464 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_reports_summary_groups`
--

CREATE TABLE IF NOT EXISTS `sm_reports_summary_groups` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `widget_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `widget_id` (`widget_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=387 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_reports_widgets`
--

CREATE TABLE IF NOT EXISTS `sm_reports_widgets` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `report_id` int(10) unsigned NOT NULL,
  `order` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `scale` varchar(32) default NULL,
  `opts` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=315 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_reports_widgets_config`
--

CREATE TABLE IF NOT EXISTS `sm_reports_widgets_config` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `widget_id` int(10) unsigned NOT NULL,
  `foreign_id` varchar(255) NOT NULL,
  `metric_id` int(11) unsigned NOT NULL,
  `axes_x_opts` text NOT NULL,
  `axes_y_opts` text NOT NULL,
  `series_opts` text NOT NULL,
  `group` int(11) default NULL,
  `chart_type` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3637 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_reports_widgets_types`
--

CREATE TABLE IF NOT EXISTS `sm_reports_widgets_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `numAcross` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `sm_users_conn_errors`
--

CREATE TABLE IF NOT EXISTS `sm_users_conn_errors` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `users_sm_links_id` int(10) unsigned NOT NULL,
  `emerge_id` int(11) NOT NULL,
  `network` varchar(255) NOT NULL,
  `sm_id` varchar(255) NOT NULL,
  `error_type` varchar(255) NOT NULL,
  `error_msg` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=861 ;

-- --------------------------------------------------------

--
-- Table structure for table `snippets`
--

CREATE TABLE IF NOT EXISTS `snippets` (
  `snippet_id` int(10) unsigned NOT NULL auto_increment,
  `snippet_name` varchar(255) NOT NULL,
  `snippet_text` text NOT NULL,
  `facebook_text` text NOT NULL,
  `twitter_text` text NOT NULL,
  `linkedin_text` text NOT NULL,
  `snippet_image` varchar(255) NOT NULL,
  `snippet_url` varchar(255) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  `from_date` datetime default NULL,
  `to_date` datetime default NULL,
  PRIMARY KEY  (`snippet_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

-- --------------------------------------------------------

--
-- Table structure for table `snippets_cats`
--

CREATE TABLE IF NOT EXISTS `snippets_cats` (
  `category_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `snippets_countries`
--

CREATE TABLE IF NOT EXISTS `snippets_countries` (
  `snippets_countries_id` int(11) NOT NULL auto_increment,
  `country_code` varchar(5) NOT NULL,
  PRIMARY KEY  (`snippets_countries_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `snippets_to_countries`
--

CREATE TABLE IF NOT EXISTS `snippets_to_countries` (
  `str_id` int(11) NOT NULL auto_increment,
  `snippet_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY  (`str_id`),
  UNIQUE KEY `snippet_id` (`snippet_id`,`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `social_media_actions`
--

CREATE TABLE IF NOT EXISTS `social_media_actions` (
  `social_media_action_id` int(10) unsigned NOT NULL auto_increment,
  `social_media_update_id` int(10) unsigned NOT NULL,
  `users_social_media_links_id` int(11) default NULL,
  `action` varchar(32) NOT NULL,
  `time_to_process` datetime NOT NULL,
  `processed` tinyint(4) NOT NULL default '0',
  `time_processed` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`social_media_action_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `social_media_config`
--

CREATE TABLE IF NOT EXISTS `social_media_config` (
  `social_media_config_id` int(11) unsigned NOT NULL auto_increment,
  `social_media_type` varchar(50) NOT NULL,
  `config_name` varchar(150) default NULL,
  `config_content` text NOT NULL,
  PRIMARY KEY  (`social_media_config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `social_media_contacts`
--

CREATE TABLE IF NOT EXISTS `social_media_contacts` (
  `user_sm_links_id` int(20) unsigned NOT NULL default '0',
  `last_updated` date NOT NULL,
  `count` int(20) unsigned NOT NULL default '0',
  `user_id` int(11) unsigned NOT NULL,
  KEY `user_social_media_id` (`user_sm_links_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_media_notification_emails`
--

CREATE TABLE IF NOT EXISTS `social_media_notification_emails` (
  `social_media_notification_emails_id` int(10) unsigned NOT NULL auto_increment,
  `social_media_links_id` int(10) unsigned NOT NULL,
  `email_type` enum('auth') NOT NULL,
  `expires` datetime default NULL,
  `is_sent` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`social_media_notification_emails_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `social_media_updates`
--

CREATE TABLE IF NOT EXISTS `social_media_updates` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `users_sm_links_id` int(11) unsigned NOT NULL default '0',
  `message` text,
  `link_signature` varchar(255) character set latin1 default NULL,
  `send_date` datetime NOT NULL,
  `sent` smallint(1) unsigned NOT NULL default '0',
  `post_id` varchar(255) character set latin1 NOT NULL,
  `user_id` int(30) unsigned NOT NULL,
  `link_description` varchar(255) character set latin1 default NULL,
  `image` varchar(255) character set latin1 default NULL,
  `image_is_fb_big` tinyint(4) NOT NULL default '1',
  `image_fb_album_id` varchar(255) default NULL,
  `update_link` varchar(255) character set latin1 NOT NULL,
  `sm_user_id` varchar(50) character set latin1 default NULL,
  `is_deleted` smallint(1) unsigned NOT NULL,
  `is_system_deleted` tinyint(4) NOT NULL default '0',
  `error_code` int(11) default NULL,
  `email_id` int(11) unsigned NOT NULL default '0' COMMENT 'set if update sent with email',
  `article_id` int(11) unsigned default NULL,
  `process_time` varchar(255) character set latin1 NOT NULL,
  `retry_after` time default NULL,
  `acp_id` int(11) unsigned default NULL,
  `tags` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `usa_ymw` varchar(20) NOT NULL COMMENT 'year month week concatenation on content insertions',
  `campaign_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`,`users_sm_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `social_media_updates_06242012`
--

CREATE TABLE IF NOT EXISTS `social_media_updates_06242012` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `users_sm_links_id` int(11) unsigned NOT NULL default '0',
  `message` text,
  `link_signature` varchar(255) default NULL,
  `send_date` datetime NOT NULL,
  `sent` smallint(1) unsigned NOT NULL default '0',
  `post_id` varchar(255) NOT NULL,
  `user_id` int(30) unsigned NOT NULL,
  `link_description` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `update_link` varchar(255) NOT NULL,
  `sm_user_id` varchar(50) default NULL,
  `is_deleted` smallint(1) unsigned NOT NULL,
  `error_code` int(11) default NULL,
  `email_id` int(11) unsigned NOT NULL default '0' COMMENT 'set if update sent with email',
  `article_id` int(11) unsigned NOT NULL,
  `process_time` varchar(255) NOT NULL,
  `retry_after` time default NULL,
  `acp_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`,`users_sm_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=828 ;

-- --------------------------------------------------------

--
-- Table structure for table `sub_approvals`
--

CREATE TABLE IF NOT EXISTS `sub_approvals` (
  `user_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_permissions`
--

CREATE TABLE IF NOT EXISTS `sub_permissions` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `sub_user_id` int(11) unsigned NOT NULL,
  `tab_id` int(11) unsigned NOT NULL,
  `function_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=176 ;

-- --------------------------------------------------------

--
-- Table structure for table `sub_users`
--

CREATE TABLE IF NOT EXISTS `sub_users` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE IF NOT EXISTS `surveys` (
  `survey_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `display_text` varchar(500) default NULL,
  `num_pages` int(2) default NULL,
  `date_created` datetime NOT NULL,
  `date_starts` datetime default NULL,
  `date_expiration` datetime default NULL,
  `active` tinyint(1) default '0',
  `template_default_id` int(11) default NULL,
  `thank_msg` varchar(500) default NULL,
  `close_msg` varchar(500) default NULL,
  `notes` varchar(500) default NULL,
  `thank_link` varchar(200) default NULL,
  `bg_color` varchar(10) default NULL,
  `header_img` varchar(100) default NULL,
  `header_link` varchar(100) default NULL,
  `top_text` varchar(500) default NULL,
  `footer_html` varchar(500) default NULL,
  PRIMARY KEY  (`survey_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Table structure for table `surveys_completed`
--

CREATE TABLE IF NOT EXISTS `surveys_completed` (
  `survey_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `date_completed` datetime NOT NULL,
  KEY `survey_id` (`survey_id`),
  KEY `survey_id_2` (`survey_id`,`recipient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surveys_simple`
--

CREATE TABLE IF NOT EXISTS `surveys_simple` (
  `survey_id` int(11) NOT NULL COMMENT 'This is the same id as optn_groups.id',
  `user_id` int(11) NOT NULL,
  `email_list_id` int(11) default NULL,
  `survey_name` varchar(50) default NULL,
  `intro_text` varchar(500) default NULL,
  `show_intro_text` tinyint(1) NOT NULL default '1',
  `save_btn_text` varchar(50) default NULL,
  `link_forward_sub` varchar(250) default NULL,
  `link_forward_unsub` varchar(250) default NULL,
  `show_subscribe_radio_button` tinyint(1) NOT NULL default '1',
  `last_updated` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `active` tinyint(4) NOT NULL default '1',
  `report_deleted` tinyint(4) NOT NULL default '0',
  `send_email` tinyint(4) NOT NULL default '0',
  `requires_captcha` tinyint(4) NOT NULL default '0',
  `fb_share` tinyint(4) NOT NULL default '0',
  `fb_share_url` varchar(255) NOT NULL,
  PRIMARY KEY  (`survey_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surveys_simple_fields`
--

CREATE TABLE IF NOT EXISTS `surveys_simple_fields` (
  `form_field_id` int(11) NOT NULL auto_increment,
  `validation_rules` varchar(127) NOT NULL,
  `user_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `optin_value_id` int(11) NOT NULL,
  `display_text` varchar(250) default NULL,
  `field_name` varchar(100) default NULL,
  `answer_type` varchar(50) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY  (`form_field_id`),
  KEY `survey_id` (`survey_id`),
  KEY `optin_value_id` (`optin_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=313 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_answer_data_types`
--

CREATE TABLE IF NOT EXISTS `survey_answer_data_types` (
  `survey_answer_data_type_id` int(11) NOT NULL auto_increment,
  `data_type` varchar(50) NOT NULL,
  PRIMARY KEY  (`survey_answer_data_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE IF NOT EXISTS `survey_questions` (
  `survey_question_id` int(11) NOT NULL auto_increment,
  `survey_id` int(11) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  `exp_text` varchar(500) default NULL,
  `is_required` tinyint(1) NOT NULL default '0',
  `sort_order` int(11) default NULL,
  `page_number` int(2) default NULL,
  PRIMARY KEY  (`survey_question_id`),
  KEY `survey_id` (`survey_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_question_answers`
--

CREATE TABLE IF NOT EXISTS `survey_question_answers` (
  `survey_question_answer_id` int(11) NOT NULL auto_increment,
  `survey_question_id` int(11) NOT NULL,
  `answer_value` varchar(50) NOT NULL,
  `answer_display_text` varchar(500) NOT NULL,
  `column_id` int(11) default NULL,
  `row_id` int(11) default NULL,
  `survey_answer_data_type_id` int(11) default NULL,
  PRIMARY KEY  (`survey_question_answer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1424 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_question_columns`
--

CREATE TABLE IF NOT EXISTS `survey_question_columns` (
  `survey_question_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL auto_increment,
  `column_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`column_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=301 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_question_rows`
--

CREATE TABLE IF NOT EXISTS `survey_question_rows` (
  `row_id` int(11) NOT NULL auto_increment,
  `survey_question_id` int(11) NOT NULL,
  `row_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`row_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=258 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_question_types`
--

CREATE TABLE IF NOT EXISTS `survey_question_types` (
  `survey_question_type_id` int(11) NOT NULL auto_increment,
  `survey_question_type_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`survey_question_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_responses`
--

CREATE TABLE IF NOT EXISTS `survey_responses` (
  `responce_id` int(11) NOT NULL auto_increment,
  `survey_submit_id` int(11) default NULL,
  `survey_id` int(11) NOT NULL,
  `survey_question_id` int(11) NOT NULL,
  `survey_question_answer_id` int(11) NOT NULL,
  `survey_question_answer_value` varchar(500) default NULL,
  `recipient_id` int(11) default NULL,
  PRIMARY KEY  (`responce_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_submits`
--

CREATE TABLE IF NOT EXISTS `survey_submits` (
  `survey_submit_id` int(11) NOT NULL auto_increment,
  `survey_id` int(11) NOT NULL,
  `recipient_id` int(11) default NULL,
  `date_submit` datetime NOT NULL,
  `is_complet` tinyint(1) default '0',
  PRIMARY KEY  (`survey_submit_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_templates`
--

CREATE TABLE IF NOT EXISTS `survey_templates` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `filename` varchar(100) NOT NULL default '',
  `icon` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE IF NOT EXISTS `template` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `filename` varchar(100) NOT NULL default '',
  `icon` varchar(100) NOT NULL default '',
  `thumbhtml` varchar(255) NOT NULL,
  `packages_affiliations_id` int(11) NOT NULL,
  `packages_themes_id` int(11) NOT NULL,
  `is_newsletter` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `packages_affiliations_id` (`packages_affiliations_id`),
  KEY `packages_themes_id` (`packages_themes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=916 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_branding`
--

CREATE TABLE IF NOT EXISTS `template_branding` (
  `template_defaults_id` int(11) unsigned NOT NULL,
  `facebook_img` varchar(100) NOT NULL,
  `twitter_img` varchar(100) NOT NULL,
  `linkedin_img` varchar(100) NOT NULL,
  `google_img` varchar(100) NOT NULL,
  `youtube_img` varchar(100) NOT NULL,
  `zip_file` varchar(100) NOT NULL,
  PRIMARY KEY  (`template_defaults_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `template_category`
--

CREATE TABLE IF NOT EXISTS `template_category` (
  `template_cat_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `template_cat_parent_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`template_cat_id`),
  KEY `template_cat_parent_id` (`template_cat_parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_category_parent`
--

CREATE TABLE IF NOT EXISTS `template_category_parent` (
  `template_cat_parent_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  PRIMARY KEY  (`template_cat_parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_content_layout`
--

CREATE TABLE IF NOT EXISTS `template_content_layout` (
  `template_content_layout_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`template_content_layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_defaults`
--

CREATE TABLE IF NOT EXISTS `template_defaults` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `template_id` int(11) unsigned NOT NULL default '0',
  `user_id` int(11) unsigned NOT NULL default '0',
  `name` varchar(150) NOT NULL default '',
  `custom_icon` varchar(150) NOT NULL default '',
  `campaign_id` int(11) NOT NULL default '0',
  `subject` varchar(255) NOT NULL,
  `email_thumb` varchar(150) NOT NULL,
  `reply_name` varchar(150) NOT NULL,
  `reply_email` varchar(150) NOT NULL,
  `last_modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `is_layout` tinyint(4) NOT NULL,
  `color_scheme_key` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `packages_themes_id` int(11) NOT NULL,
  `packages_affiliations_id` int(11) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `category` varchar(200) NOT NULL,
  `plain_text_content` text NOT NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL default '0',
  `plain_text_edited` tinyint(4) NOT NULL default '0',
  `premade` int(11) NOT NULL,
  `template_cat_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `template_id` (`template_id`),
  KEY `user_id` (`user_id`),
  KEY `packages_themes_id` (`packages_themes_id`),
  KEY `packages_affiliations_id` (`packages_affiliations_id`),
  KEY `template_cat_id` (`template_cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64541 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_defaults_content`
--

CREATE TABLE IF NOT EXISTS `template_defaults_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `template_default_id` int(11) unsigned NOT NULL default '0',
  `template_piece_id` int(11) unsigned default '0',
  `name` varchar(50) NOT NULL,
  `content` text character set utf8 NOT NULL,
  `article_id` int(11) default NULL,
  `is_deleted` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `template_default_id` (`template_default_id`),
  KEY `template_piece_id` (`template_piece_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=266933 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_defaults_content_layout`
--

CREATE TABLE IF NOT EXISTS `template_defaults_content_layout` (
  `tdcl_id` int(10) unsigned NOT NULL auto_increment,
  `template_id` int(11) NOT NULL,
  `template_defaults_id` int(11) NOT NULL,
  `template_layout_content_id` int(11) NOT NULL,
  `social_media` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`tdcl_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=453 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_defaults_links_actions`
--

CREATE TABLE IF NOT EXISTS `template_defaults_links_actions` (
  `tdla_id` int(10) unsigned NOT NULL auto_increment,
  `template_default_id` int(10) unsigned NOT NULL,
  `link` varchar(500) NOT NULL,
  `nice_name` varchar(255) NOT NULL default '',
  `send_email_immediately` tinyint(4) NOT NULL default '0',
  `send_email_summary` tinyint(4) NOT NULL default '0',
  `add_to_email_list_id` int(10) unsigned default NULL,
  `populate_date_field_id` int(10) unsigned default NULL,
  `remove_from_email_list_id` int(11) default NULL,
  PRIMARY KEY  (`tdla_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_footer`
--

CREATE TABLE IF NOT EXISTS `template_footer` (
  `template_footer_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `html` text NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`template_footer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_greeting`
--

CREATE TABLE IF NOT EXISTS `template_greeting` (
  `template_greeting_id` int(11) unsigned NOT NULL auto_increment,
  `template_default_id` int(11) unsigned NOT NULL,
  `found_string` varchar(150) NOT NULL,
  `not_found_string` varchar(150) NOT NULL,
  `first_name_required` tinyint(4) NOT NULL default '0',
  `last_name_required` tinyint(4) NOT NULL default '0',
  `email_required` tinyint(4) NOT NULL default '0',
  `for_subject_line` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`template_greeting_id`),
  KEY `email_id` (`template_default_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `template_pieces`
--

CREATE TABLE IF NOT EXISTS `template_pieces` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `template_id` int(11) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `width` int(11) unsigned NOT NULL default '0',
  `text_edit` tinyint(4) unsigned NOT NULL default '0',
  `image_edit` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `template_id` (`template_id`,`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30189 ;

-- --------------------------------------------------------

--
-- Table structure for table `temp_users`
--

CREATE TABLE IF NOT EXISTS `temp_users` (
  `id` int(20) NOT NULL auto_increment,
  `partner_id` int(11) NOT NULL default '0',
  `user_name` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `user_pwd` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `user_email` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `user_email_2` varchar(200) default NULL,
  `activation_code` varchar(150) NOT NULL default '',
  `user_activated` int(1) NOT NULL default '0',
  `unsubscribe_link` varchar(255) NOT NULL default '',
  `account_stylesheet` text NOT NULL,
  `default_template` text NOT NULL,
  `from_name` varchar(100) NOT NULL default '',
  `from_email` varchar(100) NOT NULL default '',
  `userlevel` tinyint(1) unsigned NOT NULL default '0',
  `zen_id` int(11) unsigned NOT NULL default '0',
  `reseller` tinyint(4) NOT NULL default '0',
  `reseller_parent` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2107 ;

-- --------------------------------------------------------

--
-- Table structure for table `temp_users_details`
--

CREATE TABLE IF NOT EXISTS `temp_users_details` (
  `user_id` int(11) unsigned NOT NULL default '0',
  `first_name` varchar(255) NOT NULL default '',
  `last_name` varchar(255) NOT NULL default '',
  `company` varchar(150) NOT NULL default '',
  `company_type` int(11) unsigned NOT NULL default '0',
  `non_profit_id` varchar(50) NOT NULL default '',
  `url` varchar(150) NOT NULL default '',
  `address` varchar(100) NOT NULL default '',
  `address2` varchar(100) NOT NULL default '',
  `city` varchar(60) NOT NULL default '',
  `state` char(2) NOT NULL default '',
  `zip` varchar(30) NOT NULL default '',
  `timezone` varchar(50) NOT NULL,
  `contact_phone` varchar(150) NOT NULL default '',
  `phone2` varchar(20) NOT NULL default '',
  `price_level` int(11) unsigned NOT NULL default '0',
  `discount_percent` int(11) unsigned NOT NULL default '0',
  `date_activated` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_expiration` datetime NOT NULL default '0000-00-00 00:00:00',
  `contract_length` int(4) NOT NULL default '1' COMMENT 'months',
  `data_purchased` int(7) NOT NULL COMMENT 'MBs',
  `sales_person` int(11) unsigned NOT NULL default '0',
  `auto_renew` tinyint(4) unsigned NOT NULL default '1',
  `renew_price_level` int(11) unsigned NOT NULL,
  `renew_data_purchased` int(7) NOT NULL,
  `account_closed` tinyint(4) unsigned NOT NULL default '0',
  `close_date` datetime NOT NULL,
  `users_billing_acct_id` int(11) NOT NULL default '0',
  `sales_pc` int(11) NOT NULL default '0',
  PRIMARY KEY  (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_users_social_media_links`
--

CREATE TABLE IF NOT EXISTS `temp_users_social_media_links` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `access_token` text NOT NULL,
  `update_link` varchar(255) NOT NULL,
  `public_link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `foreign_id` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `is_default_link` tinyint(4) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_blog` tinyint(4) NOT NULL,
  `package_type` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2128 ;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `testimonial_id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `photo` varchar(50) default NULL,
  `email` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `content` text NOT NULL,
  `user_id` int(11) default NULL,
  `instructor_id` int(11) default NULL,
  `trip_id` int(11) default NULL,
  PRIMARY KEY  (`testimonial_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

CREATE TABLE IF NOT EXISTS `timeline` (
  `id` int(15) NOT NULL auto_increment,
  `user_id` int(15) NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 - Dynamic, 2 - Static',
  `name` text NOT NULL,
  `description` text NOT NULL,
  `campaign_id` int(15) default NULL,
  `main_track_id` int(15) NOT NULL,
  `recipients_type` int(5) NOT NULL COMMENT '1 - Group, 2 - List, 3 - Search',
  `recipients_id` int(15) NOT NULL,
  `recipients_name` text NOT NULL,
  `static_start_date` date NOT NULL,
  `dynamic_start_date` date NOT NULL,
  `dynamic_end_date` date NOT NULL,
  `dynamic_date_type` int(5) NOT NULL COMMENT '1 - created, 2 - modified, 3 - optin value',
  `dynamic_date_id` int(15) NOT NULL,
  `minimum_message_delay` int(5) NOT NULL,
  `time_modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL default '1',
  `is_deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_node`
--

CREATE TABLE IF NOT EXISTS `timeline_node` (
  `id` int(15) NOT NULL auto_increment,
  `track_id` int(15) NOT NULL,
  `timeline_id` int(15) NOT NULL,
  `go_time` int(15) NOT NULL,
  `description` text NOT NULL,
  `is_deleted` int(1) NOT NULL default '0',
  `time_modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_node_action`
--

CREATE TABLE IF NOT EXISTS `timeline_node_action` (
  `id` int(15) NOT NULL auto_increment,
  `node_id` int(15) NOT NULL,
  `description` text NOT NULL,
  `action_type` int(5) NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_node_action_email`
--

CREATE TABLE IF NOT EXISTS `timeline_node_action_email` (
  `node_action_id` int(15) NOT NULL,
  `template_id` int(15) NOT NULL,
  `template_name` text NOT NULL,
  PRIMARY KEY  (`node_action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_node_action_sms`
--

CREATE TABLE IF NOT EXISTS `timeline_node_action_sms` (
  `node_action_id` int(15) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`node_action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_node_action_social`
--

CREATE TABLE IF NOT EXISTS `timeline_node_action_social` (
  `id` int(15) NOT NULL auto_increment,
  `node_action_id` int(15) NOT NULL,
  `sm_id` int(15) NOT NULL,
  `sm_type` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `link` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_node_decision`
--

CREATE TABLE IF NOT EXISTS `timeline_node_decision` (
  `id` int(15) NOT NULL auto_increment,
  `set_id` int(15) NOT NULL,
  `keyword_id` int(15) NOT NULL,
  `keyword_type` int(5) NOT NULL,
  `check_type` int(5) NOT NULL,
  `check_value` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_node_decision_set`
--

CREATE TABLE IF NOT EXISTS `timeline_node_decision_set` (
  `id` int(15) NOT NULL auto_increment,
  `node_id` int(15) NOT NULL,
  `next_track_id` int(15) NOT NULL,
  `is_default` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_recipient_progress`
--

CREATE TABLE IF NOT EXISTS `timeline_recipient_progress` (
  `id` int(15) NOT NULL auto_increment,
  `recip_id` int(15) NOT NULL,
  `node_id` int(15) NOT NULL,
  `time_completed` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_track`
--

CREATE TABLE IF NOT EXISTS `timeline_track` (
  `id` int(15) NOT NULL auto_increment,
  `timeline_id` int(15) NOT NULL default '-1',
  `description` text NOT NULL,
  `parent_node_id` int(15) NOT NULL default '-1',
  `main_node_id` int(15) NOT NULL,
  `is_deleted` int(1) NOT NULL default '0',
  `time_modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_track_recipients`
--

CREATE TABLE IF NOT EXISTS `timeline_track_recipients` (
  `id` int(15) NOT NULL auto_increment,
  `recip_id` int(15) NOT NULL,
  `timeline_id` int(15) NOT NULL,
  `track_id` int(15) NOT NULL,
  `time_moved` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_bdc_regions`
--

CREATE TABLE IF NOT EXISTS `tmp_bdc_regions` (
  `region` varchar(100) NOT NULL,
  `from` varchar(100) NOT NULL,
  PRIMARY KEY  (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_opens`
--

CREATE TABLE IF NOT EXISTS `tmp_opens` (
  `email_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE IF NOT EXISTS `tracking` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `campaign` varchar(50) NOT NULL,
  `page` varchar(100) NOT NULL default '',
  `recipient_id` int(11) NOT NULL default '0',
  `click_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ip_address` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`,`page`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1204 ;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `transactions_id` int(11) unsigned NOT NULL auto_increment,
  `transactions_time` datetime NOT NULL,
  `users_billing_acct_id` int(11) NOT NULL,
  `users_billing_name` varchar(120) NOT NULL,
  `total` float(10,2) NOT NULL default '0.00',
  `local_total` float(10,2) default NULL COMMENT 'stores total local to user''s selected currency',
  `local_currency_code` varchar(10) default NULL,
  `payment_method` varchar(30) NOT NULL,
  `payment_result` enum('success','failure','voided') NOT NULL,
  `payment_result_reason` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL default '1',
  `coupon` varchar(100) NOT NULL,
  PRIMARY KEY  (`transactions_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12333 ;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_products`
--

CREATE TABLE IF NOT EXISTS `transactions_products` (
  `transactions_products_id` int(11) unsigned NOT NULL auto_increment,
  `transactions_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_name` varchar(120) NOT NULL,
  `products_qty` int(4) NOT NULL,
  `products_price` float(10,2) NOT NULL,
  `products_price_local_total` float(10,2) default NULL COMMENT 'stores total local to user''s selected currency',
  `products_price_local_currency_code` varchar(10) default NULL COMMENT 'Currency code user used to perform this transaction in',
  `transaction_type` enum('onetime','setup','recurring') NOT NULL default 'recurring',
  PRIMARY KEY  (`transactions_products_id`),
  KEY `transaction_type` (`transaction_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13507 ;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_status`
--

CREATE TABLE IF NOT EXISTS `transactions_status` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) NOT NULL auto_increment,
  `partner_id` int(11) NOT NULL default '0',
  `user_name` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `user_pwd` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `user_email` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `user_email_2` varchar(200) default NULL,
  `activation_code` varchar(150) NOT NULL default '',
  `user_activated` int(1) NOT NULL default '0',
  `unsubscribe_link` varchar(255) NOT NULL default '',
  `account_stylesheet` text NOT NULL,
  `default_template` text NOT NULL,
  `from_name` varchar(100) NOT NULL default '',
  `from_email` varchar(100) NOT NULL default '',
  `userlevel` tinyint(1) unsigned NOT NULL default '0',
  `zen_id` int(11) unsigned NOT NULL default '0',
  `reseller` tinyint(4) NOT NULL default '0',
  `reseller_parent` int(11) NOT NULL default '0',
  `cc_emails` varchar(1000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3465 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_alerts`
--

CREATE TABLE IF NOT EXISTS `users_alerts` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `alert_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1223177 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_article_subscriptions`
--

CREATE TABLE IF NOT EXISTS `users_article_subscriptions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `user_id_2` (`user_id`),
  KEY `category_id_2` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6867 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_billing`
--

CREATE TABLE IF NOT EXISTS `users_billing` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `recipients` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23800 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_billing_acct`
--

CREATE TABLE IF NOT EXISTS `users_billing_acct` (
  `users_billing_acct_id` int(11) unsigned NOT NULL auto_increment,
  `billing_first_name` varchar(40) NOT NULL,
  `billing_last_name` varchar(40) NOT NULL,
  `billing_email` varchar(150) NOT NULL,
  `address` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pay_pref` enum('card','check') NOT NULL default 'card',
  `cc_num` blob,
  `cc_exp` blob,
  `check_name` varchar(100) default NULL,
  `check_aba` blob COMMENT 'routing number',
  `check_account` blob COMMENT 'account number',
  `check_holder_type` enum('business','personal') default NULL,
  `check_type` enum('checking','savings') default 'checking',
  `customer_profile_id` int(11) NOT NULL default '0',
  `customer_payment_profile_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`users_billing_acct_id`),
  KEY `user_billing_acct_id` (`users_billing_acct_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1867 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_billing_credit`
--

CREATE TABLE IF NOT EXISTS `users_billing_credit` (
  `users_billing_acct_id` int(11) NOT NULL,
  `current_credit` float(10,2) NOT NULL default '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_billing_credit_calc`
--

CREATE TABLE IF NOT EXISTS `users_billing_credit_calc` (
  `calc_id` int(11) unsigned NOT NULL auto_increment,
  `num_of_accounts` int(11) NOT NULL default '0',
  `discount_percentage` float(10,2) NOT NULL default '0.00',
  `discount_fixed` float(10,2) NOT NULL default '0.00',
  `discount_fixed_per_acct` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`calc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_billing_sms`
--

CREATE TABLE IF NOT EXISTS `users_billing_sms` (
  `user_id` int(11) unsigned NOT NULL,
  `sms_phones_id` int(11) unsigned NOT NULL,
  `price` float NOT NULL,
  `last_billed` datetime NOT NULL,
  `auto_renew` tinyint(4) NOT NULL,
  `closed` tinyint(4) NOT NULL,
  PRIMARY KEY  (`user_id`),
  KEY `sms_phones_id` (`sms_phones_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_cached_images`
--

CREATE TABLE IF NOT EXISTS `users_cached_images` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_campaigns`
--

CREATE TABLE IF NOT EXISTS `users_campaigns` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `pricing_campaign` int(4) NOT NULL,
  `list_size_charge` tinyint(4) NOT NULL,
  `setup_charge` tinyint(4) NOT NULL,
  `reminder1` int(4) unsigned NOT NULL default '0',
  `reminder2` int(4) unsigned NOT NULL default '0',
  `reminder3` int(4) unsigned NOT NULL default '0',
  `reminder4` int(4) unsigned NOT NULL default '0',
  `reminder5` int(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE IF NOT EXISTS `users_details` (
  `user_id` int(11) unsigned NOT NULL default '0',
  `first_name` varchar(255) NOT NULL default '',
  `last_name` varchar(255) NOT NULL default '',
  `company` varchar(150) NOT NULL default '',
  `company_type` int(11) unsigned NOT NULL default '0',
  `pronoun` enum('singular','plural') NOT NULL,
  `non_profit_id` varchar(50) NOT NULL default '',
  `url` varchar(150) NOT NULL default '',
  `address` varchar(100) NOT NULL default '',
  `address2` varchar(100) NOT NULL default '',
  `city` varchar(60) NOT NULL default '',
  `state` varchar(100) NOT NULL default '',
  `zip` varchar(30) NOT NULL default '',
  `country` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `contact_phone` varchar(150) NOT NULL default '',
  `phone2` varchar(20) NOT NULL default '',
  `price_level` int(11) unsigned NOT NULL default '0',
  `discount_percent` int(11) unsigned NOT NULL default '0',
  `date_activated` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_expiration` datetime NOT NULL default '0000-00-00 00:00:00',
  `contract_length` int(4) NOT NULL default '1' COMMENT 'months',
  `data_purchased` int(7) NOT NULL COMMENT 'MBs',
  `sales_person` int(11) unsigned NOT NULL default '0',
  `auto_renew` tinyint(4) unsigned NOT NULL default '1',
  `renew_price_level` int(11) unsigned NOT NULL,
  `renew_data_purchased` int(7) NOT NULL,
  `account_closed` tinyint(4) unsigned NOT NULL default '0',
  `close_date` datetime NOT NULL,
  `users_billing_acct_id` int(11) NOT NULL default '0',
  `sales_pc` int(11) NOT NULL default '0',
  `sales_customer_rep` int(11) NOT NULL default '0',
  `currency_code` varchar(5) NOT NULL,
  `test_account` tinyint(4) NOT NULL COMMENT 'Set to 1 to avoid reporting',
  `billing_type` enum('recurring','invoice','comp') NOT NULL default 'recurring',
  `notify_days_before` int(11) NOT NULL default '30',
  `company_industry` int(11) unsigned NOT NULL default '0',
  `template_footer_id` int(11) NOT NULL default '1',
  `status` tinyint(4) NOT NULL default '1',
  `lead_alert_frequency` enum('single','summary','never') NOT NULL default 'summary',
  `always_send_receipt` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_email_notifications`
--

CREATE TABLE IF NOT EXISTS `users_email_notifications` (
  `user_id` int(11) NOT NULL,
  `daily_subscribe` tinyint(1) NOT NULL,
  `daily_unsubscribe` tinyint(1) NOT NULL,
  `daily_bounce` tinyint(1) NOT NULL,
  `daily_delete` tinyint(1) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_email_reg_forms`
--

CREATE TABLE IF NOT EXISTS `users_email_reg_forms` (
  `form_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `email_list_id` int(11) default NULL,
  `form_name` varchar(50) default NULL,
  `intro_text` varchar(500) default NULL,
  `show_intro_text` tinyint(1) NOT NULL default '1',
  `save_btn_text` varchar(50) default NULL,
  `link_forward_sub` varchar(250) default NULL,
  `link_forward_unsub` varchar(250) default NULL,
  `show_subscribe_radio_button` tinyint(1) NOT NULL default '1',
  `last_updated` datetime default NULL,
  `to_email` varchar(100) NOT NULL,
  `send_adminmail` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`form_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_email_reg_form_fields`
--

CREATE TABLE IF NOT EXISTS `users_email_reg_form_fields` (
  `form_field_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `optin_value_id` int(11) NOT NULL,
  `display_text` varchar(250) default NULL,
  `field_name` varchar(100) default NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY  (`form_field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=669 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_footer_links`
--

CREATE TABLE IF NOT EXISTS `users_footer_links` (
  `icon_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `icon_type` enum('instagram','foursquare','myspace','digg','flickr','youtube','vimeo','googlebuzz','stumbleupon','bebo','delicious','wordpress','tumblr','scvngr','craiglist','trulia','zillow','activerain','blogger','picasa','googleplus','yelp','urbanspoon','vimeopro') NOT NULL,
  `icon_link` varchar(200) NOT NULL,
  PRIMARY KEY  (`icon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_homepage_banners`
--

CREATE TABLE IF NOT EXISTS `users_homepage_banners` (
  `banner_id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `img_loc` varchar(125) NOT NULL default '',
  `description` text NOT NULL,
  `link` varchar(255) default NULL,
  `date_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL default '1',
  `date_expire` datetime default NULL,
  PRIMARY KEY  (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_language`
--

CREATE TABLE IF NOT EXISTS `users_language` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `optout_disclaimer` text NOT NULL,
  `optin_intro` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_messages`
--

CREATE TABLE IF NOT EXISTS `users_messages` (
  `users_message_id` int(11) NOT NULL auto_increment,
  `title` varchar(127) default NULL,
  `message` text NOT NULL,
  `date_created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `date_expire` datetime default NULL,
  `user_id` int(11) default NULL,
  `msgtype` enum('info','warning','success','danger','infonoicon','warningnoicon','successnoicon','dangernoicon') NOT NULL default 'info',
  PRIMARY KEY  (`users_message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_messages_read`
--

CREATE TABLE IF NOT EXISTS `users_messages_read` (
  `users_message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `read_time` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`users_message_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Track which user has read whick message, so to avoid show it';

-- --------------------------------------------------------

--
-- Table structure for table `users_notes`
--

CREATE TABLE IF NOT EXISTS `users_notes` (
  `notes_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `date_added` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`notes_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_payment_info`
--

CREATE TABLE IF NOT EXISTS `users_payment_info` (
  `user_id` int(11) unsigned NOT NULL COMMENT 'This is the zen_id',
  `cc_blob` blob NOT NULL,
  `cc_exp` blob NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_payment_log`
--

CREATE TABLE IF NOT EXISTS `users_payment_log` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `log_time` datetime NOT NULL,
  `log_text` text NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `order_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=701 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_region_subscriptions`
--

CREATE TABLE IF NOT EXISTS `users_region_subscriptions` (
  `region_subscription_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY  (`region_subscription_id`),
  UNIQUE KEY `user_id` (`user_id`,`region_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_scheduled_articles`
--

CREATE TABLE IF NOT EXISTS `users_scheduled_articles` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) default NULL,
  `acp_id` int(11) default NULL,
  `month` int(11) default NULL,
  `week` int(11) default NULL,
  `year` int(11) default NULL,
  `article_number` int(11) NOT NULL,
  `time_published` timestamp NULL default NULL COMMENT 'Null if never sent',
  `time_generated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `time_notified` datetime default NULL,
  `publish_offset` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `time_generated` (`time_generated`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  KEY `user_id_2` (`user_id`,`article_id`),
  KEY `month` (`month`,`week`,`year`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27100 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_social_media`
--

CREATE TABLE IF NOT EXISTS `users_social_media` (
  `user_id` int(11) unsigned NOT NULL,
  `facebook_id` varchar(250) NOT NULL,
  `facebook_access_token` varchar(250) NOT NULL,
  `facebook_link` varchar(250) NOT NULL,
  `twitter_access_token` text NOT NULL,
  `twitter_link` varchar(250) NOT NULL,
  `linkedin_access_token` text NOT NULL,
  `linkedin_link` varchar(250) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_social_media_links`
--

CREATE TABLE IF NOT EXISTS `users_social_media_links` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `access_token` text NOT NULL,
  `update_link` varchar(255) NOT NULL,
  `public_link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `foreign_id` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `is_default_link` tinyint(4) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_blog` tinyint(4) NOT NULL,
  `picture_url` varchar(200) NOT NULL,
  `visible` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8574 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_social_media_links_2012-09-04`
--

CREATE TABLE IF NOT EXISTS `users_social_media_links_2012-09-04` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `access_token` text NOT NULL,
  `update_link` varchar(255) NOT NULL,
  `public_link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `foreign_id` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `is_default_link` tinyint(4) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_blog` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3134 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_social_media_links_2013-03-04`
--

CREATE TABLE IF NOT EXISTS `users_social_media_links_2013-03-04` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `access_token` text NOT NULL,
  `update_link` varchar(255) NOT NULL,
  `public_link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `foreign_id` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `is_default_link` tinyint(4) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_blog` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4897 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_social_media_settings`
--

CREATE TABLE IF NOT EXISTS `users_social_media_settings` (
  `sm_settings_id` int(11) NOT NULL auto_increment,
  `usml_id` int(11) NOT NULL,
  `settings_key` varchar(255) NOT NULL,
  `settings_value` varchar(255) NOT NULL,
  PRIMARY KEY  (`sm_settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_token`
--

CREATE TABLE IF NOT EXISTS `users_token` (
  `token_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` datetime default NULL,
  PRIMARY KEY  (`token_id`),
  UNIQUE KEY `user_id` (`user_id`,`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_data_cache`
--

CREATE TABLE IF NOT EXISTS `user_data_cache` (
  `user_data_cache_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` varchar(100) NOT NULL,
  `last_updated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user_data_cache_id`),
  UNIQUE KEY `user_id` (`user_id`,`key`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=127 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `blog_id` int(11) NOT NULL default '0',
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2899 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_address_book`
--

CREATE TABLE IF NOT EXISTS `zen_address_book` (
  `address_book_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `entry_gender` char(1) NOT NULL default '',
  `entry_company` varchar(64) default NULL,
  `entry_firstname` varchar(32) NOT NULL default '',
  `entry_lastname` varchar(32) NOT NULL default '',
  `entry_street_address` varchar(64) NOT NULL default '',
  `entry_suburb` varchar(32) default NULL,
  `entry_postcode` varchar(10) NOT NULL default '',
  `entry_city` varchar(32) NOT NULL default '',
  `entry_state` varchar(32) default NULL,
  `entry_country_id` int(11) NOT NULL default '0',
  `entry_zone_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`address_book_id`),
  KEY `idx_address_book_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=201 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_address_format`
--

CREATE TABLE IF NOT EXISTS `zen_address_format` (
  `address_format_id` int(11) NOT NULL auto_increment,
  `address_format` varchar(128) NOT NULL default '',
  `address_summary` varchar(48) NOT NULL default '',
  PRIMARY KEY  (`address_format_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_admin`
--

CREATE TABLE IF NOT EXISTS `zen_admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `admin_name` varchar(32) NOT NULL default '',
  `admin_email` varchar(96) NOT NULL default '',
  `admin_pass` varchar(40) NOT NULL default '',
  `admin_level` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`admin_id`),
  KEY `idx_admin_name_zen` (`admin_name`),
  KEY `idx_admin_email_zen` (`admin_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_admin_activity_log`
--

CREATE TABLE IF NOT EXISTS `zen_admin_activity_log` (
  `log_id` int(15) NOT NULL auto_increment,
  `access_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `admin_id` int(11) NOT NULL default '0',
  `page_accessed` varchar(80) NOT NULL default '',
  `page_parameters` text,
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`log_id`),
  KEY `idx_page_accessed_zen` (`page_accessed`),
  KEY `idx_access_date_zen` (`access_date`),
  KEY `idx_ip_zen` (`ip_address`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4170 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_authorizenet`
--

CREATE TABLE IF NOT EXISTS `zen_authorizenet` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `response_code` int(1) NOT NULL default '0',
  `response_text` varchar(255) NOT NULL default '',
  `authorization_type` varchar(50) NOT NULL default '',
  `transaction_id` int(15) NOT NULL default '0',
  `sent` longtext NOT NULL,
  `received` longtext NOT NULL,
  `time` varchar(50) NOT NULL default '',
  `session_id` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_banners`
--

CREATE TABLE IF NOT EXISTS `zen_banners` (
  `banners_id` int(11) NOT NULL auto_increment,
  `banners_title` varchar(64) NOT NULL default '',
  `banners_url` varchar(255) NOT NULL default '',
  `banners_image` varchar(64) NOT NULL default '',
  `banners_group` varchar(15) NOT NULL default '',
  `banners_html_text` text,
  `expires_impressions` int(7) default '0',
  `expires_date` datetime default NULL,
  `date_scheduled` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `banners_open_new_windows` int(1) NOT NULL default '1',
  `banners_on_ssl` int(1) NOT NULL default '1',
  `banners_sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`banners_id`),
  KEY `idx_status_group_zen` (`status`,`banners_group`),
  KEY `idx_expires_date_zen` (`expires_date`),
  KEY `idx_date_scheduled_zen` (`date_scheduled`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_banners_history`
--

CREATE TABLE IF NOT EXISTS `zen_banners_history` (
  `banners_history_id` int(11) NOT NULL auto_increment,
  `banners_id` int(11) NOT NULL default '0',
  `banners_shown` int(5) NOT NULL default '0',
  `banners_clicked` int(5) NOT NULL default '0',
  `banners_history_date` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`banners_history_id`),
  KEY `idx_banners_id_zen` (`banners_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_categories`
--

CREATE TABLE IF NOT EXISTS `zen_categories` (
  `categories_id` int(11) NOT NULL auto_increment,
  `categories_image` varchar(64) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `sort_order` int(3) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `categories_status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`categories_id`),
  KEY `idx_parent_id_cat_id_zen` (`parent_id`,`categories_id`),
  KEY `idx_status_zen` (`categories_status`),
  KEY `idx_sort_order_zen` (`sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_categories_description`
--

CREATE TABLE IF NOT EXISTS `zen_categories_description` (
  `categories_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `categories_name` varchar(32) NOT NULL default '',
  `categories_description` text NOT NULL,
  PRIMARY KEY  (`categories_id`,`language_id`),
  KEY `idx_categories_name_zen` (`categories_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_configuration`
--

CREATE TABLE IF NOT EXISTS `zen_configuration` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(255) NOT NULL default '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `configuration_group_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `use_function` text,
  `set_function` text,
  PRIMARY KEY  (`configuration_id`),
  UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  KEY `idx_cfg_grp_id_zen` (`configuration_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=574 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_configuration_group`
--

CREATE TABLE IF NOT EXISTS `zen_configuration_group` (
  `configuration_group_id` int(11) NOT NULL auto_increment,
  `configuration_group_title` varchar(64) NOT NULL default '',
  `configuration_group_description` varchar(255) NOT NULL default '',
  `sort_order` int(5) default NULL,
  `visible` int(1) default '1',
  PRIMARY KEY  (`configuration_group_id`),
  KEY `idx_visible_zen` (`visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_counter`
--

CREATE TABLE IF NOT EXISTS `zen_counter` (
  `startdate` char(8) default NULL,
  `counter` int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_counter_history`
--

CREATE TABLE IF NOT EXISTS `zen_counter_history` (
  `startdate` char(8) default NULL,
  `counter` int(12) default NULL,
  `session_counter` int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_countries`
--

CREATE TABLE IF NOT EXISTS `zen_countries` (
  `countries_id` int(11) NOT NULL auto_increment,
  `countries_name` varchar(64) NOT NULL default '',
  `countries_iso_code_2` char(2) NOT NULL default '',
  `countries_iso_code_3` char(3) NOT NULL default '',
  `address_format_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`countries_id`),
  KEY `idx_countries_name_zen` (`countries_name`),
  KEY `idx_address_format_id_zen` (`address_format_id`),
  KEY `idx_iso_2_zen` (`countries_iso_code_2`),
  KEY `idx_iso_3_zen` (`countries_iso_code_3`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=241 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_coupons`
--

CREATE TABLE IF NOT EXISTS `zen_coupons` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_type` char(1) NOT NULL default 'F',
  `coupon_code` varchar(32) NOT NULL default '',
  `coupon_amount` decimal(15,4) NOT NULL default '0.0000',
  `coupon_minimum_order` decimal(15,4) NOT NULL default '0.0000',
  `coupon_start_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `coupon_expire_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `uses_per_coupon` int(5) NOT NULL default '1',
  `uses_per_user` int(5) NOT NULL default '0',
  `restrict_to_products` varchar(255) default NULL,
  `restrict_to_categories` varchar(255) default NULL,
  `restrict_to_customers` text,
  `coupon_active` char(1) NOT NULL default 'Y',
  `date_created` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `coupon_zone_restriction` int(11) NOT NULL default '0',
  PRIMARY KEY  (`coupon_id`),
  KEY `idx_active_type_zen` (`coupon_active`,`coupon_type`),
  KEY `idx_coupon_code_zen` (`coupon_code`),
  KEY `idx_coupon_type_zen` (`coupon_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_coupons_description`
--

CREATE TABLE IF NOT EXISTS `zen_coupons_description` (
  `coupon_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '0',
  `coupon_name` varchar(32) NOT NULL default '',
  `coupon_description` text,
  PRIMARY KEY  (`coupon_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_coupon_email_track`
--

CREATE TABLE IF NOT EXISTS `zen_coupon_email_track` (
  `unique_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `customer_id_sent` int(11) NOT NULL default '0',
  `sent_firstname` varchar(32) default NULL,
  `sent_lastname` varchar(32) default NULL,
  `emailed_to` varchar(32) default NULL,
  `date_sent` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_coupon_id_zen` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_coupon_gv_customer`
--

CREATE TABLE IF NOT EXISTS `zen_coupon_gv_customer` (
  `customer_id` int(5) NOT NULL default '0',
  `amount` decimal(15,4) NOT NULL default '0.0000',
  PRIMARY KEY  (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_coupon_gv_queue`
--

CREATE TABLE IF NOT EXISTS `zen_coupon_gv_queue` (
  `unique_id` int(5) NOT NULL auto_increment,
  `customer_id` int(5) NOT NULL default '0',
  `order_id` int(5) NOT NULL default '0',
  `amount` decimal(15,4) NOT NULL default '0.0000',
  `date_created` datetime NOT NULL default '0001-01-01 00:00:00',
  `ipaddr` varchar(32) NOT NULL default '',
  `release_flag` char(1) NOT NULL default 'N',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_cust_id_order_id_zen` (`customer_id`,`order_id`),
  KEY `idx_release_flag_zen` (`release_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_coupon_redeem_track`
--

CREATE TABLE IF NOT EXISTS `zen_coupon_redeem_track` (
  `unique_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `customer_id` int(11) NOT NULL default '0',
  `redeem_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `redeem_ip` varchar(32) NOT NULL default '',
  `order_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_coupon_id_zen` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_coupon_restrict`
--

CREATE TABLE IF NOT EXISTS `zen_coupon_restrict` (
  `restrict_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  `coupon_restrict` char(1) NOT NULL default 'N',
  PRIMARY KEY  (`restrict_id`),
  KEY `idx_coup_id_prod_id_zen` (`coupon_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_currencies`
--

CREATE TABLE IF NOT EXISTS `zen_currencies` (
  `currencies_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  `symbol_left` varchar(24) default NULL,
  `symbol_right` varchar(24) default NULL,
  `decimal_point` char(1) default NULL,
  `thousands_point` char(1) default NULL,
  `decimal_places` char(1) default NULL,
  `value` float(13,8) default NULL,
  `last_updated` datetime default NULL,
  PRIMARY KEY  (`currencies_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_customers`
--

CREATE TABLE IF NOT EXISTS `zen_customers` (
  `customers_id` int(11) NOT NULL auto_increment,
  `customers_gender` char(1) NOT NULL default '',
  `customers_firstname` varchar(32) NOT NULL default '',
  `customers_lastname` varchar(32) NOT NULL default '',
  `customers_dob` datetime NOT NULL default '0001-01-01 00:00:00',
  `customers_email_address` varchar(96) NOT NULL default '',
  `customers_nick` varchar(96) NOT NULL default '',
  `customers_default_address_id` int(11) NOT NULL default '0',
  `customers_telephone` varchar(32) NOT NULL default '',
  `customers_fax` varchar(32) default NULL,
  `customers_password` varchar(40) NOT NULL default '',
  `customers_newsletter` char(1) default NULL,
  `customers_group_pricing` int(11) NOT NULL default '0',
  `customers_email_format` varchar(4) NOT NULL default 'TEXT',
  `customers_authorization` int(1) NOT NULL default '0',
  `customers_referral` varchar(32) NOT NULL default '',
  `customers_paypal_payerid` varchar(20) NOT NULL default '',
  `customers_paypal_ec` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`customers_id`),
  KEY `idx_email_address_zen` (`customers_email_address`),
  KEY `idx_referral_zen` (`customers_referral`(10)),
  KEY `idx_grp_pricing_zen` (`customers_group_pricing`),
  KEY `idx_nick_zen` (`customers_nick`),
  KEY `idx_newsletter_zen` (`customers_newsletter`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=204 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_customers_basket`
--

CREATE TABLE IF NOT EXISTS `zen_customers_basket` (
  `customers_basket_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` float NOT NULL default '0',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `customers_basket_date_added` varchar(8) default NULL,
  PRIMARY KEY  (`customers_basket_id`),
  KEY `idx_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_customers_basket_attributes`
--

CREATE TABLE IF NOT EXISTS `zen_customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `products_options_id` varchar(64) NOT NULL default '0',
  `products_options_value_id` int(11) NOT NULL default '0',
  `products_options_value_text` blob,
  `products_options_sort_order` text NOT NULL,
  PRIMARY KEY  (`customers_basket_attributes_id`),
  KEY `idx_cust_id_prod_id_zen` (`customers_id`,`products_id`(36))
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=167 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_customers_info`
--

CREATE TABLE IF NOT EXISTS `zen_customers_info` (
  `customers_info_id` int(11) NOT NULL default '0',
  `customers_info_date_of_last_logon` datetime default NULL,
  `customers_info_number_of_logons` int(5) default NULL,
  `customers_info_date_account_created` datetime default NULL,
  `customers_info_date_account_last_modified` datetime default NULL,
  `global_product_notifications` int(1) default '0',
  PRIMARY KEY  (`customers_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_customers_wishlist`
--

CREATE TABLE IF NOT EXISTS `zen_customers_wishlist` (
  `products_id` int(13) NOT NULL default '0',
  `customers_id` int(13) NOT NULL default '0',
  `products_model` varchar(13) default NULL,
  `products_name` varchar(64) NOT NULL default '',
  `products_price` decimal(8,2) NOT NULL default '0.00',
  `final_price` decimal(8,2) NOT NULL default '0.00',
  `products_quantity` int(2) NOT NULL default '0',
  `wishlist_name` varchar(64) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_db_cache`
--

CREATE TABLE IF NOT EXISTS `zen_db_cache` (
  `cache_entry_name` varchar(64) NOT NULL default '',
  `cache_data` mediumblob,
  `cache_entry_created` int(15) default NULL,
  PRIMARY KEY  (`cache_entry_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_email_archive`
--

CREATE TABLE IF NOT EXISTS `zen_email_archive` (
  `archive_id` int(11) NOT NULL auto_increment,
  `email_to_name` varchar(96) NOT NULL default '',
  `email_to_address` varchar(96) NOT NULL default '',
  `email_from_name` varchar(96) NOT NULL default '',
  `email_from_address` varchar(96) NOT NULL default '',
  `email_subject` varchar(255) NOT NULL default '',
  `email_html` text NOT NULL,
  `email_text` text NOT NULL,
  `date_sent` datetime NOT NULL default '0001-01-01 00:00:00',
  `module` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`archive_id`),
  KEY `idx_email_to_address_zen` (`email_to_address`),
  KEY `idx_module_zen` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_ezpages`
--

CREATE TABLE IF NOT EXISTS `zen_ezpages` (
  `pages_id` int(11) NOT NULL auto_increment,
  `languages_id` int(11) NOT NULL default '1',
  `pages_title` varchar(64) NOT NULL default '',
  `alt_url` varchar(255) NOT NULL default '',
  `alt_url_external` varchar(255) NOT NULL default '',
  `pages_html_text` mediumtext,
  `status_header` int(1) NOT NULL default '1',
  `status_sidebox` int(1) NOT NULL default '1',
  `status_footer` int(1) NOT NULL default '1',
  `status_toc` int(1) NOT NULL default '1',
  `header_sort_order` int(3) NOT NULL default '0',
  `sidebox_sort_order` int(3) NOT NULL default '0',
  `footer_sort_order` int(3) NOT NULL default '0',
  `toc_sort_order` int(3) NOT NULL default '0',
  `page_open_new_window` int(1) NOT NULL default '0',
  `page_is_ssl` int(1) NOT NULL default '0',
  `toc_chapter` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pages_id`),
  KEY `idx_lang_id_zen` (`languages_id`),
  KEY `idx_ezp_status_header_zen` (`status_header`),
  KEY `idx_ezp_status_sidebox_zen` (`status_sidebox`),
  KEY `idx_ezp_status_footer_zen` (`status_footer`),
  KEY `idx_ezp_status_toc_zen` (`status_toc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_featured`
--

CREATE TABLE IF NOT EXISTS `zen_featured` (
  `featured_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `featured_date_added` datetime default NULL,
  `featured_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `featured_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`featured_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`featured_date_available`),
  KEY `idx_expires_date_zen` (`expires_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_files_uploaded`
--

CREATE TABLE IF NOT EXISTS `zen_files_uploaded` (
  `files_uploaded_id` int(11) NOT NULL auto_increment,
  `sesskey` varchar(32) default NULL,
  `customers_id` int(11) default NULL,
  `files_uploaded_name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`files_uploaded_id`),
  KEY `idx_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Must always have either a sesskey or customers_id' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_geo_zones`
--

CREATE TABLE IF NOT EXISTS `zen_geo_zones` (
  `geo_zone_id` int(11) NOT NULL auto_increment,
  `geo_zone_name` varchar(32) NOT NULL default '',
  `geo_zone_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_get_terms_to_filter`
--

CREATE TABLE IF NOT EXISTS `zen_get_terms_to_filter` (
  `get_term_name` varchar(255) NOT NULL default '',
  `get_term_table` varchar(64) NOT NULL,
  `get_term_name_field` varchar(64) NOT NULL,
  PRIMARY KEY  (`get_term_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_group_pricing`
--

CREATE TABLE IF NOT EXISTS `zen_group_pricing` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(32) NOT NULL default '',
  `group_percentage` decimal(5,2) NOT NULL default '0.00',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_languages`
--

CREATE TABLE IF NOT EXISTS `zen_languages` (
  `languages_id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `code` char(2) NOT NULL default '',
  `image` varchar(64) default NULL,
  `directory` varchar(32) default NULL,
  `sort_order` int(3) default NULL,
  PRIMARY KEY  (`languages_id`),
  KEY `idx_languages_name_zen` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_layout_boxes`
--

CREATE TABLE IF NOT EXISTS `zen_layout_boxes` (
  `layout_id` int(11) NOT NULL auto_increment,
  `layout_template` varchar(64) NOT NULL default '',
  `layout_box_name` varchar(64) NOT NULL default '',
  `layout_box_status` tinyint(1) NOT NULL default '0',
  `layout_box_location` tinyint(1) NOT NULL default '0',
  `layout_box_sort_order` int(11) NOT NULL default '0',
  `layout_box_sort_order_single` int(11) NOT NULL default '0',
  `layout_box_status_single` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`layout_id`),
  KEY `idx_name_template_zen` (`layout_template`,`layout_box_name`),
  KEY `idx_layout_box_status_zen` (`layout_box_status`),
  KEY `idx_layout_box_sort_order_zen` (`layout_box_sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_manufacturers`
--

CREATE TABLE IF NOT EXISTS `zen_manufacturers` (
  `manufacturers_id` int(11) NOT NULL auto_increment,
  `manufacturers_name` varchar(32) NOT NULL default '',
  `manufacturers_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`),
  KEY `idx_mfg_name_zen` (`manufacturers_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_manufacturers_info`
--

CREATE TABLE IF NOT EXISTS `zen_manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `manufacturers_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_media_clips`
--

CREATE TABLE IF NOT EXISTS `zen_media_clips` (
  `clip_id` int(11) NOT NULL auto_increment,
  `media_id` int(11) NOT NULL default '0',
  `clip_type` smallint(6) NOT NULL default '0',
  `clip_filename` text NOT NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`clip_id`),
  KEY `idx_media_id_zen` (`media_id`),
  KEY `idx_clip_type_zen` (`clip_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_media_manager`
--

CREATE TABLE IF NOT EXISTS `zen_media_manager` (
  `media_id` int(11) NOT NULL auto_increment,
  `media_name` varchar(255) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`media_id`),
  KEY `idx_media_name_zen` (`media_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_media_to_products`
--

CREATE TABLE IF NOT EXISTS `zen_media_to_products` (
  `media_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  KEY `idx_media_product_zen` (`media_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_media_types`
--

CREATE TABLE IF NOT EXISTS `zen_media_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(64) NOT NULL default '',
  `type_ext` varchar(8) NOT NULL default '',
  PRIMARY KEY  (`type_id`),
  KEY `idx_type_name_zen` (`type_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_meta_tags_categories_description`
--

CREATE TABLE IF NOT EXISTS `zen_meta_tags_categories_description` (
  `categories_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL default '1',
  `metatags_title` varchar(255) NOT NULL default '',
  `metatags_keywords` text,
  `metatags_description` text,
  PRIMARY KEY  (`categories_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_meta_tags_products_description`
--

CREATE TABLE IF NOT EXISTS `zen_meta_tags_products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL default '1',
  `metatags_title` varchar(255) NOT NULL default '',
  `metatags_keywords` text,
  `metatags_description` text,
  PRIMARY KEY  (`products_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_music_genre`
--

CREATE TABLE IF NOT EXISTS `zen_music_genre` (
  `music_genre_id` int(11) NOT NULL auto_increment,
  `music_genre_name` varchar(32) NOT NULL default '',
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`music_genre_id`),
  KEY `idx_music_genre_name_zen` (`music_genre_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_newsletters`
--

CREATE TABLE IF NOT EXISTS `zen_newsletters` (
  `newsletters_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `content_html` text NOT NULL,
  `module` varchar(255) NOT NULL default '',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_sent` datetime default NULL,
  `status` int(1) default NULL,
  `locked` int(1) default '0',
  PRIMARY KEY  (`newsletters_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_nochex_apc_transactions`
--

CREATE TABLE IF NOT EXISTS `zen_nochex_apc_transactions` (
  `nochex_apc_id` int(11) unsigned NOT NULL auto_increment,
  `order_id` int(11) unsigned NOT NULL default '0',
  `nc_transaction_id` varchar(30) NOT NULL,
  `nc_transaction_date` varchar(100) NOT NULL,
  `nc_to_email` varchar(255) NOT NULL,
  `nc_from_email` varchar(255) NOT NULL,
  `nc_order_id` varchar(255) NOT NULL,
  `nc_custom` varchar(255) NOT NULL,
  `nc_amount` decimal(9,2) NOT NULL,
  `nc_security_key` varchar(255) NOT NULL,
  `nc_status` varchar(15) NOT NULL,
  `nochex_response` varchar(255) NOT NULL,
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `memo` text,
  PRIMARY KEY  (`nochex_apc_id`),
  KEY `idx_order_id_zen` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_nochex_sessions`
--

CREATE TABLE IF NOT EXISTS `zen_nochex_sessions` (
  `unique_id` int(11) NOT NULL auto_increment,
  `session_id` text NOT NULL,
  `saved_session` mediumblob NOT NULL,
  `expiry` int(17) NOT NULL default '0',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_session_id_zen` (`session_id`(36))
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_orders`
--

CREATE TABLE IF NOT EXISTS `zen_orders` (
  `orders_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `customers_name` varchar(64) NOT NULL default '',
  `customers_company` varchar(64) default NULL,
  `customers_street_address` varchar(64) NOT NULL default '',
  `customers_suburb` varchar(32) default NULL,
  `customers_city` varchar(32) NOT NULL default '',
  `customers_postcode` varchar(10) NOT NULL default '',
  `customers_state` varchar(32) default NULL,
  `customers_country` varchar(32) NOT NULL default '',
  `customers_telephone` varchar(32) NOT NULL default '',
  `customers_email_address` varchar(96) NOT NULL default '',
  `customers_address_format_id` int(5) NOT NULL default '0',
  `delivery_name` varchar(64) NOT NULL default '',
  `delivery_company` varchar(64) default NULL,
  `delivery_street_address` varchar(64) NOT NULL default '',
  `delivery_suburb` varchar(32) default NULL,
  `delivery_city` varchar(32) NOT NULL default '',
  `delivery_postcode` varchar(10) NOT NULL default '',
  `delivery_state` varchar(32) default NULL,
  `delivery_country` varchar(32) NOT NULL default '',
  `delivery_address_format_id` int(5) NOT NULL default '0',
  `billing_name` varchar(64) NOT NULL default '',
  `billing_company` varchar(64) default NULL,
  `billing_street_address` varchar(64) NOT NULL default '',
  `billing_suburb` varchar(32) default NULL,
  `billing_city` varchar(32) NOT NULL default '',
  `billing_postcode` varchar(10) NOT NULL default '',
  `billing_state` varchar(32) default NULL,
  `billing_country` varchar(32) NOT NULL default '',
  `billing_address_format_id` int(5) NOT NULL default '0',
  `payment_method` varchar(128) NOT NULL default '',
  `payment_module_code` varchar(32) NOT NULL default '',
  `shipping_method` varchar(128) NOT NULL default '',
  `shipping_module_code` varchar(32) NOT NULL default '',
  `coupon_code` varchar(32) NOT NULL default '',
  `cc_type` varchar(20) default NULL,
  `cc_owner` varchar(64) default NULL,
  `cc_number` varchar(32) default NULL,
  `cc_expires` varchar(4) default NULL,
  `cc_cvv` blob,
  `last_modified` datetime default NULL,
  `date_purchased` datetime default NULL,
  `orders_status` int(5) NOT NULL default '0',
  `orders_date_finished` datetime default NULL,
  `currency` char(3) default NULL,
  `currency_value` decimal(14,6) default NULL,
  `order_total` decimal(14,2) default NULL,
  `order_tax` decimal(14,2) default NULL,
  `paypal_ipn_id` int(11) NOT NULL default '0',
  `ip_address` varchar(96) NOT NULL default '',
  PRIMARY KEY  (`orders_id`),
  KEY `idx_status_orders_cust_zen` (`orders_status`,`orders_id`,`customers_id`),
  KEY `idx_date_purchased_zen` (`date_purchased`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=269 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_orders_products`
--

CREATE TABLE IF NOT EXISTS `zen_orders_products` (
  `orders_products_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `products_id` int(11) NOT NULL default '0',
  `products_model` varchar(32) default NULL,
  `products_name` varchar(64) NOT NULL default '',
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `products_tax` decimal(7,4) NOT NULL default '0.0000',
  `products_quantity` float NOT NULL default '0',
  `onetime_charges` decimal(15,4) NOT NULL default '0.0000',
  `products_priced_by_attribute` tinyint(1) NOT NULL default '0',
  `product_is_free` tinyint(1) NOT NULL default '0',
  `products_discount_type` tinyint(1) NOT NULL default '0',
  `products_discount_type_from` tinyint(1) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_id`),
  KEY `idx_orders_id_prod_id_zen` (`orders_id`,`products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=413 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_orders_products_attributes`
--

CREATE TABLE IF NOT EXISTS `zen_orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `products_options` varchar(32) NOT NULL default '',
  `products_options_values` text NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL default '',
  `product_attribute_is_free` tinyint(1) NOT NULL default '0',
  `products_attributes_weight` float NOT NULL default '0',
  `products_attributes_weight_prefix` char(1) NOT NULL default '',
  `attributes_discounted` tinyint(1) NOT NULL default '1',
  `attributes_price_base_included` tinyint(1) NOT NULL default '1',
  `attributes_price_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_qty_prices` text,
  `attributes_qty_prices_onetime` text,
  `attributes_price_words` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_words_free` int(4) NOT NULL default '0',
  `attributes_price_letters` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_letters_free` int(4) NOT NULL default '0',
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_values_id` int(11) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_attributes_id`),
  KEY `idx_orders_id_prod_id_zen` (`orders_id`,`orders_products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=714 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_orders_products_download`
--

CREATE TABLE IF NOT EXISTS `zen_orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `orders_products_filename` varchar(255) NOT NULL default '',
  `download_maxdays` int(2) NOT NULL default '0',
  `download_count` int(2) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_download_id`),
  KEY `idx_orders_id_zen` (`orders_id`),
  KEY `idx_orders_products_id_zen` (`orders_products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_orders_status`
--

CREATE TABLE IF NOT EXISTS `zen_orders_status` (
  `orders_status_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `orders_status_name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`orders_status_id`,`language_id`),
  KEY `idx_orders_status_name_zen` (`orders_status_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_orders_status_history`
--

CREATE TABLE IF NOT EXISTS `zen_orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_status_id` int(5) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`orders_status_history_id`),
  KEY `idx_orders_id_status_id_zen` (`orders_id`,`orders_status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=347 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_orders_total`
--

CREATE TABLE IF NOT EXISTS `zen_orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `text` varchar(255) NOT NULL default '',
  `value` decimal(15,4) NOT NULL default '0.0000',
  `class` varchar(32) NOT NULL default '',
  `sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`orders_total_id`),
  KEY `idx_ot_orders_id_zen` (`orders_id`),
  KEY `idx_ot_class_zen` (`class`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=384 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_paypal`
--

CREATE TABLE IF NOT EXISTS `zen_paypal` (
  `paypal_ipn_id` int(11) unsigned NOT NULL auto_increment,
  `order_id` int(11) unsigned NOT NULL default '0',
  `txn_type` varchar(40) NOT NULL default '',
  `module_name` varchar(40) NOT NULL default '',
  `module_mode` varchar(40) NOT NULL default '',
  `reason_code` varchar(40) default NULL,
  `payment_type` varchar(40) NOT NULL default '',
  `payment_status` varchar(32) NOT NULL default '',
  `pending_reason` varchar(32) default NULL,
  `invoice` varchar(128) default NULL,
  `mc_currency` char(3) NOT NULL default '',
  `first_name` varchar(32) NOT NULL default '',
  `last_name` varchar(32) NOT NULL default '',
  `payer_business_name` varchar(128) default NULL,
  `address_name` varchar(64) default NULL,
  `address_street` varchar(254) default NULL,
  `address_city` varchar(120) default NULL,
  `address_state` varchar(120) default NULL,
  `address_zip` varchar(10) default NULL,
  `address_country` varchar(64) default NULL,
  `address_status` varchar(11) default NULL,
  `payer_email` varchar(128) NOT NULL default '',
  `payer_id` varchar(32) NOT NULL default '',
  `payer_status` varchar(10) NOT NULL default '',
  `payment_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `business` varchar(128) NOT NULL default '',
  `receiver_email` varchar(128) NOT NULL default '',
  `receiver_id` varchar(32) NOT NULL default '',
  `txn_id` varchar(20) NOT NULL default '',
  `parent_txn_id` varchar(20) default NULL,
  `num_cart_items` tinyint(4) unsigned NOT NULL default '1',
  `mc_gross` decimal(7,2) NOT NULL default '0.00',
  `mc_fee` decimal(7,2) NOT NULL default '0.00',
  `payment_gross` decimal(7,2) default NULL,
  `payment_fee` decimal(7,2) default NULL,
  `settle_amount` decimal(7,2) default NULL,
  `settle_currency` char(3) default NULL,
  `exchange_rate` decimal(4,2) default NULL,
  `notify_version` decimal(2,1) NOT NULL default '0.0',
  `verify_sign` varchar(128) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `memo` text,
  PRIMARY KEY  (`paypal_ipn_id`,`txn_id`),
  KEY `idx_order_id_zen` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_paypal_payment_status`
--

CREATE TABLE IF NOT EXISTS `zen_paypal_payment_status` (
  `payment_status_id` int(11) NOT NULL auto_increment,
  `payment_status_name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`payment_status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_paypal_payment_status_history`
--

CREATE TABLE IF NOT EXISTS `zen_paypal_payment_status_history` (
  `payment_status_history_id` int(11) NOT NULL auto_increment,
  `paypal_ipn_id` int(11) NOT NULL default '0',
  `txn_id` varchar(64) NOT NULL default '',
  `parent_txn_id` varchar(64) NOT NULL default '',
  `payment_status` varchar(17) NOT NULL default '',
  `pending_reason` varchar(14) default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`payment_status_history_id`),
  KEY `idx_paypal_ipn_id_zen` (`paypal_ipn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_paypal_session`
--

CREATE TABLE IF NOT EXISTS `zen_paypal_session` (
  `unique_id` int(11) NOT NULL auto_increment,
  `session_id` text NOT NULL,
  `saved_session` mediumblob NOT NULL,
  `expiry` int(17) NOT NULL default '0',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_session_id_zen` (`session_id`(36))
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_paypal_testing`
--

CREATE TABLE IF NOT EXISTS `zen_paypal_testing` (
  `paypal_ipn_id` int(11) unsigned NOT NULL auto_increment,
  `order_id` int(11) unsigned NOT NULL default '0',
  `custom` varchar(255) NOT NULL default '',
  `txn_type` varchar(40) NOT NULL default '',
  `module_name` varchar(40) NOT NULL default '',
  `module_mode` varchar(40) NOT NULL default '',
  `reason_code` varchar(40) default NULL,
  `payment_type` varchar(40) NOT NULL default '',
  `payment_status` varchar(32) NOT NULL default '',
  `pending_reason` varchar(32) default NULL,
  `invoice` varchar(128) default NULL,
  `mc_currency` char(3) NOT NULL default '',
  `first_name` varchar(32) NOT NULL default '',
  `last_name` varchar(32) NOT NULL default '',
  `payer_business_name` varchar(128) default NULL,
  `address_name` varchar(64) default NULL,
  `address_street` varchar(254) default NULL,
  `address_city` varchar(120) default NULL,
  `address_state` varchar(120) default NULL,
  `address_zip` varchar(10) default NULL,
  `address_country` varchar(64) default NULL,
  `address_status` varchar(11) default NULL,
  `payer_email` varchar(128) NOT NULL default '',
  `payer_id` varchar(32) NOT NULL default '',
  `payer_status` varchar(10) NOT NULL default '',
  `payment_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `business` varchar(128) NOT NULL default '',
  `receiver_email` varchar(128) NOT NULL default '',
  `receiver_id` varchar(32) NOT NULL default '',
  `txn_id` varchar(20) NOT NULL default '',
  `parent_txn_id` varchar(20) default NULL,
  `num_cart_items` tinyint(4) unsigned NOT NULL default '1',
  `mc_gross` decimal(7,2) NOT NULL default '0.00',
  `mc_fee` decimal(7,2) NOT NULL default '0.00',
  `payment_gross` decimal(7,2) default NULL,
  `payment_fee` decimal(7,2) default NULL,
  `settle_amount` decimal(7,2) default NULL,
  `settle_currency` char(3) default NULL,
  `exchange_rate` decimal(4,2) default NULL,
  `notify_version` decimal(2,1) NOT NULL default '0.0',
  `verify_sign` varchar(128) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `memo` text,
  PRIMARY KEY  (`paypal_ipn_id`,`txn_id`),
  KEY `idx_order_id_zen` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products`
--

CREATE TABLE IF NOT EXISTS `zen_products` (
  `products_id` int(11) NOT NULL auto_increment,
  `products_type` int(11) NOT NULL default '1',
  `products_quantity` float NOT NULL default '0',
  `products_model` varchar(32) default NULL,
  `products_image` varchar(64) default NULL,
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `products_virtual` tinyint(1) NOT NULL default '0',
  `products_date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `products_last_modified` datetime default NULL,
  `products_date_available` datetime default NULL,
  `products_weight` float NOT NULL default '0',
  `products_status` tinyint(1) NOT NULL default '0',
  `products_tax_class_id` int(11) NOT NULL default '0',
  `manufacturers_id` int(11) default NULL,
  `products_ordered` float NOT NULL default '0',
  `products_quantity_order_min` float NOT NULL default '1',
  `products_quantity_order_units` float NOT NULL default '1',
  `products_priced_by_attribute` tinyint(1) NOT NULL default '0',
  `product_is_free` tinyint(1) NOT NULL default '0',
  `product_is_call` tinyint(1) NOT NULL default '0',
  `products_quantity_mixed` tinyint(1) NOT NULL default '0',
  `product_is_always_free_shipping` tinyint(1) NOT NULL default '0',
  `products_qty_box_status` tinyint(1) NOT NULL default '1',
  `products_quantity_order_max` float NOT NULL default '0',
  `products_sort_order` int(11) NOT NULL default '0',
  `products_discount_type` tinyint(1) NOT NULL default '0',
  `products_discount_type_from` tinyint(1) NOT NULL default '0',
  `products_price_sorter` decimal(15,4) NOT NULL default '0.0000',
  `master_categories_id` int(11) NOT NULL default '0',
  `products_mixed_discount_quantity` tinyint(1) NOT NULL default '1',
  `metatags_title_status` tinyint(1) NOT NULL default '0',
  `metatags_products_name_status` tinyint(1) NOT NULL default '0',
  `metatags_model_status` tinyint(1) NOT NULL default '0',
  `metatags_price_status` tinyint(1) NOT NULL default '0',
  `metatags_title_tagline_status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_products_date_added_zen` (`products_date_added`),
  KEY `idx_products_status_zen` (`products_status`),
  KEY `idx_products_date_available_zen` (`products_date_available`),
  KEY `idx_products_ordered_zen` (`products_ordered`),
  KEY `idx_products_model_zen` (`products_model`),
  KEY `idx_products_price_sorter_zen` (`products_price_sorter`),
  KEY `idx_master_categories_id_zen` (`master_categories_id`),
  KEY `idx_products_sort_order_zen` (`products_sort_order`),
  KEY `idx_manufacturers_id_zen` (`manufacturers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_attributes`
--

CREATE TABLE IF NOT EXISTS `zen_products_attributes` (
  `products_attributes_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `options_id` int(11) NOT NULL default '0',
  `options_values_id` int(11) NOT NULL default '0',
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL default '',
  `products_options_sort_order` int(11) NOT NULL default '0',
  `product_attribute_is_free` tinyint(1) NOT NULL default '0',
  `products_attributes_weight` float NOT NULL default '0',
  `products_attributes_weight_prefix` char(1) NOT NULL default '',
  `attributes_display_only` tinyint(1) NOT NULL default '0',
  `attributes_default` tinyint(1) NOT NULL default '0',
  `attributes_discounted` tinyint(1) NOT NULL default '1',
  `attributes_image` varchar(64) default NULL,
  `attributes_price_base_included` tinyint(1) NOT NULL default '1',
  `attributes_price_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_qty_prices` text,
  `attributes_qty_prices_onetime` text,
  `attributes_price_words` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_words_free` int(4) NOT NULL default '0',
  `attributes_price_letters` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_letters_free` int(4) NOT NULL default '0',
  `attributes_required` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_attributes_id`),
  KEY `idx_id_options_id_values_zen` (`products_id`,`options_id`,`options_values_id`),
  KEY `idx_opt_sort_order_zen` (`products_options_sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_attributes_download`
--

CREATE TABLE IF NOT EXISTS `zen_products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL default '0',
  `products_attributes_filename` varchar(255) NOT NULL default '',
  `products_attributes_maxdays` int(2) default '0',
  `products_attributes_maxcount` int(2) default '0',
  PRIMARY KEY  (`products_attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_description`
--

CREATE TABLE IF NOT EXISTS `zen_products_description` (
  `products_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '1',
  `products_name` varchar(64) NOT NULL default '',
  `products_description` text,
  `products_url` varchar(255) default NULL,
  `products_viewed` int(5) default '0',
  PRIMARY KEY  (`products_id`,`language_id`),
  KEY `idx_products_name_zen` (`products_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_discount_quantity`
--

CREATE TABLE IF NOT EXISTS `zen_products_discount_quantity` (
  `discount_id` int(4) NOT NULL default '0',
  `products_id` int(11) NOT NULL default '0',
  `discount_qty` float NOT NULL default '0',
  `discount_price` decimal(15,4) NOT NULL default '0.0000',
  KEY `idx_id_qty_zen` (`products_id`,`discount_qty`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_notifications`
--

CREATE TABLE IF NOT EXISTS `zen_products_notifications` (
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`products_id`,`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_options`
--

CREATE TABLE IF NOT EXISTS `zen_products_options` (
  `products_options_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_name` varchar(32) NOT NULL default '',
  `products_options_sort_order` int(11) NOT NULL default '0',
  `products_options_type` int(5) NOT NULL default '0',
  `products_options_length` smallint(2) NOT NULL default '32',
  `products_options_comment` varchar(64) default NULL,
  `products_options_size` smallint(2) NOT NULL default '32',
  `products_options_images_per_row` int(2) default '5',
  `products_options_images_style` int(1) default '0',
  `products_options_rows` smallint(2) NOT NULL default '1',
  PRIMARY KEY  (`products_options_id`,`language_id`),
  KEY `idx_lang_id_zen` (`language_id`),
  KEY `idx_products_options_sort_order_zen` (`products_options_sort_order`),
  KEY `idx_products_options_name_zen` (`products_options_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_options_types`
--

CREATE TABLE IF NOT EXISTS `zen_products_options_types` (
  `products_options_types_id` int(11) NOT NULL default '0',
  `products_options_types_name` varchar(32) default NULL,
  PRIMARY KEY  (`products_options_types_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Track products_options_types';

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_options_values`
--

CREATE TABLE IF NOT EXISTS `zen_products_options_values` (
  `products_options_values_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_values_name` varchar(64) NOT NULL default '',
  `products_options_values_sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_options_values_id`,`language_id`),
  KEY `idx_products_options_values_name_zen` (`products_options_values_name`),
  KEY `idx_products_options_values_sort_order_zen` (`products_options_values_sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_options_values_to_products_options`
--

CREATE TABLE IF NOT EXISTS `zen_products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL auto_increment,
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_values_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_options_values_to_products_options_id`),
  KEY `idx_products_options_id_zen` (`products_options_id`),
  KEY `idx_products_options_values_id_zen` (`products_options_values_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_products_to_categories`
--

CREATE TABLE IF NOT EXISTS `zen_products_to_categories` (
  `products_id` int(11) NOT NULL default '0',
  `categories_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`,`categories_id`),
  KEY `idx_cat_prod_id_zen` (`categories_id`,`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_product_music_extra`
--

CREATE TABLE IF NOT EXISTS `zen_product_music_extra` (
  `products_id` int(11) NOT NULL default '0',
  `artists_id` int(11) NOT NULL default '0',
  `record_company_id` int(11) NOT NULL default '0',
  `music_genre_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_music_genre_id_zen` (`music_genre_id`),
  KEY `idx_artists_id_zen` (`artists_id`),
  KEY `idx_record_company_id_zen` (`record_company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_product_types`
--

CREATE TABLE IF NOT EXISTS `zen_product_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(255) NOT NULL default '',
  `type_handler` varchar(255) NOT NULL default '',
  `type_master_type` int(11) NOT NULL default '1',
  `allow_add_to_cart` char(1) NOT NULL default 'Y',
  `default_image` varchar(255) NOT NULL default '',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`type_id`),
  KEY `idx_type_master_type_zen` (`type_master_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_product_types_to_category`
--

CREATE TABLE IF NOT EXISTS `zen_product_types_to_category` (
  `product_type_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  KEY `idx_category_id_zen` (`category_id`),
  KEY `idx_product_type_id_zen` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_product_type_layout`
--

CREATE TABLE IF NOT EXISTS `zen_product_type_layout` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(255) NOT NULL default '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `product_type_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `use_function` text,
  `set_function` text,
  PRIMARY KEY  (`configuration_id`),
  UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  KEY `idx_type_id_sort_order_zen` (`product_type_id`,`sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_project_version`
--

CREATE TABLE IF NOT EXISTS `zen_project_version` (
  `project_version_id` tinyint(3) NOT NULL auto_increment,
  `project_version_key` varchar(40) NOT NULL default '',
  `project_version_major` varchar(20) NOT NULL default '',
  `project_version_minor` varchar(20) NOT NULL default '',
  `project_version_patch1` varchar(20) NOT NULL default '',
  `project_version_patch2` varchar(20) NOT NULL default '',
  `project_version_patch1_source` varchar(20) NOT NULL default '',
  `project_version_patch2_source` varchar(20) NOT NULL default '',
  `project_version_comment` varchar(250) NOT NULL default '',
  `project_version_date_applied` datetime NOT NULL default '0001-01-01 01:01:01',
  PRIMARY KEY  (`project_version_id`),
  UNIQUE KEY `idx_project_version_key_zen` (`project_version_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Database Version Tracking' AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_project_version_history`
--

CREATE TABLE IF NOT EXISTS `zen_project_version_history` (
  `project_version_id` tinyint(3) NOT NULL auto_increment,
  `project_version_key` varchar(40) NOT NULL default '',
  `project_version_major` varchar(20) NOT NULL default '',
  `project_version_minor` varchar(20) NOT NULL default '',
  `project_version_patch` varchar(20) NOT NULL default '',
  `project_version_comment` varchar(250) NOT NULL default '',
  `project_version_date_applied` datetime NOT NULL default '0001-01-01 01:01:01',
  PRIMARY KEY  (`project_version_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Database Version Tracking History' AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_query_builder`
--

CREATE TABLE IF NOT EXISTS `zen_query_builder` (
  `query_id` int(11) NOT NULL auto_increment,
  `query_category` varchar(40) NOT NULL default '',
  `query_name` varchar(80) NOT NULL default '',
  `query_description` text NOT NULL,
  `query_string` text NOT NULL,
  `query_keys_list` text NOT NULL,
  PRIMARY KEY  (`query_id`),
  UNIQUE KEY `query_name` (`query_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Stores queries for re-use in Admin email and report modules' AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_record_artists`
--

CREATE TABLE IF NOT EXISTS `zen_record_artists` (
  `artists_id` int(11) NOT NULL auto_increment,
  `artists_name` varchar(32) NOT NULL default '',
  `artists_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`artists_id`),
  KEY `idx_rec_artists_name_zen` (`artists_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_record_artists_info`
--

CREATE TABLE IF NOT EXISTS `zen_record_artists_info` (
  `artists_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `artists_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`artists_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_record_company`
--

CREATE TABLE IF NOT EXISTS `zen_record_company` (
  `record_company_id` int(11) NOT NULL auto_increment,
  `record_company_name` varchar(32) NOT NULL default '',
  `record_company_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`record_company_id`),
  KEY `idx_rec_company_name_zen` (`record_company_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_record_company_info`
--

CREATE TABLE IF NOT EXISTS `zen_record_company_info` (
  `record_company_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `record_company_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`record_company_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_reviews`
--

CREATE TABLE IF NOT EXISTS `zen_reviews` (
  `reviews_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) default NULL,
  `customers_name` varchar(64) NOT NULL default '',
  `reviews_rating` int(1) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `reviews_read` int(5) NOT NULL default '0',
  `status` int(1) NOT NULL default '1',
  PRIMARY KEY  (`reviews_id`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_customers_id_zen` (`customers_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_date_added_zen` (`date_added`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_reviews_description`
--

CREATE TABLE IF NOT EXISTS `zen_reviews_description` (
  `reviews_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `reviews_text` text NOT NULL,
  PRIMARY KEY  (`reviews_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_salemaker_sales`
--

CREATE TABLE IF NOT EXISTS `zen_salemaker_sales` (
  `sale_id` int(11) NOT NULL auto_increment,
  `sale_status` tinyint(4) NOT NULL default '0',
  `sale_name` varchar(30) NOT NULL default '',
  `sale_deduction_value` decimal(15,4) NOT NULL default '0.0000',
  `sale_deduction_type` tinyint(4) NOT NULL default '0',
  `sale_pricerange_from` decimal(15,4) NOT NULL default '0.0000',
  `sale_pricerange_to` decimal(15,4) NOT NULL default '0.0000',
  `sale_specials_condition` tinyint(4) NOT NULL default '0',
  `sale_categories_selected` text,
  `sale_categories_all` text,
  `sale_date_start` date NOT NULL default '0001-01-01',
  `sale_date_end` date NOT NULL default '0001-01-01',
  `sale_date_added` date NOT NULL default '0001-01-01',
  `sale_date_last_modified` date NOT NULL default '0001-01-01',
  `sale_date_status_change` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`sale_id`),
  KEY `idx_sale_status_zen` (`sale_status`),
  KEY `idx_sale_date_start_zen` (`sale_date_start`),
  KEY `idx_sale_date_end_zen` (`sale_date_end`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_sessions`
--

CREATE TABLE IF NOT EXISTS `zen_sessions` (
  `sesskey` varchar(32) NOT NULL default '',
  `expiry` int(11) unsigned NOT NULL default '0',
  `value` mediumblob NOT NULL,
  PRIMARY KEY  (`sesskey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_specials`
--

CREATE TABLE IF NOT EXISTS `zen_specials` (
  `specials_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `specials_new_products_price` decimal(15,4) NOT NULL default '0.0000',
  `specials_date_added` datetime default NULL,
  `specials_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `specials_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`specials_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`specials_date_available`),
  KEY `idx_expires_date_zen` (`expires_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_tax_class`
--

CREATE TABLE IF NOT EXISTS `zen_tax_class` (
  `tax_class_id` int(11) NOT NULL auto_increment,
  `tax_class_title` varchar(32) NOT NULL default '',
  `tax_class_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_tax_rates`
--

CREATE TABLE IF NOT EXISTS `zen_tax_rates` (
  `tax_rates_id` int(11) NOT NULL auto_increment,
  `tax_zone_id` int(11) NOT NULL default '0',
  `tax_class_id` int(11) NOT NULL default '0',
  `tax_priority` int(5) default '1',
  `tax_rate` decimal(7,4) NOT NULL default '0.0000',
  `tax_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`tax_rates_id`),
  KEY `idx_tax_zone_id_zen` (`tax_zone_id`),
  KEY `idx_tax_class_id_zen` (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_template_select`
--

CREATE TABLE IF NOT EXISTS `zen_template_select` (
  `template_id` int(11) NOT NULL auto_increment,
  `template_dir` varchar(64) NOT NULL default '',
  `template_language` varchar(64) NOT NULL default '0',
  PRIMARY KEY  (`template_id`),
  KEY `idx_tpl_lang_zen` (`template_language`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_upgrade_exceptions`
--

CREATE TABLE IF NOT EXISTS `zen_upgrade_exceptions` (
  `upgrade_exception_id` smallint(5) NOT NULL auto_increment,
  `sql_file` varchar(50) default NULL,
  `reason` varchar(200) default NULL,
  `errordate` datetime default '0001-01-01 00:00:00',
  `sqlstatement` text,
  PRIMARY KEY  (`upgrade_exception_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_whos_online`
--

CREATE TABLE IF NOT EXISTS `zen_whos_online` (
  `customer_id` int(11) default NULL,
  `full_name` varchar(64) NOT NULL default '',
  `session_id` varchar(128) NOT NULL default '',
  `ip_address` varchar(15) NOT NULL default '',
  `time_entry` varchar(14) NOT NULL default '',
  `time_last_click` varchar(14) NOT NULL default '',
  `last_page_url` varchar(255) NOT NULL default '',
  `host_address` text NOT NULL,
  `user_agent` varchar(255) NOT NULL default '',
  KEY `idx_ip_address_zen` (`ip_address`),
  KEY `idx_session_id_zen` (`session_id`),
  KEY `idx_customer_id_zen` (`customer_id`),
  KEY `idx_time_entry_zen` (`time_entry`),
  KEY `idx_time_last_click_zen` (`time_last_click`),
  KEY `idx_last_page_url_zen` (`last_page_url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zen_zones`
--

CREATE TABLE IF NOT EXISTS `zen_zones` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_code` varchar(32) NOT NULL default '',
  `zone_name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`zone_id`),
  KEY `idx_zone_country_id_zen` (`zone_country_id`),
  KEY `idx_zone_code_zen` (`zone_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=190 ;

-- --------------------------------------------------------

--
-- Table structure for table `zen_zones_to_geo_zones`
--

CREATE TABLE IF NOT EXISTS `zen_zones_to_geo_zones` (
  `association_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_id` int(11) default NULL,
  `geo_zone_id` int(11) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`association_id`),
  KEY `idx_zones_zen` (`geo_zone_id`,`zone_country_id`,`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `zip_codes`
--

CREATE TABLE IF NOT EXISTS `zip_codes` (
  `zip` int(11) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(10) NOT NULL,
  `county` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY  (`zip`),
  KEY `city` (`city`),
  KEY `state` (`state`),
  KEY `county` (`county`),
  KEY `city_2` (`city`,`state`),
  KEY `city_3` (`city`,`county`),
  KEY `state_2` (`state`,`county`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
