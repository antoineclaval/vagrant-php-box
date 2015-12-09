-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: db.systememerge.com
-- Generation Time: Dec 08, 2015 at 02:36 PM
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

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `filename`, `icon`, `thumbhtml`, `packages_affiliations_id`, `packages_themes_id`, `is_newsletter`) VALUES
(3, 'right_column', 'templates/right_column.html', 'right_column_template.png', 'templates/right_column_thumb.html', 0, 0, 0),
(4, 'postcard', 'templates/postcard.html', 'postcard_template.png', 'templates/postcard_thumb.html', 0, 0, 0),
(1, 'base', 'templates/basic.html', 'basic_template.png', 'templates/basic_thumb.html', 0, 0, 0),
(2, 'left_column', 'templates/left_column.html', 'left_column_template.png', 'templates/left_column_thumb.html', 0, 0, 0),
(5, 'Coupon', 'templates/coupon.html', 'coupon_template.png', 'templates/coupon_thumb.html', 0, 0, 0),
(7, 'createyourown', 'templates/createyourown.html', 'createyourown_template.png', 'templates/createyourown_thumb.html', 0, 0, 0),
(228, 'ERA White Newsletter', 'templates/package_templates/realestate/ERA/theme3_newsletter.html', '', '', 6, 33, 1),
(227, 'ERA White Listing', 'templates/package_templates/realestate/ERA/theme3_listing.html', '', '', 6, 33, 0),
(226, 'ERA White Bio', 'templates/package_templates/realestate/ERA/theme3_bio_email.html', '', '', 6, 33, 0),
(225, 'ERA Blue Newsletter', 'templates/package_templates/realestate/ERA/theme1_newsletter.html', '', '', 6, 32, 1),
(224, 'ERA Blue Listing', 'templates/package_templates/realestate/ERA/theme1_listing.html', '', '', 6, 32, 0),
(223, 'ERA Blue Bio', 'templates/package_templates/realestate/ERA/theme1_bio_email.html', '', '', 6, 32, 0),
(18, 'Newsletter Right Column', 'templates/templates/layout1.html', '', 'templates/templates/layout1_thumb.html', 0, 0, 0),
(19, 'Newsletter Left Column', 'templates/templates/layout2.html', '', 'templates/templates/layout2_thumb.html', 0, 0, 0),
(20, 'Newsletter Full Double Header', 'templates/templates/layout3.html', '', 'templates/templates/layout3_thumb.html', 0, 0, 0),
(21, 'Newsletter Right Column No Header', 'templates/templates/layout4.html', '', 'templates/templates/layout4_thumb.html', 0, 0, 0),
(22, 'Newsletter Left Column Accent', 'templates/templates/layout5.html', '', 'templates/templates/layout5_thumb.html', 0, 0, 0),
(23, 'Newsletter Left Column No Header', 'templates/templates/layout6.html', '', 'templates/templates/layout6_thumb.html', 0, 0, 0),
(24, 'Themed Bio', 'templates/package_templates/realestate/default/default_templates/default_bio_email_1.html', '', '', 0, 6, 0),
(25, 'Themed Listing', 'templates/package_templates/realestate/default/default_templates/default_listing_1.html', '', '', 0, 6, 0),
(26, 'Themed Right Column', 'templates/package_templates/realestate/default/default_templates/default_newsletter_1.html', '', '', 0, 6, 0),
(28, 'Themed Left Column', 'templates/package_templates/realestate/default/default_templates/default_newsletter_2.html', '', '', 0, 5, 0),
(29, 'Themed Listing', 'templates/package_templates/realestate/default/default_templates/default_listing_1.html', '', '', 0, 5, 0),
(30, 'Themed Bio', 'templates/package_templates/realestate/default/default_templates/default_bio_email_1.html', '', '', 0, 5, 0),
(31, 'Century 21 Clean Bio', 'templates/package_templates/realestate/Century21/theme1_bio_email.html', '', '', 3, 8, 0),
(32, 'Century 21 Clean Listing', 'templates/package_templates/realestate/Century21/theme1_listing.html', '', '', 3, 8, 0),
(33, 'Century 21 Newsletter Clean', 'templates/package_templates/realestate/Century21/theme1_newsletter.html', '', '', 3, 8, 1),
(35, 'Century 21 Listing Bright', '/templates/package_templates/realestate/Century21/theme2_listing.html', '', '', 3, 9, 0),
(36, 'Century 21 Newsletter Bright', '/templates/package_templates/realestate/Century21/theme2_newsletter.html', '', '', 3, 9, 1),
(37, 'Century 21 Bio Bright', '/templates/package_templates/realestate/Century21/theme2_bio_email.html', '', '', 3, 9, 0),
(38, 'Century 21 Newsletter Deluxe', 'templates/package_templates/realestate/Century21/theme3_newsletter.html', '', '', 3, 10, 1),
(39, 'Century 21 Bio Deluxe', 'templates/package_templates/realestate/Century21/theme3_bio_email.html', '', '', 3, 10, 0),
(40, 'Century 21 Listing Deluxe', 'templates/package_templates/realestate/Century21/theme3_listing.html', '', '', 3, 10, 0),
(41, 'BH&G  Green Newsletter', 'templates/package_templates/realestate/BetterHomesGardens/theme1_newsletter.html', '', '', 7, 11, 1),
(42, 'BH&G  Green Bio', 'templates/package_templates/realestate/BetterHomesGardens/theme1_bio_email.html', '', '', 7, 11, 0),
(43, 'BH&G  Green Listing', 'templates/package_templates/realestate/BetterHomesGardens/theme1_listing.html', '', '', 7, 11, 0),
(44, 'BH&G  White Newsletter', 'templates/package_templates/realestate/BetterHomesGardens/theme2_newsletter.html', '', '', 7, 12, 1),
(45, 'BH&G  White Bio', 'templates/package_templates/realestate/BetterHomesGardens/theme2_bio_email.html', '', '', 7, 12, 0),
(46, 'BH&G  White Listing', 'templates/package_templates/realestate/BetterHomesGardens/theme2_listing.html', '', '', 7, 12, 0),
(47, 'BH&G  Deluxe Newsletter', 'templates/package_templates/realestate/BetterHomesGardens/theme3_newsletter.html', '', '', 7, 13, 1),
(48, 'BH&G  Deluxe Bio', 'templates/package_templates/realestate/BetterHomesGardens/theme3_bio_email.html', '', '', 7, 13, 0),
(49, 'BH&G  Deluxe Listing', 'templates/package_templates/realestate/BetterHomesGardens/theme3_listing.html', '', '', 7, 13, 0),
(50, 'Keller Williams  Deluxe Newsletter', 'templates/package_templates/realestate/KellerWilliams/theme3_newsletter.html', '', '', 1, 14, 1),
(51, 'Keller Williams Deluxe Bio', 'templates/package_templates/realestate/KellerWilliams/theme3_bio_email.html', '', '', 1, 14, 0),
(52, 'Keller Williams Deluxe Listing', 'templates/package_templates/realestate/KellerWilliams/theme3_listing.html', '', '', 1, 14, 0),
(53, 'Keller Williams  Bright Newsletter', 'templates/package_templates/realestate/KellerWilliams/theme2_newsletter.html', '', '', 1, 15, 1),
(54, 'Keller Williams Bright Bio', 'templates/package_templates/realestate/KellerWilliams/theme2_bio_email.html', '', '', 1, 15, 0),
(55, 'Keller Williams Bright Listing', 'templates/package_templates/realestate/KellerWilliams/theme2_listing.html', '', '', 1, 15, 0),
(56, 'Keller Williams Clean Newsletter', 'templates/package_templates/realestate/KellerWilliams/theme1_newsletter.html', '', '', 1, 16, 1),
(57, 'Keller Williams Clean Bio', 'templates/package_templates/realestate/KellerWilliams/theme1_bio_email.html', '', '', 1, 16, 0),
(58, 'Keller Williams Clean Listing', 'templates/package_templates/realestate/KellerWilliams/theme1_listing.html', '', '', 1, 16, 0),
(146, 'Prudential White Newsletter', 'templates/package_templates/realestate/Prudential/theme1_newsletter.html', '', '', 5, 20, 1),
(147, 'Prudential White Bio', 'templates/package_templates/realestate/Prudential/theme1_bio_email.html', '', '', 5, 20, 0),
(148, 'Prudential White Listing', 'templates/package_templates/realestate/Prudential/theme1_listing.html', '', '', 5, 20, 0),
(150, 'Prudential Light Blue Newsletter', 'templates/package_templates/realestate/Prudential/theme2_newsletter.html', '', '', 5, 21, 1),
(151, 'Prudential Light Blue Bio', 'templates/package_templates/realestate/Prudential/theme2_bio_email.html', '', '', 5, 21, 0),
(152, 'Prudential Light Blue Listing', 'templates/package_templates/realestate/Prudential/theme2_listing.html', '', '', 5, 21, 0),
(175, 'Exit Realty Theme1 Bio', 'templates/package_templates/realestate/ExitRealty/theme1_bio_email.html', '', '', 10, 17, 0),
(176, 'Exit Realty Theme1 Listing', 'templates/package_templates/realestate/ExitRealty/theme1_listing.html', '', '', 10, 17, 0),
(177, 'Exit Realty Theme1 Newsletter', 'templates/package_templates/realestate/ExitRealty/theme1_newsletter.html', '', '', 10, 17, 1),
(178, 'Exit Realty Theme2 Bio', 'templates/package_templates/realestate/ExitRealty/theme2_bio_email.html', '', '', 10, 18, 0),
(179, 'Exit Realty Theme2 Listing', 'templates/package_templates/realestate/ExitRealty/theme2_listing.html', '', '', 10, 18, 0),
(180, 'Exit Realty Theme2 Newsletter', 'templates/package_templates/realestate/ExitRealty/theme2_newsletter.html', '', '', 10, 18, 1),
(181, 'Exit Realty Theme3 Bio', 'templates/package_templates/realestate/ExitRealty/theme3_bio_email.html', '', '', 10, 19, 0),
(182, 'Exit Realty Theme3 Listing', 'templates/package_templates/realestate/ExitRealty/theme3_listing.html', '', '', 10, 19, 0),
(183, 'Exit Realty Theme3 Newsletter', 'templates/package_templates/realestate/ExitRealty/theme3_newsletter.html', '', '', 10, 19, 1),
(184, 'Prudential  Dark Blue Newsletter', 'templates/package_templates/realestate/Prudential/theme3_newsletter.html', '', '', 5, 22, 1),
(185, 'Prudential  Dark Blue Bio', 'templates/package_templates/realestate/Prudential/theme3_bio_email.html', '', '', 5, 22, 0),
(186, 'Prudential  Dark Blue Listing', 'templates/package_templates/realestate/Prudential/theme3_listing.html', '', '', 5, 22, 0),
(187, 'Nextage Theme1 Bio', 'templates/package_templates/realestate/Nextage/theme1_bio_email.html', '', '', 9, 23, 0),
(188, 'Nextage Theme1 Listing', 'templates/package_templates/realestate/Nextage/theme1_listing.html', '', '', 9, 23, 0),
(189, 'Nextage Theme1 Newsletter', 'templates/package_templates/realestate/Nextage/theme1_newsletter.html', '', '', 9, 23, 1),
(190, 'Nextage Theme2 Bio', 'templates/package_templates/realestate/Nextage/theme2_bio_email.html', '', '', 9, 24, 0),
(191, 'Nextxage Theme2 Listing', 'templates/package_templates/realestate/Nextage/theme2_listing.html', '', '', 9, 24, 0),
(192, 'Nextage Theme2 Newsletter', 'templates/package_templates/realestate/Nextage/theme2_newsletter.html', '', '', 9, 24, 1),
(193, 'Nextage Theme3 Bio', 'templates/package_templates/realestate/Nextage/theme3_bio_email.html', '', '', 9, 25, 0),
(194, 'Nextage Theme3 Listing', 'templates/package_templates/realestate/Nextage/theme3_listing.html', '', '', 9, 25, 0),
(195, 'Nextage Theme3 Newsletter', 'templates/package_templates/realestate/Nextage/theme3_newsletter.html', '', '', 9, 25, 1),
(196, 'Sothebys Newsletter 1', 'templates/package_templates/realestate/Sothebys/theme1_newsletter.html', '', '', 8, 29, 1),
(197, 'Sothebys Bio 1', 'templates/package_templates/realestate/Sothebys/theme1_bio_email.html', '', '', 8, 29, 0),
(198, 'Sothebys Listing 1', 'templates/package_templates/realestate/Sothebys/theme1_listing.html', '', '', 8, 29, 0),
(199, 'Sothebys Newsletter 2', 'templates/package_templates/realestate/Sothebys/theme2_newsletter.html', '', '', 8, 30, 1),
(200, 'Sothebys Bio 2', 'templates/package_templates/realestate/Sothebys/theme2_bio_email.html', '', '', 8, 30, 0),
(201, 'Sothebys Listing 2', 'templates/package_templates/realestate/Sothebys/theme2_listing.html', '', '', 8, 30, 0),
(202, 'Sothebys Newsletter 3', 'templates/package_templates/realestate/Sothebys/theme3_newsletter.html', '', '', 8, 31, 1),
(203, 'Sothebys Bio 3', 'templates/package_templates/realestate/Sothebys/theme3_bio_email.html', '', '', 8, 31, 0),
(204, 'Sothebys Listing 3', 'templates/package_templates/realestate/Sothebys/theme3_listing.html', '', '', 8, 31, 0),
(205, 'Coldwell Banker Newsletter 1', 'templates/package_templates/realestate/ColdwellBanker/theme1_newsletter.html', '', '', 4, 26, 1),
(206, 'Coldwell Banker Bio 1', 'templates/package_templates/realestate/ColdwellBanker/theme1_bio_email.html', '', '', 4, 26, 0),
(207, 'Coldwell Banker  Listing 1', 'templates/package_templates/realestate/ColdwellBanker/theme1_listing.html', '', '', 4, 26, 0),
(208, 'Coldwell Banker Newsletter 2', 'templates/package_templates/realestate/ColdwellBanker/theme2_newsletter.html', '', '', 4, 27, 1),
(209, 'Coldwell Banker Bio 2', 'templates/package_templates/realestate/ColdwellBanker/theme2_bio_email.html', '', '', 4, 27, 0),
(210, 'Coldwell Banker  Listing 2', 'templates/package_templates/realestate/ColdwellBanker/theme2_listing.html', '', '', 4, 27, 0),
(211, 'Coldwell Banker Newsletter 3', 'templates/package_templates/realestate/ColdwellBanker/theme3_newsletter.html', '', '', 4, 28, 1),
(212, 'Coldwell Banker Bio 3', 'templates/package_templates/realestate/ColdwellBanker/theme3_bio_email.html', '', '', 4, 28, 0),
(213, 'Coldwell Banker  Listing 3', 'templates/package_templates/realestate/ColdwellBanker/theme3_listing.html', '', '', 4, 28, 0),
(214, 'ReMax Balloon Bio', 'templates/package_templates/realestate/remax/remax_templates/balloon_bio_email.html', '', '', 2, 3, 0),
(215, 'ReMax Balloon Listing', 'templates/package_templates/realestate/remax/remax_templates/balloon_listing.html', '', '', 2, 3, 0),
(216, 'ReMax Balloon Newsletter', 'templates/package_templates/realestate/remax/remax_templates/balloon_newsletter.html', '', '', 2, 3, 1),
(217, 'ReMax Clouds Bio', 'templates/package_templates/realestate/remax/remax_templates/clouds_bio_email.html', '', '', 2, 2, 0),
(218, 'ReMax Clouds Listing', 'templates/package_templates/realestate/remax/remax_templates/clouds_listing.html', '', '', 2, 2, 0),
(219, 'ReMax Clouds Newsletter', 'templates/package_templates/realestate/remax/remax_templates/clouds_newsletter.html', '', '', 2, 2, 1),
(220, 'ReMax Tile Bio', 'templates/package_templates/realestate/remax/remax_templates/tile_bio_email.html', '', '', 2, 4, 0),
(221, 'ReMax Tile Listing', 'templates/package_templates/realestate/remax/remax_templates/tile_listing.html', '', '', 2, 4, 0),
(222, 'ReMax Tile Newsletter', 'templates/package_templates/realestate/remax/remax_templates/tile_newsletter.html', '', '', 2, 4, 1),
(229, 'ERA Red Bio', 'templates/package_templates/realestate/ERA/theme2_bio_email.html', '', '', 6, 34, 0),
(230, 'ERA Red Listing', 'templates/package_templates/realestate/ERA/theme2_listing.html', '', '', 6, 34, 0),
(231, 'ERA Red Newsletter', 'templates/package_templates/realestate/ERA/theme2_newsletter.html', '', '', 6, 34, 1),
(233, 'Beach Bio', 'templates/package_templates/realestate/Generic/beach/beach_bio_email.html', '', '', 11, 35, 0),
(234, 'Beach Listing', 'templates/package_templates/realestate/Generic/beach/beach_listing.html', '', '', 11, 35, 0),
(235, 'Beach Newletter', 'templates/package_templates/realestate/Generic/beach/beach_newsletter.html', '', '', 11, 35, 1),
(239, 'City Bio', 'templates/package_templates/realestate/Generic/city/city_bio_email.html', '', '', 11, 36, 0),
(240, 'City Listing', 'templates/package_templates/realestate/Generic/city/city_listing.html', '', '', 11, 36, 0),
(241, 'City Newsletter', 'templates/package_templates/realestate/Generic/city/city_newsletter.html', '', '', 11, 36, 1),
(242, 'Coulds Bio', 'templates/package_templates/realestate/Generic/clouds/clouds_bio_email.html', '', '', 11, 38, 0),
(243, 'Clouds Listing', 'templates/package_templates/realestate/Generic/clouds/clouds_listing.html', '', '', 11, 38, 0),
(244, 'Clouds Newsletter', 'templates/package_templates/realestate/Generic/clouds/clouds_newsletter.html', '', '', 11, 38, 1),
(245, 'Mountains Bio', 'templates/package_templates/realestate/Generic/mountains/mountains_bio_email.html', '', '', 11, 40, 0),
(246, 'Mountains Listing', 'templates/package_templates/realestate/Generic/mountains/mountains_listing.html', '', '', 11, 40, 0),
(247, 'Mountains Newletter', 'templates/package_templates/realestate/Generic/mountains/mountains_newsletter.html', '', '', 11, 40, 1),
(248, 'Pattern Bio', 'templates/package_templates/realestate/Generic/pattern/pattern_bio_email.html', '', '', 11, 42, 0),
(249, 'Pattern Listing', 'templates/package_templates/realestate/Generic/pattern/pattern_listing.html', '', '', 11, 42, 0),
(250, 'Pattern Newletter', 'templates/package_templates/realestate/Generic/pattern/pattern_newsletter.html', '', '', 11, 42, 1),
(251, 'Rural Bio', 'templates/package_templates/realestate/Generic/rural/rural_bio_email.html', '', '', 11, 44, 0),
(252, 'Rural Listing', 'templates/package_templates/realestate/Generic/rural/rural_listing.html', '', '', 11, 44, 0),
(253, 'Rural Newletter', 'templates/package_templates/realestate/Generic/rural/rural_newsletter.html', '', '', 11, 44, 1),
(265, 'Mock 1 Newsletter', 'templates/package_templates/realestate/examples/emails/theme1_newsletter.html', '', '', 99, 45, 1),
(266, 'Mock 1 Listing', 'templates/package_templates/realestate/examples/emails/theme1_listing.html', '', '', 99, 45, 0),
(267, 'Mock 1 Bio', 'templates/package_templates/realestate/examples/emails/theme1_bio.html', '', '', 99, 45, 0),
(268, 'Mock 2 Newsletter', 'templates/package_templates/realestate/examples/emails/theme2_newsletter.html', '', '', 99, 46, 1),
(269, 'Mock 2 Listing', 'templates/package_templates/realestate/examples/emails/theme2_listing.html', '', '', 99, 46, 0),
(270, 'Mock 2 Bio', 'templates/package_templates/realestate/examples/emails/theme2_bio.html', '', '', 99, 46, 0),
(254, 'Frame', 'templates/theme_templates/Frame.html', '', '', 0, 0, 0),
(255, 'Abstract', 'templates/theme_templates/Abstract.html', '', '', 0, 0, 0),
(256, 'Banner', 'templates/theme_templates/Banner.html', '', '', 0, 0, 0),
(257, 'Banner2', 'templates/theme_templates/Banner2.html', '', '', 0, 0, 0),
(258, 'Banner (Left Column)', 'templates/theme_templates/Banner_left_column.html', '', '', 0, 0, 0),
(259, 'Bar Menu', 'templates/theme_templates/Bar_menu.html', '', '', 0, 0, 0),
(260, 'Blue & Yellow', 'templates/theme_templates/Blue_yellow.html', '', '', 0, 0, 0),
(261, 'Boo', 'templates/theme_templates/Boo.html', '', '', 0, 0, 0),
(262, 'Elegant', 'templates/theme_templates/Elegant_Wedding.html', '', '', 0, 0, 0),
(263, 'Simple Meld\r\n', 'templates/theme_templates/Simple_Meld.html', '', '', 0, 0, 0),
(264, 'Slate', 'templates/theme_templates/Slate.html', '', '', 0, 0, 0),
(271, 'Fourth of July', 'templates/theme_templates/fourth_of_july.html', '', '', 0, 0, 0),
(272, 'Countryside', 'templates/theme_templates/countryside.html', '', '', 0, 0, 0),
(273, 'Vacation', 'templates/theme_templates/vacay.html', '', '', 0, 0, 0),
(274, 'Light', 'templates/theme_templates/Light.htm', '', '', 0, 0, 0),
(275, 'Mint', 'templates/theme_templates/Mint.htm', '', '', 0, 0, 0),
(276, 'Letter', 'templates/theme_templates/Letter.htm', '', '', 0, 0, 0),
(277, 'Football 1', 'templates/theme_templates/football.htm', '', '', 0, 0, 0),
(278, 'Football 2', 'templates/theme_templates/football2.htm', '', '', 0, 0, 0),
(279, 'Football 3', 'templates/theme_templates/football3.htm', '', '', 0, 0, 0),
(280, 'Frame 2', 'templates/theme_templates/Frame2.htm', '', '', 0, 0, 0),
(281, 'Green', 'templates/theme_templates/Green.htm', '', '', 0, 0, 0),
(282, 'Grey/Yellow', 'templates/theme_templates/grey_yellow.htm', '', '', 0, 0, 0),
(283, 'Film', 'templates/theme_templates/film.htm', '', '', 0, 0, 0),
(284, 'Film 2', 'templates/theme_templates/film2.htm', '', '', 0, 0, 0),
(285, 'Film 3', 'templates/theme_templates/film3.htm', '', '', 0, 0, 0),
(286, 'Earth', 'templates/theme_templates/Earth.htm', '', '', 0, 0, 0),
(287, 'Chocolate', 'templates/theme_templates/Chocolate.htm', '', '', 0, 0, 0),
(288, 'Dark', 'templates/theme_templates/Dark.htm', '', '', 0, 0, 0),
(289, 'Boo 3', 'templates/theme_templates/Boo3.htm', '', '', 0, 0, 0),
(290, 'Professional', 'templates/theme_templates/Professional.html', '', '', 0, 0, 0),
(291, 'Morning Dew', 'templates/theme_templates/morning_dew.htm', '', '', 0, 0, 0),
(292, 'Thanksgiving', 'templates/theme_templates/Thanksgiving.html', '', '', 0, 0, 0),
(293, 'Tiers', 'templates/theme_templates/Tiers.html', '', '', 0, 0, 0),
(295, 'LaB Bio 1', 'templates/package_templates/realestate/LatterAndBlum/theme1_bio_email.html', '', '', 12, 47, 0),
(296, 'LaB Listing 1', 'templates/package_templates/realestate/LatterAndBlum/theme1_listing.html', '', '', 12, 47, 0),
(297, 'LaB Newsletter 1', 'templates/package_templates/realestate/LatterAndBlum/theme1_newsletter.html', '', '', 12, 47, 1),
(298, 'LaB Bio 2', 'templates/package_templates/realestate/LatterAndBlum/theme2_bio_email.html', '', '', 12, 48, 0),
(299, 'LaB Listing 2', 'templates/package_templates/realestate/LatterAndBlum/theme2_listing.html', '', '', 12, 48, 0),
(300, 'LaB Newsletter 2', 'templates/package_templates/realestate/LatterAndBlum/theme2_newsletter.html', '', '', 12, 48, 1),
(301, 'LaB Bio 3', 'templates/package_templates/realestate/LatterAndBlum/theme3_bio_email.html', '', '', 12, 49, 0),
(302, 'LaB Listing 3', 'templates/package_templates/realestate/LatterAndBlum/theme3_listing.html', '', '', 12, 49, 0),
(303, 'LaB Newsletter 3', 'templates/package_templates/realestate/LatterAndBlum/theme3_newsletter.html', '', '', 12, 49, 1),
(305, 'Flavin Listing 1', 'templates/package_templates/realestate/Flavin/flavin1_listing.html', '', '', 13, 50, 0),
(306, 'Flavin Newsletter 1', 'templates/package_templates/realestate/Flavin/flavin1_newsletter.html', '', '', 13, 50, 1),
(307, 'Flavin Bio 2', 'templates/package_templates/realestate/Flavin/flavin2_bio_email.html', '', '', 13, 51, 0),
(308, 'Flavin Listing 2', 'templates/package_templates/realestate/Flavin/flavin2_listing.html', '', '', 13, 51, 0),
(309, 'Flavin Newsletter 2', 'templates/package_templates/realestate/Flavin/flavin2_newsletter.html', '', '', 13, 51, 1),
(304, 'Flavin Bio 1', 'templates/package_templates/realestate/Flavin/flavin1_bio_email.html', '', '', 13, 50, 0),
(310, 'Modern Halloween Left', 'templates/theme_templates/Halloween_01_left.html', '', '', 0, 0, 0),
(311, 'Modern Halloween Right', 'templates/theme_templates/Halloween_01_right.html', '', '', 0, 0, 0),
(312, 'Autumn Gourds Right', 'templates/theme_templates/Thanksgiving_01_left.html', '', '', 0, 0, 0),
(313, 'Autumn Gourds Left', 'templates/theme_templates/Thanksgiving_01_right.html', '', '', 0, 0, 0),
(314, 'Pumpkins Right', 'templates/theme_templates/Halloween_02_right.html', '', '', 0, 0, 0),
(315, 'Pumpkins Left', 'templates/theme_templates/Halloween_02_left.html', '', '', 0, 0, 0),
(316, 'New Homes America Newsletter', 'templates/package_templates/custom/NewHomesAmerica/newsletter.html', '', '', 14, 52, 1),
(317, 'LaB Classic Homes and Properties Newsletter', 'templates/package_templates/custom/ClassicHomesandProperties/theme3_newsletter.html', '', '', 15, 53, 1),
(318, 'LaB Classic Homes and Properties Bio', 'templates/package_templates/custom/ClassicHomesandProperties/theme3_bio_email.html', '', '', 15, 53, 0),
(319, 'LaB Classic Homes and Properties Listing', 'templates/package_templates/custom/ClassicHomesandProperties/theme3_listing.html', '', '', 15, 53, 0),
(320, 'Helene Nunez Custom', 'templates/package_templates/custom/Helene/helene_newsletter.html', '', '', 16, 54, 1),
(321, 'Benfatti Custom', 'templates/package_templates/custom/Benfatti/newsletter.html', '', '', 17, 55, 1),
(322, 'Benfatti Custom ', 'templates/package_templates/custom/Benfatti/bio_email.html', '', '', 17, 55, 0),
(323, 'Benfatti Custom', 'templates/package_templates/custom/Benfatti/listing.html', '', '', 17, 55, 0),
(324, 'Ultimate Siding Newsletter', 'templates/package_templates/custom/Ultimate/newsletter.html', '', '', 18, 56, 1),
(325, 'Ultimate Siding Bio', 'templates/package_templates/custom/Ultimate/bio_email.html', '', '', 18, 56, 0),
(326, 'Ultimate Siding Listing', 'templates/package_templates/custom/Ultimate/listing.html', '', '', 18, 56, 0),
(330, 'Season Greetings - Left', 'templates/theme_templates/Christmas_01_left.html', '', '', 0, 0, 0),
(331, 'Season Greetings - Right', 'templates/theme_templates/Christmas_01_right.html', '', '', 0, 0, 0),
(332, 'New Year - Left', 'templates/theme_templates/NewYears_01_left.html', '', '', 0, 0, 0),
(333, 'New Year - Right', 'templates/theme_templates/NewYears_01_right.html', '', '', 0, 0, 0),
(334, 'Christmas 2', 'templates/theme_templates/Christmas_02.html', '', '', 0, 0, 0),
(335, 'Christmas 3 Left', 'templates/theme_templates/Christmas_03_left.html', '', '', 0, 0, 0),
(336, 'Christmas 3 Right', 'templates/theme_templates/Christmas_03_right.html', '', '', 0, 0, 0),
(337, 'Bohannon', 'templates/package_templates/custom/Bohannon/theme2_newsletter.html', '', '', 19, 57, 1),
(338, 'Bohannon 2', 'templates/package_templates/custom/Bohannon/theme2_listing.html', '', '', 19, 57, 0),
(339, 'Bohannon 3', 'templates/package_templates/custom/Bohannon/theme2_bio_email.html', '', '', 19, 57, 0),
(340, 'Sharon Abell Newsletter', 'templates/package_templates/custom/SharonAbell/tile_newsletter.html', '', '', 20, 58, 1),
(341, 'Sharon Abell Bio', 'templates/package_templates/custom/SharonAbell/tile_bio_email.html', '', '', 20, 58, 0),
(342, 'Sharon Abell Listing', 'templates/package_templates/custom/SharonAbell/tile_listing.html', '', '', 20, 58, 0),
(344, 'Luxury Countertops Custom', 'templates/package_templates/custom/LuxuryCountertops/newsletter.html', '', '', 21, 59, 1),
(345, 'Valentine Medical Custom', 'templates/package_templates/custom/Valentine/newsletter.html', '', '', 22, 60, 1),
(346, 'Hayden Newsletter Custom', 'templates/package_templates/custom/Hayden/tile_hayden_newsletter.html', '', '', 23, 61, 1),
(347, 'Ward Newsletter Custom', 'templates/package_templates/custom/Ward/ward_newsletter.html', '', '', 24, 62, 1),
(348, 'Averbeck Newsletter Custom', 'templates/package_templates/custom/Averbeck/chairs_newsletter.html', '', '', 25, 63, 1),
(349, 'ReMax Chairs Newsletter', 'templates/package_templates/realestate/remax/remax_templates/chairs_newsletter.html', '', '', 2, 64, 1),
(350, 'ReMax Chairs Bio', 'templates/package_templates/realestate/remax/remax_templates/chairs_bio_email.html', '', '', 2, 64, 0),
(351, 'ReMax Chairs Listing', 'templates/package_templates/realestate/remax/remax_templates/chairs_listing.html', '', '', 2, 64, 0),
(352, 'content_left_column', 'templates/content_program_left_column.html', '', '', 0, 0, 0),
(353, 'content_right_column', 'templates/content_program_right_column.html', '', '', 0, 0, 0),
(354, 'content_right_column', 'templates/content_program_right_column_condensed.html', '', '', 0, 0, 0),
(355, 'base_responsive', 'templates/responsive/basic.html', 'basic_template.png', 'templates/basic_thumb.html', 0, 0, 0),
(356, 'left_column_responsive', 'templates/responsive/left_column.html', 'left_column_template.png', 'templates/left_column_thumb.html', 0, 0, 0),
(357, 'right_column_responsive', 'templates/responsive/right_column.html', 'right_column_template.png', 'templates/right_column_thumb.html', 0, 0, 0),
(358, 'postcard_responsive', 'templates/responsive/postcard.html', 'postcard_template.png', 'templates/postcard_thumb.html', 0, 0, 0),
(359, 'coupon_responsive', 'templates/responsive/coupon.html', 'coupon_template.png', 'templates/coupon_thumb.html', 0, 0, 0),
(360, 'createyourown_responsive', 'templates/responsive/createyourown.html', 'createyourown_template.png', 'templates/createyourown_thumb.html', 0, 0, 0),
(400, 'content_no_column', 'templates/content_program_no_column.html', '', '', 0, 0, 0),
(401, 'content_no_column_articles', 'templates/content_program_no_column_articles.html', '', '', 0, 0, 0),
(402, 'Newsletter Left Column', 'templates/responsive/layout1_responsive.html', '', 'templates/templates/layout1_thumb.html', 0, 0, 0),
(403, 'Newsletter Right Column', 'templates/responsive/layout2_responsive.html', '', 'templates/templates/layout2_thumb.html', 0, 0, 0),
(404, 'Newsletter Full Double Header', 'templates/responsive/layout3_responsive.html', '', 'templates/templates/layout3_thumb.html', 0, 0, 0),
(900, 'right_column', 'templates/right_column_4c.html', 'right_column_template.png', 'templates/right_column_thumb.html', 0, 0, 0),
(901, 'left_column', 'templates/left_column_4c.html', 'left_column_template.png', 'templates/left_column_thumb.html', 0, 0, 0),
(902, 'left_column_responsive', 'templates/responsive/left_column_4c.html', 'left_column_template.png', 'templates/left_column_thumb.html', 0, 0, 0),
(903, 'right_column_responsive', 'templates/responsive/right_column_4c.html', 'right_column_template.png', 'templates/right_column_thumb.html', 0, 0, 0),
(904, 'Newsletter Left Column', 'templates/responsive/layout1_responsive_5c.html', '', 'templates/templates/layout1_thumb.html', 0, 0, 0),
(905, 'Newsletter Right Column', 'templates/responsive/layout2_responsive_5c.html', '', 'templates/templates/layout2_thumb.html', 0, 0, 0),
(914, '2 Column Balanced', 'app/view/templates/email/email_templates/2_column_balanced.html', '2column_balanced.jpg', '', 0, 0, 0),
(908, '2 Column Left', 'app/view/templates/email/email_templates/2_column_left.html', '2column_left.jpg', '', 0, 0, 0),
(909, '2 Column Right', 'app/view/templates/email/email_templates/2_column_right.html', '2column_right.jpg', '', 0, 0, 0),
(910, '3 Column', 'app/view/templates/email/email_templates/3_column.html', '3column.jpg', '', 0, 0, 0),
(911, 'Listing', 'app/view/templates/email/email_templates/listing.html', 'listing_layout.jpg', '', 0, 0, 0),
(912, 'Open House', 'app/view/templates/email/email_templates/open_house.html', 'open_house_layout.jpg', '', 0, 0, 0),
(913, 'Single Column', 'app/view/templates/email/email_templates/single_column.html', 'single_column.jpg', '', 0, 0, 0),
(907, 'From Scratch', 'app/view/templates/email/email_templates/from_scratch.html', '', '', 0, 0, 0),
(915, 'Simple Article', 'app/view/templates/email/email_templates/simple_article.html', '', '', 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
