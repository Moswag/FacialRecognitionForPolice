-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 01, 2019 at 09:15 AM
-- Server version: 10.0.35-MariaDB
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime_identify`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add user', 7, 'add_user'),
(20, 'Can change user', 7, 'change_user'),
(21, 'Can delete user', 7, 'delete_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-22 13:57:20'),
(2, 'auth', '0001_initial', '2019-04-22 13:57:38'),
(3, 'admin', '0001_initial', '2019-04-22 13:57:43'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-04-22 13:57:43'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-04-22 13:57:46'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-04-22 13:57:48'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-04-22 13:57:49'),
(8, 'auth', '0004_alter_user_username_opts', '2019-04-22 13:57:49'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-04-22 13:57:50'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-04-22 13:57:51'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-04-22 13:57:51'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-04-22 13:57:53'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2019-04-22 13:57:55'),
(14, 'sessions', '0001_initial', '2019-04-22 13:57:56'),
(15, 'main', '0001_initial', '2019-04-22 13:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9k7iyhaalq6s9mmuc4avs25ngsh2kfq7', 'NTkxYWYyYTI0YTEzMDYwZjFmODE0MWM2MGMxOGUyMDVjZTZmOTc1Mjp7ImlkIjoxfQ==', '2019-05-28 15:12:11'),
('bkvjcu98p4ezzes3jyrftx36gpsfq4g4', 'NTkxYWYyYTI0YTEzMDYwZjFmODE0MWM2MGMxOGUyMDVjZTZmOTc1Mjp7ImlkIjoxfQ==', '2019-05-22 05:50:37'),
('fcet2fbtv6rue3erj8vx0vfmbil1srm0', 'MDM1ZWRiYzc0NGM3MTNmNGUxY2ZlYjczMTdkNjQ5NTcxZGUzMjEyODp7Im5hbWUiOiJXYXluZSIsImlkIjoxLCJzdXJuYW1lIjoiQnV0ZXRlIn0=', '2019-06-15 09:03:40'),
('furkfc9r8yimpz2nfgvsmrw3dcouzbww', 'NTkxYWYyYTI0YTEzMDYwZjFmODE0MWM2MGMxOGUyMDVjZTZmOTc1Mjp7ImlkIjoxfQ==', '2019-05-21 17:39:08'),
('fy21ax9t6m9wharyv6ug21hbvtv2ogdq', 'NTkxYWYyYTI0YTEzMDYwZjFmODE0MWM2MGMxOGUyMDVjZTZmOTc1Mjp7ImlkIjoxfQ==', '2019-05-18 06:48:03'),
('l1r21cs95x090fxouazxf7s62isl7mno', 'Y2MyYzYxN2EyOTkyYzFmZWY1YmE5ZGVjMjU2Mzk4ZTY5N2VlYTk4Mjp7ImlkIjoxLCJzdXJuYW1lIjoiQnV0ZXRlIiwibmFtZSI6IldheW5lIn0=', '2019-05-29 13:47:28'),
('nou2rmxi419o5jpvmaeyboiajbwkil3z', 'NTkxYWYyYTI0YTEzMDYwZjFmODE0MWM2MGMxOGUyMDVjZTZmOTc1Mjp7ImlkIjoxfQ==', '2019-05-27 09:15:23'),
('uforzmwtd32ryd924kbl2p8y3powls0x', 'ZDliYTkzNTNiMjlhZTc1MmY2MDVlMTg5YmVjN2QwNGEwNzBiNjUwNzp7ImlkIjoxLCJuYW1lIjoiV2F5bmUiLCJzdXJuYW1lIjoiQnV0ZXRlIn0=', '2019-06-01 11:51:49'),
('ugyxwgytnh68fjam9s1lon9k9qv02bah', 'NTkxYWYyYTI0YTEzMDYwZjFmODE0MWM2MGMxOGUyMDVjZTZmOTc1Mjp7ImlkIjoxfQ==', '2019-05-20 18:59:52'),
('ulcmw9vv6dx6n0wywp6d7li9mv042da1', 'NTkxYWYyYTI0YTEzMDYwZjFmODE0MWM2MGMxOGUyMDVjZTZmOTc1Mjp7ImlkIjoxfQ==', '2019-05-07 19:07:26'),
('uqvt0q6olq8qfkkvlvm9l6bw9qni5nng', 'ZDliYTkzNTNiMjlhZTc1MmY2MDVlMTg5YmVjN2QwNGEwNzBiNjUwNzp7ImlkIjoxLCJuYW1lIjoiV2F5bmUiLCJzdXJuYW1lIjoiQnV0ZXRlIn0=', '2019-06-04 15:22:37'),
('vjye18ht20d7urjpk5asktefjkw9ywd3', 'NDE2YTNmM2FmNDY3ODc1OTJkYWUxM2MwMzdhZDI5YTJmZGIyZWQ0Mjp7InN1cm5hbWUiOiJCdXRldGUiLCJuYW1lIjoiV2F5bmUiLCJpZCI6MX0=', '2019-05-31 11:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `main_file`
--

CREATE TABLE `main_file` (
  `id` int(11) NOT NULL,
  `file` blob NOT NULL,
  `remark` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main_file`
--

INSERT INTO `main_file` (`id`, `file`, `remark`, `timestamp`) VALUES
(1, 0x77726c2e706e67, '43762889', '2019-05-13 04:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `main_location`
--

CREATE TABLE `main_location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_person`
--

CREATE TABLE `main_person` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main_person`
--

INSERT INTO `main_person` (`id`, `name`, `national_id`, `address`, `picture`, `status`, `created_at`, `updated_at`) VALUES
(15, 'Wayne Butete', '30303030', '1234 Mbare Zimbabwe', 'media/wayne2.jpg', 'Wanted', '2019-05-15 12:57:31', '2019-05-15 12:57:31'),
(16, 'patience', '30123479', '3456 nehanda gweru', 'media/patie.jpg', 'Found', '2019-05-21 15:01:56', '2019-05-21 15:01:56'),
(17, 'Webster Moswa', '29295480M07', '1450 Woodlands Park', 'media/moswa_Ov2AjO2.png', 'Wanted', '2019-05-25 10:59:30', '2019-05-25 10:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `main_thieflocation`
--

CREATE TABLE `main_thieflocation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_user`
--

CREATE TABLE `main_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main_user`
--

INSERT INTO `main_user` (`id`, `first_name`, `last_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Webster ', 'Moswa', '2020', '$2a$12$FhfhsEw3eDsHwANAnQhTSumm/Tp32zP2vZZQOczyoL8xJKJoHRzx.', '2019-04-22 16:00:52', '2019-04-22 16:00:52'),
(7, 'Patience', 'Njiri', '7070', '$2a$12$LPcceVUQiNF.kk1obokmb.8XZjsStIkCuBgjkS.m/FH5btVgviISi', '2019-05-22 06:22:36', '2019-05-22 06:22:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `main_file`
--
ALTER TABLE `main_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_location`
--
ALTER TABLE `main_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_person`
--
ALTER TABLE `main_person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_thieflocation`
--
ALTER TABLE `main_thieflocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_user`
--
ALTER TABLE `main_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `main_file`
--
ALTER TABLE `main_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_location`
--
ALTER TABLE `main_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_person`
--
ALTER TABLE `main_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `main_thieflocation`
--
ALTER TABLE `main_thieflocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=824;

--
-- AUTO_INCREMENT for table `main_user`
--
ALTER TABLE `main_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
