-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 nov. 2022 à 12:55
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `django_framework_exercice`
--

-- --------------------------------------------------------

--
-- Structure de la table `app_cosutumuser`
--

CREATE TABLE `app_cosutumuser` (
  `CosutumUserId` bigint(20) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `Nom` varchar(45) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `UserId_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_cosutumuser`
--

INSERT INTO `app_cosutumuser` (`CosutumUserId`, `Prenom`, `Nom`, `Type`, `UserId_id`) VALUES
(1, 'zakaria', 'elhosni', 'rh', 1),
(2, 'zakaria', 'elhosni', 'employé', 2);

-- --------------------------------------------------------

--
-- Structure de la table `app_employee`
--

CREATE TABLE `app_employee` (
  `id` bigint(20) NOT NULL,
  `numero_employe` varchar(45) NOT NULL,
  `jours_travailles` int(11) NOT NULL,
  `date_embauche` date NOT NULL,
  `date_demission` date NOT NULL,
  `CosutumUserId_id` bigint(20) NOT NULL,
  `Cin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_employee`
--

INSERT INTO `app_employee` (`id`, `numero_employe`, `jours_travailles`, `date_embauche`, `date_demission`, `CosutumUserId_id`, `Cin`) VALUES
(1, '200000', 19, '2022-11-15', '2022-11-30', 1, '03a5uSbq'),
(2, '145254', 32, '2022-08-15', '2022-10-30', 1, 'WXhFgQHi'),
(3, '200002', 28, '2022-11-15', '2022-11-30', 1, 'qIVMC9xM'),
(4, '100407', 32, '2022-07-15', '2022-08-30', 1, '0cL8PT0Z'),
(5, '100408', 32, '2022-01-15', '2022-04-30', 1, 'jBD6h7vg'),
(6, '100411', 32, '2022-11-15', '2022-11-30', 1, 'FJdXiyxF'),
(7, '251445', 32, '2022-01-15', '2022-11-16', 1, 'aFj9pI9d'),
(8, '256545', 32, '2022-05-15', '2022-09-30', 1, 'QYL37dyD'),
(9, '149583', 32, '2022-08-15', '2022-10-30', 1, 'CXRi8g5d'),
(10, '142565', 32, '2022-11-15', '2022-11-30', 1, 'TFJygmy9'),
(11, '212565', 32, '2022-07-15', '2022-08-30', 1, 'sIHKBEtO'),
(12, '145784', 32, '2022-01-15', '2022-04-30', 1, 'bCuOcEtI'),
(13, '100415', 32, '2022-11-15', '2022-11-30', 1, 'OXk4l48S'),
(14, '100416', 32, '2022-01-15', '2022-11-30', 1, 'kzxe42Z4'),
(15, '100475', 32, '2022-05-15', '2022-09-30', 1, '9rxiMvOA'),
(16, '100463', 32, '2022-08-15', '2022-10-30', 1, 'h9kE6Jqf'),
(17, '100488', 32, '2022-11-15', '2022-11-30', 1, 'hO1VuOVu.'),
(18, '100498', 32, '2022-07-15', '2022-08-30', 1, '7UNhyspx'),
(19, '100507', 32, '2022-01-15', '2022-04-30', 1, 'NZl20V4X'),
(20, '100506', 32, '2022-11-15', '2022-11-30', 1, 'J5GEpKgT'),
(21, '100514', 32, '2022-01-15', '2022-11-17', 1, 'rKsC2HPk'),
(22, '100531', 32, '2022-05-17', '2022-09-28', 1, 'm5og2QnI');

-- --------------------------------------------------------

--
-- Structure de la table `app_file`
--

CREATE TABLE `app_file` (
  `id` bigint(20) NOT NULL,
  `file_csv` varchar(100) NOT NULL,
  `traité` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `uploadé_par_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_file`
--

INSERT INTO `app_file` (`id`, `file_csv`, `traité`, `created`, `updated`, `uploadé_par_id`) VALUES
(1, 'App/dcsdcsdcscd.csv', 1, '2022-11-25 13:06:37.643903', '2022-11-25 13:06:37.643903', 1),
(2, 'App/dcsdcsdcscd_7jjhT6n.csv', 1, '2022-11-25 13:52:37.420896', '2022-11-25 13:52:37.420896', 1),
(3, 'App/dcsdcsdcscd_KjE67RR.csv', 1, '2022-11-25 13:53:13.854250', '2022-11-25 13:53:13.854250', 1),
(4, 'App/dcsdcsdcscd_pC0ZyKT.csv', 1, '2022-11-25 13:53:30.578514', '2022-11-25 13:53:30.578514', 1),
(5, 'App/dcsdcsdcscd_nFbd0kI.csv', 1, '2022-11-25 13:54:03.434516', '2022-11-25 13:54:03.434516', 1),
(6, 'App/dcsdcsdcscd_syxeqZu.csv', 1, '2022-11-25 13:55:39.078515', '2022-11-25 13:55:39.078515', 1),
(7, 'App/dcsdcsdcscd_bEi8aZK.csv', 1, '2022-11-25 13:56:00.215185', '2022-11-25 13:56:00.215185', 1),
(8, 'App/dcsdcsdcscd_3SdC3tR.csv', 1, '2022-11-25 13:57:49.013538', '2022-11-25 13:57:49.013538', 1),
(9, 'App/dcsdcsdcscd_iztRzkU.csv', 1, '2022-11-25 15:33:17.094947', '2022-11-25 15:33:17.094947', 1),
(10, 'App/new_2.csv', 1, '2022-11-28 08:58:14.998299', '2022-11-28 08:58:14.998299', 1),
(11, 'App/new_2_UqwGIIP.csv', 1, '2022-11-28 09:00:09.043577', '2022-11-28 09:00:09.043577', 1),
(12, 'App/new_3.csv', 1, '2022-11-28 09:00:16.043773', '2022-11-28 09:00:16.043773', 1),
(13, 'App/new_3_NzQ79ir.csv', 1, '2022-11-28 09:17:34.044142', '2022-11-28 09:17:34.044142', 1),
(14, 'App/new_3_WxvPadP.csv', 1, '2022-11-28 09:18:01.856123', '2022-11-28 09:18:01.856123', 1),
(15, 'App/new_3_fDf9DRe.csv', 1, '2022-11-28 09:31:48.367537', '2022-11-28 09:31:48.367537', 1),
(16, 'App/hhhh.csv', 1, '2022-11-28 09:34:32.365246', '2022-11-28 09:34:32.365246', 1),
(17, 'App/hhhh_ZLHbDsN.csv', 1, '2022-11-28 09:37:24.726475', '2022-11-28 09:37:24.726475', 1),
(18, 'App/hhhh_idm5CVs.csv', 1, '2022-11-28 09:40:48.704483', '2022-11-28 09:40:48.704483', 1),
(19, 'App/hhhh_IcAUQmO.csv', 1, '2022-11-28 09:47:42.291475', '2022-11-28 09:47:42.291475', 1),
(20, 'App/hhhh_oe2Vpy9.csv', 1, '2022-11-28 09:47:50.632296', '2022-11-28 09:47:50.633255', 1),
(21, 'App/hhhh_t284Mxc.csv', 1, '2022-11-28 09:48:32.581222', '2022-11-28 09:48:32.581222', 1),
(22, 'App/hhhh_UzloLaH.csv', 1, '2022-11-28 09:50:23.655798', '2022-11-28 09:50:23.655798', 1),
(23, 'App/hhhh_ukmKuQG.csv', 1, '2022-11-28 09:50:29.017261', '2022-11-28 09:50:29.017261', 1),
(24, 'App/hhhh_ceNiM3E.csv', 1, '2022-11-28 09:50:41.513139', '2022-11-28 09:50:41.513139', 1),
(25, 'App/hhhh_DCTMp6q.csv', 1, '2022-11-28 09:50:50.234925', '2022-11-28 09:50:50.234925', 1),
(26, 'App/hhhh_wZHWCpN.csv', 1, '2022-11-28 09:50:57.891196', '2022-11-28 09:50:57.891196', 1),
(27, 'App/hhhh_jG6YnDE.csv', 1, '2022-11-28 09:52:03.257828', '2022-11-28 09:52:03.257828', 1),
(28, 'App/hhhh_iQFdMwT.csv', 1, '2022-11-28 09:52:11.000114', '2022-11-28 09:52:11.000114', 1),
(29, 'App/hhhh_SfaQe2G.csv', 1, '2022-11-28 09:55:55.959788', '2022-11-28 09:55:55.959788', 1),
(30, 'App/new_3_RsnYevx.csv', 1, '2022-11-28 09:58:36.405888', '2022-11-28 09:58:36.405888', 1),
(31, 'App/new_3_jkLRUG4.csv', 1, '2022-11-28 09:58:56.823943', '2022-11-28 09:58:56.823943', 1),
(32, 'App/new_3_58JLwvf.csv', 1, '2022-11-28 09:59:14.546457', '2022-11-28 09:59:14.546457', 1),
(33, 'App/new_4.csv', 1, '2022-11-28 10:00:13.923419', '2022-11-28 10:00:13.923419', 1),
(34, 'App/new_4_mNuT1SR.csv', 1, '2022-11-28 10:05:40.545672', '2022-11-28 10:05:40.545672', 1),
(35, 'App/new_4_CON8E5q.csv', 1, '2022-11-28 10:07:16.332010', '2022-11-28 10:07:16.332010', 1),
(36, 'App/new_4_ke2Szx3.csv', 1, '2022-11-28 10:34:03.724998', '2022-11-28 10:34:03.724998', 1),
(37, 'App/new_5.csv', 1, '2022-11-28 11:52:09.296343', '2022-11-28 11:52:09.296343', 1);

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add employee', 7, 'add_employee'),
(26, 'Can change employee', 7, 'change_employee'),
(27, 'Can delete employee', 7, 'delete_employee'),
(28, 'Can view employee', 7, 'view_employee'),
(29, 'Can add cosutum user', 8, 'add_cosutumuser'),
(30, 'Can change cosutum user', 8, 'change_cosutumuser'),
(31, 'Can delete cosutum user', 8, 'delete_cosutumuser'),
(32, 'Can view cosutum user', 8, 'view_cosutumuser'),
(33, 'Can add file', 9, 'add_file'),
(34, 'Can change file', 9, 'change_file'),
(35, 'Can delete file', 9, 'delete_file'),
(36, 'Can view file', 9, 'view_file');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$dRiUijTg8fraInGCN5bkVl$zU2e8H1Vr34le+izXtm+3iQYIEzuUAg/Su8urkG5H1o=', '2022-11-28 11:51:09.677604', 1, 'Zack', '', '', 'Zack@gmail.com', 1, 1, '2022-11-22 09:35:19.500122'),
(2, 'pbkdf2_sha256$390000$dRiUijTg8fraInGCN5bkVl$zU2e8H1Vr34le+izXtm+3iQYIEzuUAg/Su8urkG5H1o=', '2022-11-28 11:20:21.141814', 1, 'Korabika', '', '', 'Korabika@gmail.com', 1, 1, '2022-11-22 09:35:19.500122');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-22 10:50:57.669532', '22', 'Employee object (22)', 2, '[{\"changed\": {\"fields\": [\"Date embauche\", \"Date demission\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'App', 'cosutumuser'),
(7, 'App', 'employee'),
(9, 'App', 'file'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-21 16:48:23.444195'),
(2, 'auth', '0001_initial', '2022-11-21 16:48:23.911686'),
(3, 'admin', '0001_initial', '2022-11-21 16:48:24.016371'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-21 16:48:24.025958'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-21 16:48:24.035992'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-21 16:48:24.088084'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-21 16:48:24.147780'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-21 16:48:24.164548'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-21 16:48:24.173233'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-21 16:48:24.210054'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-21 16:48:24.214407'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-21 16:48:24.223406'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-21 16:48:24.239180'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-21 16:48:24.254175'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-21 16:48:24.269839'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-21 16:48:24.280847'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-21 16:48:24.297591'),
(18, 'sessions', '0001_initial', '2022-11-21 16:48:24.328455'),
(19, 'App', '0001_initial', '2022-11-21 16:51:02.637144'),
(20, 'App', '0002_rename_jours_travaillés_employee_jours_travailles_and_more', '2022-11-23 13:06:31.412410'),
(21, 'App', '0003_rename_numéro_employe_employee_numero_employe', '2022-11-23 13:09:22.310511'),
(22, 'App', '0004_employee_cin', '2022-11-24 09:30:14.016298');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dx9rfy1ejfblljuk7jqc2vst7brxedwg', '.eJxVjEEOwiAQAP_C2RC2wEI9evcNhIWtVA1NSnsy_l1JetDrzGReIsR9K2FvvIY5i7MAcfplFNODaxf5HuttkWmp2zqT7Ik8bJPXJfPzcrR_gxJb6VuPDr11rAGtmQZwkAiGrNkq7Sg7BKAJjUIDxMAKRvSj5683ADqK9wek4jZN:1ozcfF:gvXDff6nbQi8RLP8gaKuQzdVp25WqSAVlz3xo99uTwE', '2022-12-12 11:51:09.684651'),
('f68kbsgqji8w1n27x0scxexqpvbyd7wa', 'e30:1oxPiz:W7VS-2sJ1KuUxy4KEVzcMY6xTZkvW5xA_F9Myfbj6VQ', '2022-12-06 09:37:53.615253');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `app_cosutumuser`
--
ALTER TABLE `app_cosutumuser`
  ADD PRIMARY KEY (`CosutumUserId`),
  ADD KEY `App_cosutumuser_UserId_id_94b102fc_fk_auth_user_id` (`UserId_id`);

--
-- Index pour la table `app_employee`
--
ALTER TABLE `app_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `App_employee_CosutumUserId_id_fc3a1630_fk_App_cosut` (`CosutumUserId_id`);

--
-- Index pour la table `app_file`
--
ALTER TABLE `app_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `App_file_uploadé_par_id_82883ddc_fk_App_employee_id` (`uploadé_par_id`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `app_cosutumuser`
--
ALTER TABLE `app_cosutumuser`
  MODIFY `CosutumUserId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `app_employee`
--
ALTER TABLE `app_employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `app_file`
--
ALTER TABLE `app_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `app_cosutumuser`
--
ALTER TABLE `app_cosutumuser`
  ADD CONSTRAINT `App_cosutumuser_UserId_id_94b102fc_fk_auth_user_id` FOREIGN KEY (`UserId_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `app_employee`
--
ALTER TABLE `app_employee`
  ADD CONSTRAINT `App_employee_CosutumUserId_id_fc3a1630_fk_App_cosut` FOREIGN KEY (`CosutumUserId_id`) REFERENCES `app_cosutumuser` (`CosutumUserId`);

--
-- Contraintes pour la table `app_file`
--
ALTER TABLE `app_file`
  ADD CONSTRAINT `App_file_uploadé_par_id_82883ddc_fk_App_employee_id` FOREIGN KEY (`uploadé_par_id`) REFERENCES `app_employee` (`id`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
