--
-- Table structure for table `acl_groups`
--

DROP TABLE IF EXISTS `acl_groups`;
CREATE TABLE IF NOT EXISTS `acl_groups` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(50) default NULL,
  PRIMARY KEY  (`group_id`),
  UNIQUE KEY `group_name_UNIQUD` (`group_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Mock data for ACL Groups
--

INSERT INTO `acl_groups` (`group_id`, `group_name`) VALUES
(13, 'Admin'),
(14, 'Subuser');

--
-- Table structure for table `acl_groups_permissions`
--

DROP TABLE IF EXISTS `acl_groups_permissions`;
CREATE TABLE IF NOT EXISTS `acl_groups_permissions` (
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`group_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Mock data for table `acl_groups_permissions`
--

INSERT INTO `acl_groups_permissions` (`group_id`, `permission_id`) VALUES
(13, 1),
(14, 2);

--
-- Table structure for table `acl_permissions`
--

DROP TABLE IF EXISTS `acl_permissions`;
CREATE TABLE IF NOT EXISTS `acl_permissions` (
  `permission_id` int(11) NOT NULL auto_increment,
  `permission_name` varchar(50) default NULL,
  `nice_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sub_user_only` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`permission_id`),
  UNIQUE KEY `permission_name_UNIQUE` (`permission_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Mock data for table `acl_permissions`
--

INSERT INTO `acl_permissions` (`permission_id`, `permission_name`, `nice_name`, `description`, `sub_user_only`) VALUES
(1, 'admin_view_users', 'View All Users', 'Lets user view all eMerge users', 0),
(2, 'social_view_scheduled', 'View Social Scheduled', 'Lets user view all upcoming scheduled items.', 0),
(3, 'sub_requires_email_approval', 'Requires Approval for Emails', '', 1),
(4, 'sub_can_view_parent_emails', 'Sub User Can View My Emails', '', 1),
(5, 'sub_requires_social_approval', 'Requires Approval for Social Media', '', 1);

--
-- Table structure for table `acl_users_permissions`
--

DROP TABLE IF EXISTS `acl_users_permissions`;
CREATE TABLE IF NOT EXISTS `acl_users_permissions` (
  `user_id` int(11) NOT NULL,
  `is_subid` tinyint(4) NOT NULL default '0',
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`is_subid`,`permission_id`),
  KEY `user_id` (`user_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Mock data for table `acl_users_permissions`
--

INSERT INTO `acl_users_permissions` (`user_id`, `is_subid`, `permission_id`) VALUES
(1, 1, 3),
(1, 1, 4),
(6, 1, 3),
(8, 1, 3),
(11, 1, 3),
(11, 1, 4),
(11, 1, 5),
(12, 1, 4),
(20, 0, 1),
(20, 0, 2),
(234, 0, 1),
(234, 0, 2),
(286, 0, 1),
(629, 0, 1),
(1839, 0, 1),
(1908, 0, 1),
(1957, 0, 1),
(2039, 0, 1),
(2051, 0, 1),
(2170, 0, 1),
(2506, 0, 1),
(2520, 0, 1),
(2904, 0, 2);

--
-- Table structure for table `acl_users_to_groups`
--

DROP TABLE IF EXISTS `acl_users_to_groups`;
CREATE TABLE IF NOT EXISTS `acl_users_to_groups` (
  `user_id` int(11) NOT NULL,
  `is_subid` tinyint(4) NOT NULL default '0',
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`is_subid`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Mock data for table `acl_users_to_groups`
--

INSERT INTO `acl_users_to_groups` (`user_id`, `is_subid`, `group_id`) VALUES
(147, 1, 13),
(629, 0, 14);
