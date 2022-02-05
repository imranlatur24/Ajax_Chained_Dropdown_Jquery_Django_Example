-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 01:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax_chained_dropdown2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add college model', 7, 'add_collegemodel'),
(26, 'Can change college model', 7, 'change_collegemodel'),
(27, 'Can delete college model', 7, 'delete_collegemodel'),
(28, 'Can view college model', 7, 'view_collegemodel'),
(29, 'Can add student model', 8, 'add_studentmodel'),
(30, 'Can change student model', 8, 'change_studentmodel'),
(31, 'Can delete student model', 8, 'delete_studentmodel'),
(32, 'Can view student model', 8, 'view_studentmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`Cid`, `Cname`) VALUES
(1, 'VIT'),
(2, 'Sinhgad'),
(3, 'Shivaji'),
(4, 'Bidve'),
(5, 'Saraswati'),
(6, 'Damini'),
(7, 'Irfan'),
(8, 'Muskan'),
(9, 'Afreen'),
(10, 'Saint'),
(11, 'Vam'),
(12, 'Dom'),
(13, 'Paul'),
(14, 'Wakaad'),
(15, 'Dummies'),
(16, 'Kitty');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'collegemodel'),
(8, 'app', 'studentmodel'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-06 11:49:17.623923'),
(2, 'auth', '0001_initial', '2021-12-06 11:49:19.277388'),
(3, 'admin', '0001_initial', '2021-12-06 11:49:19.685619'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-12-06 11:49:19.717922'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-06 11:49:19.742952'),
(6, 'app', '0001_initial', '2021-12-06 11:49:20.038679'),
(7, 'contenttypes', '0002_remove_content_type_name', '2021-12-06 11:49:20.226046'),
(8, 'auth', '0002_alter_permission_name_max_length', '2021-12-06 11:49:20.361438'),
(9, 'auth', '0003_alter_user_email_max_length', '2021-12-06 11:49:20.438402'),
(10, 'auth', '0004_alter_user_username_opts', '2021-12-06 11:49:20.472672'),
(11, 'auth', '0005_alter_user_last_login_null', '2021-12-06 11:49:20.627006'),
(12, 'auth', '0006_require_contenttypes_0002', '2021-12-06 11:49:20.644380'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2021-12-06 11:49:20.671944'),
(14, 'auth', '0008_alter_user_username_max_length', '2021-12-06 11:49:20.710531'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2021-12-06 11:49:20.760494'),
(16, 'auth', '0010_alter_group_name_max_length', '2021-12-06 11:49:20.801887'),
(17, 'auth', '0011_update_proxy_permissions', '2021-12-06 11:49:20.827067'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2021-12-06 11:49:20.859999'),
(19, 'sessions', '0001_initial', '2021-12-06 11:49:20.943504');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Sid` int(11) NOT NULL,
  `Sname` varchar(75) NOT NULL,
  `Cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Sid`, `Sname`, `Cid_id`) VALUES
(1, 'Lecture 1 : Introduction', 1),
(2, 'Lecture 2 : Transcendental Consciousness', 1),
(3, 'Lecture 3-4 : Platoï¿½s Concept of Soul', 1),
(4, 'Lecture 5 : Aristotleï¿½s Concept of Soul', 1),
(5, 'Lecture 6 : The Concept of Mind in Upanisads', 1),
(6, 'Lecture 7-8 : Descartes Philosophy of Mind', 1),
(7, 'Lecture 9 : Searleï¿½s Cartesian Legacy: Dualism Persists', 1),
(8, 'Lecture 10 : Against Dualism', 1),
(9, 'Lecture 11 : Property Dualism', 1),
(10, 'Lecture 12-13 : Materialists\' Conception of Mind and Mind-Body Identity', 1),
(11, 'Lecture 14 : Functionalism', 1),
(12, 'Lecture 15 : The Cognitive Mind', 1),
(13, 'Lecture 16 : Connectionism and Folk Psychology', 1),
(14, 'Lecture 17-18 : Representations', 1),
(15, 'Lecture 19-20-21 : Artificial Intelligence (AI) and Mind', 1),
(16, 'Lecture 22-23 : The Limits of Artificial Intelligence (AI)', 1),
(17, 'Lecture 24 : Biological Naturalism', 1),
(18, 'Lecture 25 : Intentionality', 1),
(19, 'Lecture 26-27 : The Structure of Consciousness', 1),
(20, 'Lecture 28-29 : Psychological Consciousness and Phenomenal Consciousness', 1),
(21, 'Lecture 30-31-32 : Mind, Meaning and Representation', 1),
(22, 'Lecture 33-34 : Intention Based Semantics', 1),
(23, 'Lecture 35 : Emergentism and Supervenience', 1),
(24, 'Lecture 36-37 : Reduction and Realization', 1),
(25, 'Lecture 38 : Cartesian Theory of Mind Revisited', 1),
(26, 'Lecture 39-40 : A Non-materialistic View of Person', 1),
(27, 'Lecture 41-42 : Consciousness and Creativity', 1),
(28, 'Lecture 43-44 : The Nonreductive Mind', 1),
(29, 'L1-Introduction', 2),
(30, 'L2-Transcendental Consciousness', 2),
(31, 'L3-Plato\'s Theory of Mind', 2),
(32, 'L4-Parable of Cave : Plato\'s', 2),
(33, 'L5-Aristotle\'s Concept Mind', 2),
(34, 'L6-The Concept of Mind in Upanishadas', 2),
(35, 'L7-Dualism - I', 2),
(36, 'L8-Dualism II', 2),
(37, 'L9-Dualism III', 2),
(38, 'L10-Against Dualism', 2),
(39, 'L11-Property Dualism', 2),
(40, 'L12-Varieties of Materialism', 2),
(41, 'L13-Mind-Body Identity Theory', 2),
(42, 'L14-Functionalism', 2),
(43, 'L15-Different Models of Cognitive Mind', 2),
(44, 'L16-Connectionism and Folk - Psychology', 2),
(45, 'L17-Representation I', 2),
(46, 'L18-Representation II', 2),
(47, 'L19-Artificial Intelligence I', 2),
(48, 'L20-Artificial Intelligence II', 2),
(49, 'L21-Artificial Intelligence III', 2),
(50, 'L22-The Limit of Artificial Intelligence I', 2),
(51, 'L23-The Limit of Artificial Intelligence II', 2),
(52, 'L24-Biological Naturalism', 2),
(53, 'L25-The Concept of Intentionality', 2),
(54, 'L26-The Structure of Consciousness I', 2),
(55, 'L27-The Structure of Consciousness II', 2),
(56, 'L28-Phenomenal Consciousness I', 2),
(57, 'L29-Phenomenal Consciousness II', 2),
(58, 'L30-Language, Representation & Meaning I', 2),
(59, 'L31-Language & Meaning II', 2),
(60, 'L32-Language & Mind', 2),
(61, 'L33-Language & World I', 2),
(62, 'L34-Language & World II', 2),
(63, 'L35-Emergentism & Supervenience', 2),
(64, 'L36-Reduction & Realization I', 2),
(65, 'L37-Reduction & Realization II', 2),
(66, 'L38-The Cartesian Mind Revisited', 2),
(67, 'L39-Personal Identity I', 2),
(68, 'L40-Personal Identity II', 2),
(69, 'L41-Creativity : Human Vs Machine I', 2),
(70, 'L42-Creativity : Human Vs Machine II', 2),
(71, 'Lecture 1 : Introduction', 3),
(72, 'Lecture 2 : Prevention', 3),
(73, 'Lecture 3 : Socio-economic Status , Income Inequality and Health', 3),
(74, 'Lecture 4 : Discrimination', 3),
(75, 'Lecture 5 : Reading', 3),
(76, 'Lecture 6 : Neighborhood', 3),
(77, 'Lecture 7 ; Gender Differences in Health', 3),
(78, 'Lecture 8 : Womenï¿½s Health', 3),
(79, 'Lecture 9 : Eating', 3),
(80, 'Lecture 10 : Reading', 3),
(81, 'Lecture 11 : Exercise', 3),
(82, 'Lecture 12 : Reading', 3),
(83, 'Lecture 13 : Alcohol', 3),
(84, 'Lecture 14 : Reading', 3),
(85, 'Lecture 15 : Tobacco', 3),
(86, 'Lecture 16 : Reading', 3),
(87, 'Lecture 17 : Stress', 3),
(88, 'Lecture 18 : Reading', 3),
(89, 'Lecture 19 : Coping', 3),
(90, 'Lecture 20 : Psychoimmunology', 3),
(91, 'Lecture 21 : Reading', 3),
(92, 'Lecture 22 : Emotion and Health', 3),
(93, 'Lecture 23 : Reading', 3),
(94, 'Lecture 24 : Mental Health', 3),
(95, 'Lecture 25 : Mental Health in India', 3),
(96, 'Lecture 26 : Reading', 3),
(97, 'Lecture 27 : HIV and AIDS', 3),
(98, 'Lecture 28 : Reading I', 3),
(99, 'Lecture 29 : Reading II', 3),
(100, 'Lecture 30 : Framing Health Messages', 3),
(101, 'Lecture 31 : Behaviour Change', 3),
(102, 'Lecture 32 : Reading', 3),
(103, 'Lecture 33 : Occupational Health', 3),
(104, 'Lecture 34 : Reading I', 3),
(105, 'Lecture 35 : Reading II', 3),
(106, 'Lecture 36 : Health Care in India', 3),
(107, 'Lecture 37 : Reading I', 3),
(108, 'Lecture 38 : Reading II', 3),
(109, 'Lecture 39 : Reading III', 3),
(110, 'L1-Overview', 4),
(111, 'L2-In Conversation with Richard Schechner', 4),
(112, 'L3-Multilingual Plurality: Our Environment', 4),
(113, 'L4-Multilingual Plurality: Our Environment -Part II', 4),
(114, 'L5-Interplay of Languages and Forms of Writing', 4),
(115, 'L6-Interplay of Languages and Forms of Writing -Part II', 4),
(116, 'L7-Creativity and Cultures', 4),
(117, 'L8-Notion of Play and The Three Domain Activities', 4),
(118, 'L9-Theory of Enjoyment: Critical Assessment', 4),
(119, 'L10-Divergences and Convergences', 4),
(120, 'L11-Divergences and Convergences -Part II', 4),
(121, 'L12-Creative and Cultural Spaces for Students', 4),
(122, 'L13-Being and Doing: Writing as Performance', 4),
(123, 'L14-Writers and Writing: The Dialogic Process', 4),
(124, 'L15-Creativity, Writing, Creative Writing: Recent Viewpoints', 4),
(125, 'L16-Issues Related to the Teaching of Creative Writing', 4),
(126, 'L17-Writers on Writing: Albert Camus', 4),
(127, 'L18-Critical Reading of Great Writers: Albert Camus', 4),
(128, 'L19-Critical Reading of Important Writers: Margaret Atwood', 4),
(129, 'L20-Reading and Writing', 4),
(130, 'L21-Indian Writing: Writers/Narrators', 4),
(131, 'L22-Contemporary Indian Writers: The Search for Creativity (I)', 4),
(132, 'L23-Contemporary Indian Writers: The Search for Creativity (II)', 4),
(133, 'L24-Mosaic Patterns: Module 2', 4),
(134, 'L25-Introduction to Drama', 4),
(135, 'L26-Performance and Script Writing: Mime', 4),
(136, 'L27-Western Classical Theory', 4),
(137, 'L28-Student Response (I)', 4),
(138, 'L29-Indian Drama: Classical Theory and Practice', 4),
(139, 'L30-Interacting Continuum: Classical, Folk and Modern Drama', 4),
(140, 'L31-From The Perspective of Playwriting: Monologue', 4),
(141, 'L32-From The Playwright\'s Perspective', 4),
(142, 'L33-From The Playwright\'s Perspective -Part II', 4),
(143, 'L34-From The Perspective of Playwriting: Anton Chekhov', 4),
(144, 'L35-Drama in the Classroom: Experience and Writing', 4),
(145, 'L36-Student Response (II)', 4),
(146, 'L37-Performative Reading of the Cherry Orchard', 4),
(147, 'L38-Short Story as a Genre', 4),
(148, 'L39-Short Stories by Indian Women Writers', 4),
(149, 'L40-Modern Western Short Story', 4),
(150, 'L41-Varieties of Writing Processes', 4),
(151, 'Cultural Studies: An Introduction', 5),
(152, 'Understanding Cultural Studies', 5),
(153, 'Evolution and Culture', 5),
(154, 'Evolutionary Psychology', 5),
(155, 'The Modern Mind: Its Origins', 5),
(156, 'Memetics', 5),
(157, 'Structuralism', 5),
(158, 'Marxism Part 1', 5),
(159, 'Marxism Part 2', 5),
(160, 'Poststructuralism', 5),
(161, 'Subjectivity', 5),
(162, 'Identity', 5),
(163, 'Ideology (Part 1)', 5),
(164, 'Ideology Part 2', 5),
(165, 'Representation (Part 1)', 5),
(166, 'Representation (Part 2)', 5),
(167, 'Power', 5),
(168, 'Discourse', 5),
(169, 'Gender (Part 1)', 5),
(170, 'Gender (Part 2)', 5),
(171, 'The Body', 5),
(172, 'Space', 5),
(173, 'Time', 5),
(174, 'Development', 5),
(175, 'Language', 5),
(176, 'Ethnicity, Race and Nation', 5),
(177, 'Globalization', 5),
(178, 'Consumption (Part 1)', 5),
(179, 'Consumption (Part 2)', 5),
(180, 'Biology', 5),
(181, 'The Culture Industry', 5),
(182, 'The Commodity', 5),
(183, 'Media', 5),
(184, 'Television', 5),
(185, 'New Media', 5),
(186, 'Science, Technology and Cultural Studies', 5),
(187, 'Cyberculture', 5),
(188, 'Cultural Policy', 5),
(189, 'Critiquing Cultural Studies', 5),
(190, 'Summing up', 5),
(191, 'Understanding Cultural Studies Part 1', 6),
(192, 'Understanding Cultural Studies Part 2', 6),
(193, 'Evolution and Culture', 6),
(194, 'Evolutionary Psychology', 6),
(195, 'The Modern Mind: Its Origins', 6),
(196, 'Memetics', 6),
(197, 'Cultural Theory: Structuralism', 6),
(198, 'Marxism Part 1', 6),
(199, 'Marxism Part 2', 6),
(200, 'Poststructuralism', 6),
(201, 'Subjectivity', 6),
(202, 'Identity', 6),
(203, 'Ideology Part 1', 6),
(204, 'Ideology Part 2', 6),
(205, 'Representation Part 1', 6),
(206, 'Representation Part 2', 6),
(207, 'Power', 6),
(208, 'Discourse', 6),
(209, 'Gender Part 1', 6),
(210, 'Gender Part 2', 6),
(211, 'The Body', 6),
(212, 'Space', 6),
(213, 'Time', 6),
(214, 'Development', 6),
(215, 'Language', 6),
(216, 'Ethnicity ,Race and Nation', 6),
(217, 'Globalisation', 6),
(218, 'Consumption Part 1', 6),
(219, 'Consumption Part 2', 6),
(220, 'Biology', 6),
(221, 'Culture Industry', 6),
(222, 'Commodity', 6),
(223, 'Media', 6),
(224, 'Television', 6),
(225, 'New Media', 6),
(226, 'Science, Technology and Culture', 6),
(227, 'Cyberculture', 6),
(228, 'Cultural Policy', 6),
(229, 'Critiquing Cultural Studies', 6),
(230, 'Conclusion', 6),
(231, 'Definition of Game Theory and Rational Choice', 7),
(232, 'Interacting Decision Makers', 7),
(233, 'Strategic Games : Examples', 7),
(234, 'Matching Pennies, Stag Hunt and Nash Equilibrium', 7),
(235, 'Examples of Nash Equilibrium', 7),
(236, 'Altruism and Prisonerï¿½s Dilemma', 7),
(237, 'Variants Stag Hunt Game, Hawk Dove and Coordination Game', 7),
(238, 'Public Good Provision, Strict Nash Equilibrium', 7),
(239, 'Best Response Functions', 7),
(240, 'Strictly and Weakly Dominated Action', 7),
(241, 'Application of Weak Domination: Voting', 7),
(242, 'Symmetric Games and Symmetric Equilibrium', 7),
(243, 'Cournot Model of Oligopoly', 7),
(244, 'Different Aspects of Cournot Model', 7),
(245, 'Further Aspects of Cournot Model', 7),
(246, 'Cournot & Bertrand Models', 7),
(247, 'Different Aspects of Bertrand Model', 7),
(248, 'Electoral Competition 1', 7),
(249, 'Different Aspects of Hotelling Model', 7),
(250, 'Hotteling Model: Concluding Remarks', 7),
(251, 'War of Attrition', 7),
(252, 'Second Price Sealed Bid Auction', 7),
(253, 'Further Aspects of Second Price Auction', 7),
(254, 'First Price Auction', 7),
(255, 'All Pay Auction, Multi Unit Auction', 7),
(256, 'Accident Laws', 7),
(257, 'Mixed Strategy Nash Equilibrium: Introduction', 7),
(258, 'Mixed Strategy, Mixed Strategy Equilibrium', 7),
(259, 'Mixed Strategy Equilibrium: Concept and Examples', 7),
(260, 'Characterisation of Mixed Strategy Equilibrium', 7),
(261, 'Dominated Actions and Iterated Elimination', 7),
(262, 'Rationalisability and Beliefs', 7),
(263, 'Extensive Games: Introduction', 7),
(264, 'Strategy and Equilibrium', 7),
(265, 'Nash Equilibrium and Its Problems', 7),
(266, 'Subgame Perfect Nash Equilibrium', 7),
(267, 'Backward Induction', 7),
(268, 'Backward Induction: Exercises', 7),
(269, 'Ultimatum Game', 7),
(270, 'Stackelberg Duopoly Model', 7),
(271, 'Socila Problems: Conceptual understanding', 8),
(272, 'Social Problems: Characteristics, Types, Causes and Reactions', 8),
(273, 'Approaches to the Study of Social Problems', 8),
(274, 'Methods to the Study of Social Problems', 8),
(275, 'Social Problems in Rural and Urban India', 8),
(276, 'Magnitude and Causes of illiteracy', 8),
(277, 'National Policy on 	Education', 8),
(278, 'Poverty: Measurement and Causes', 8),
(279, 'Myths about Hunger', 8),
(280, 'Poverty Alleviation Programmes', 8),
(281, 'Unemployment in India: Features, Types, Causes and Consequences', 8),
(282, 'National Rural Employment Guarantee Act', 8),
(283, 'Causes and Effects of Population Growth in India', 8),
(284, 'Population Policy, Family Planning, Role of the Civil Society', 8),
(285, 'Child Abuse: Concept and Types', 8),
(286, 'Child Abuse: Causes and Effects', 8),
(287, 'Preventive Measures for Child Abuse, with specific reference to India', 8),
(288, 'Child Labour: Concept and Causes', 8),
(289, 'Child Labour: Preventive Measures', 8),
(290, 'Violence against Women', 8),
(291, 'Victims and Perpetrators of Violence, Motivation in Violence, Self-image, S', 8),
(292, 'Casteism: Characteristics and Causes', 8),
(293, 'Casteism: Consequences and Remedial Measures', 8),
(294, 'Communalism: Concept and Characteristics, Causes and Remedial Measures', 8),
(295, 'Regionalism: Characteristics and Types', 8),
(296, 'Regionalism: Causes and Suggestive Measures', 8),
(297, 'Language Conflicts: Causes, Consequences and Remedial Measures', 8),
(298, 'Crime, Criminal, Criminology', 8),
(299, 'Characteristics of Crime', 8),
(300, 'Sociological Explanations of Crime', 8),
(301, 'Juvenile Delinquency: Nature and Characteristics', 8),
(302, 'Types of Juvenile Delinquency', 8),
(303, 'Methods of Treating Delinquents', 8),
(304, 'Concept and Extent of Alcoholism', 8),
(305, 'Causes, Problems, Anti Liquor Movements and Control on alcoholism', 8),
(306, 'Drug Abuse: Concept, Extent and Nature', 8),
(307, 'Role of Family and Peer Group, and Measures to Combat Drug Trafficking', 8),
(308, 'Corruption: Concept, Forms and Types', 8),
(309, 'Corruption: Causes and Impact', 8),
(310, 'Legislation and Combating Corruption', 8),
(311, 'Origin of Sociology as a Discipline', 9),
(312, 'Sociological Methods', 9),
(313, 'The Individual and Society', 9),
(314, 'Institution, Community and Association', 9),
(315, 'Culture', 9),
(316, 'The Sociology of Anomie: Conformity and Deviance', 9),
(317, 'Education', 9),
(318, 'Religion', 9),
(319, 'Religion and Significant Social Factors', 9),
(320, 'Family, Marriage and Kinship ï¿½ Part I', 9),
(321, 'Family, Marriage and Kinship ï¿½ Part II', 9),
(322, 'Family, Marriage and Kinship ï¿½ Part III', 9),
(323, 'Social Structure and Social Change: Basic Concepts', 9),
(324, 'Social Differentiation and Social Stratification', 9),
(325, 'Theoretical Perspectives on Social Stratification', 9),
(326, 'Systems of Stratification', 9),
(327, 'Factors of Social Change', 9),
(328, 'Rural-Urban Continuum: Meaning and Context', 9),
(329, 'Socialization: Part I', 9),
(330, 'Socialization: Part II', 9),
(331, 'Social Control', 9),
(332, 'Social Roles and Identity', 9),
(333, 'Caste System in India', 9),
(334, 'Race and Ethnicity', 9),
(335, 'Religion and Society', 9),
(336, 'Education and Society', 9),
(337, 'Gender', 9),
(338, 'Social Class', 9),
(339, 'Social Protests and Social Movements: An Overview', 9),
(340, 'Social Movements: Causes and Stages', 9),
(341, 'Theories of Social Movements', 9),
(342, 'Social Movements in India ï¿½ Part I', 9),
(343, 'Social Movements in India ï¿½ Part II', 9),
(344, 'Identity Formation', 9),
(345, 'Sociological Theories: An Overview', 9),
(346, 'Auguste Comte and Herbert Spencer', 9),
(347, 'Emile Durkheim and Max Weber', 9),
(348, 'Karl Marx', 9),
(349, 'Georg Simmel, Thorstein Veblen and Karl Mannheim', 9),
(350, 'Feminism and Sociological Theory', 9),
(351, 'Methods of Science: Issues and Perspectives', 10),
(352, 'Views of Karl Popper', 10),
(353, 'Kuhnï¿½s Methodology', 10),
(354, 'Views of Paul Feyerabend', 10),
(355, 'Social Context of the Production of Scientific Knowledge', 10),
(356, 'Demarcation, Autonomy and Cognitive Authority of Science', 10),
(357, 'Science ,Technology and Society Challenges: Cognitive, Legal, Ethical, Femi', 10),
(358, 'Science ,Technology and Gender', 10),
(359, 'Challenges : feminist, ideological, cognitive, moral, legal, and others', 10),
(360, 'Science as Social Institution and the Ethos of Science', 10),
(361, 'The Ethos of Science', 10),
(362, 'Inequalities in Science: Rewards and Recognitions', 10),
(363, 'Critique of the Mertonian Paradigm', 10),
(364, 'Counter Norms', 10),
(365, 'Legitimation in Science', 10),
(366, 'Social Legitimation in Science', 10),
(367, 'Science, Culture and Society: Meanings, Interests, Values and the Modern St', 10),
(368, 'Science, Culture and Society: State-idea, State-system and State-country', 10),
(369, 'Science and Technology, and their Human Roots: Philosophy of Science and Te', 10),
(370, 'Science and Technology, and their Human Roots: Philosophy of Science and Te', 10),
(371, 'Social Shaping of Science and Technology', 10),
(372, 'Technology shaping society', 10),
(373, 'Phenomenology of science,technology and its human roots', 10),
(374, 'Phenomenology of science,technology and its human roots', 10),
(375, 'Science in Colonial India: Overview', 10),
(376, 'Building Scientific Institutions in Colonial India: Societies and Associati', 10),
(377, 'Influence of Freedom Movements on Scientific Research in India', 10),
(378, 'Science in the Inter-war Period', 10),
(379, 'Organization of Scientific Research in Postcolonial India', 10),
(380, 'Information and Communication Society', 10),
(381, 'Information and Communication Society', 10),
(382, 'A philosophical assessment : Re-defining humans I', 10),
(383, 'A philosophical assessment : Re-defining humans II', 10),
(384, 'Biotechnology ï¿½ Implications for the Meanings of Life and Life Processes', 10),
(385, 'iotechnology ï¿½ Application in Agriculture, Healthcare and Environment', 10),
(386, 'New Ethical Codes for New Technologies I', 10),
(387, 'New Ethical Codes for New Technologies II', 10),
(388, 'New Ethical Codes for New Technologies III', 10),
(389, 'New Ethical Codes for New Technologies IV', 10),
(390, 'Intellectual Property Rights: An Overview', 10),
(391, 'Trade-Related Aspects of Intellectual Property Rights', 10),
(392, 'Scientific Knowledge in India: From Public Resource to Intellectual Propert', 10),
(393, 'Organization of Human Nervous System', 11),
(394, 'Hindbrain', 11),
(395, 'Midbrain', 11),
(396, 'Forebrain', 11),
(397, 'Spinal cord', 11),
(398, 'Broadmann classification', 11),
(399, 'Lobes', 11),
(400, 'Hemispheric dominance', 11),
(401, 'Neuroplasticity', 11),
(402, 'Invasive techniques & Non-invasive techniques', 11),
(403, 'Magnetic resonance imaging (MRI)', 11),
(404, 'Magnetoencephalography (MEG)', 11),
(405, 'Structure of the neuron', 11),
(406, 'Resting membrane potential, Action potential', 11),
(407, 'Synaptic transmission', 11),
(408, 'Neuromuscular transmission', 11),
(409, 'Endocrine glands and the nature of their secretions', 11),
(410, 'Hypothalamus', 11),
(411, 'Pituitary Gland', 11),
(412, 'Pineal gland', 11),
(413, 'Thyroid gland', 11),
(414, 'Parathyroid gland', 11),
(415, 'Pancreas', 11),
(416, 'Gonads', 11),
(417, 'Adrenal medulla & adrenal cortex', 11),
(418, 'Most sought after issues in psychology', 11),
(419, 'Dominance and subordination', 11),
(420, 'Psychobiology of learning', 11),
(421, 'Psychobiology of memory', 11),
(422, 'Psychobiology of emotion', 11),
(423, 'Psychobiology of personality', 11),
(424, 'Neuropsychological Evaluation', 11),
(425, 'Introduction', 12),
(426, 'Barriers to Communication Lecture-01', 12),
(427, 'Barriers to Communication Lecture-02', 12),
(428, 'Barriers to Communication Lecture-03', 12),
(429, 'Non-Verbal Communication Lecture-01', 12),
(430, 'Non-Verbal Communication Lecture-02', 12),
(431, 'Non-Verbal Communication Lecture-03', 12),
(432, 'Non-Verbal Communication Lecture-04', 12),
(433, 'Non-Verbal Communication Lecture-05', 12),
(434, 'Listening Skills Lecture-01', 12),
(435, 'Listening Skills Lecture-02', 12),
(436, 'Listening Skills Lecture-03', 12),
(437, 'Business Letters Writing Lecture-01', 12),
(438, 'Business Letters Writing Lecture-02', 12),
(439, 'Business Letters Writing Lecture-03', 12),
(440, 'Business Letters Writing Lecture-04', 12),
(441, 'Report Writing Lecture-01', 12),
(442, 'Report Writing Lecture-02', 12),
(443, 'Group Discussion Lecture-01', 12),
(444, 'Group Discussion Lecture-02', 12),
(445, 'Group Discussion Lecture-03', 12),
(446, 'Interview Skills Lecture-01', 12),
(447, 'Interview Skills Lecture-02', 12),
(448, 'Interview Skills Lecture-03', 12),
(449, 'Interview Skills Lecture-04', 12),
(450, 'Interview Skills Lecture-05', 12),
(451, 'Interview Skills Lecture-06', 12),
(452, 'Interview Skills Lecture-07', 12),
(453, 'Netiquette Lecture-01', 12),
(454, 'Netiquette Lecture-02', 12),
(455, 'Oral Presentation Lecture-01', 12),
(456, 'Oral Presentation Lecture-02', 12),
(457, 'Oral Presentation Lecture-03', 12),
(458, 'Cross Cultural Communication Lecture-01', 12),
(459, 'Cross Cultural Communication Lecture-02', 12),
(460, 'Cross Cultural Communication Lecture-03', 12),
(461, 'Cross Cultural Communication Lecture-04', 12),
(462, 'Common Errors Lecture-01', 12),
(463, 'Common Errors Lecture-02', 12),
(464, 'Common Errors Lecture-03', 12),
(465, 'Lecture-01International Economics', 13),
(466, 'Lecture-02International Economics', 13),
(467, 'Lecture-03International Economics', 13),
(468, 'Lecture-04International Economics', 13),
(469, 'Lecture-05International Economics', 13),
(470, 'Lecture-06International Economics', 13),
(471, 'Lecture-07International Economics', 13),
(472, 'Lecture-08International Economics', 13),
(473, 'Lecture-09International Economics', 13),
(474, 'Lecture-10International Economics', 13),
(475, 'Lecture-11International Economics', 13),
(476, 'Lecture-12International Economics', 13),
(477, 'Lecture-13International Economics', 13),
(478, 'Lecture-14International Economics', 13),
(479, 'Lecture-15International Economics', 13),
(480, 'Lecture-16International Economics', 13),
(481, 'Lecture-17International Economics', 13),
(482, 'Lecture-18International Economics', 13),
(483, 'Lecture-19International Economics', 13),
(484, 'Lecture-20International Economics', 13),
(485, 'Lecture-21International Economics', 13),
(486, 'Lecture-22International Economics', 13),
(487, 'Lecture-23International Economics', 13),
(488, 'Lecture-24International Economics', 13),
(489, 'Lecture-25International Economics', 13),
(490, 'Lecture-26International Economics', 13),
(491, 'Lecture-27International Economics', 13),
(492, 'Lecture-28International Economics', 13),
(493, 'Lecture-29International Economics', 13),
(494, 'Lecture-30International Economics', 13),
(495, 'Lecture-31International Economics', 13),
(496, 'Lecture-32International Economics', 13),
(497, 'Lecture-33International Economics', 13),
(498, 'Lecture-34International Economics', 13),
(499, 'Lecture-35International Economics', 13),
(500, 'Lecture-36International Economics', 13),
(501, 'Lecture-37International Economics', 13),
(502, 'Lecture-38International Economics', 13),
(503, 'Lecture-39International Economics', 13),
(504, 'Lecture-40International Economics', 13),
(505, 'Lecture-41International Economics', 13),
(506, 'Lecture-42International Economics', 13),
(507, 'Lecture-43International Economics', 13),
(508, 'Introduction', 14),
(509, 'Basic Concepts and Measurements', 14),
(510, 'Perspectives and Linkages', 14),
(511, 'Society and Culture', 14),
(512, 'Sanskritization and Westernization.', 14),
(513, 'Society and Development: The Model Of Inclusive Growth', 14),
(514, 'Methodology and Methods', 14),
(515, 'Combining Methods and Data', 14),
(516, 'Interview, Observation and Focus Group Discussion Methods', 14),
(517, 'Introduction to Census, SRS,and Other National Sample Surveys', 14),
(518, 'Modelling Population Phenomena', 14),
(519, 'Issues in Modelling', 14),
(520, 'Contemporary Issues', 14),
(521, 'Stages and Limitations', 14),
(522, 'Population in Ancient Times and Middle Ages', 14),
(523, 'Demographic Transition in the Nineteenth and Twentieth Centuries', 14),
(524, 'Demographic Schism between Developed and Developing Countries and Future Pr', 14),
(525, 'Population Growth in India', 14),
(526, 'Trends in Death and Birth Rates', 14),
(527, 'Future Prospects', 14),
(528, 'Urbanization in India', 14),
(529, 'Causes of Urbanization', 14),
(530, 'Theories of Urbanization and Development', 14),
(531, 'Theories in Historical Perspective', 14),
(532, 'Marxist Theory of Population', 14),
(533, 'Other Major Theorists of Population', 14),
(534, 'Daly\'s Synthesis and Optimum Population Theory', 14),
(535, 'Gandhian Theory', 14),
(536, 'Demographic Transition Theory', 14),
(537, 'Population Policy', 14),
(538, 'Effectiveness of Population Policies', 14),
(539, 'Family Planning Programme and Beyond Family Planning Measures to Control Fe', 14),
(540, 'Family Planning Programme in India', 14),
(541, 'Population Policy Statement by Dr. Karan Singh', 14),
(542, 'Revision by Janata Party', 14),
(543, 'National Population Policy NPP 2000', 14),
(544, 'Population and Sustainable Development', 14),
(545, 'Role of Population in Models of Sustainable Development', 14),
(546, 'Environmental Beliefs', 14),
(547, 'Millennium Development Goals', 14),
(548, 'Population Issues in the Framework of MDGs', 14),
(549, 'New Issues before the Sociologists', 14),
(550, 'Lecture-01_Introduction', 15),
(551, 'Lecture-02_Basics Concepts', 15),
(552, 'Lecture-03_Perspectives On Population', 15),
(553, 'Lecture-04_Indian Society', 15),
(554, 'Lecture-05_Social Change in India', 15),
(555, 'Lecture-06_India: A Developing Economy', 15),
(556, 'Lecture-07_Methodology', 15),
(557, 'Lecture-08_Primary and Secondry Data and Related Issues', 15),
(558, 'Lecture-09_Sources of Population Data', 15),
(559, 'Lecture-10_Participatory Rural Appraisal', 15),
(560, 'Lecture-11_Demographic Models', 15),
(561, 'Lecture-12_Demographic models-II', 15),
(562, 'Lecture-13_Contemporary Issues In Modelling Population Processes', 15),
(563, 'Lecture-14_World Population Growth', 15),
(564, 'Lecture-15_Demographic Transition in the Nineteenth and Twentieth Centuries', 15),
(565, 'Lecture-16_Demographic schism between Developed and Developing Countries an', 15),
(566, 'Lecture-17_History Of Growth', 15),
(567, 'Lecture-18_Population of India-II', 15),
(568, 'Lecture-19_Trends In Death and Birth Rates', 15),
(569, 'Lecture-20_Population projections,Migration and Future Prospects', 15),
(570, 'Lecture-21_Urbanization and Development', 15),
(571, 'Lecture-22_Urbanization in India', 15),
(572, 'Lecture-23_Theories Of urbanization and Development', 15),
(573, 'Lecture-24_Future Of Urbanization In India', 15),
(574, 'Lecture-25_Population Theories', 15),
(575, 'Lecture-26_Marxist theory Of Population', 15),
(576, 'Lecture-27_Demographic Transition Theory and Related Issues', 15),
(577, 'Lecture-28_Gandhian Theory Of population', 15),
(578, 'Lecture-29_Population Policy', 15),
(579, 'Lecture-30_Effectiveness Of population Policies', 15),
(580, 'Lecture-31_Family Planning Programme and Beyond', 15),
(581, 'Lecture-32_National Population Policy', 15),
(582, 'Lecture-33_The First Policy Statement', 15),
(583, 'Lecture-34_Subsequent Developments Leading To National Population Policy 20', 15),
(584, 'Lecture-35_Ecological Degradation and Environmental Protection', 15),
(585, 'Lecture-36_Diffrences In Perception Between Developed and Developing Countr', 15),
(586, 'Lecture-37_Total Environment Impact and Beliefs', 15),
(587, 'Lecture-38_Emerging Issues In sociology Of Population', 15),
(588, 'Lecture-39_Population Issues In The framework of MDGs', 15),
(589, 'Lecture-40_Population Issues (Cont.)', 15),
(590, 'What is \'urban\'?', 16),
(591, 'How did the urban community emerge?', 16),
(592, 'How did the urban community emerge? (continued)', 16),
(593, 'Max Weber and Charles H. Cooley on the rise of the city', 16),
(594, 'History of Urbanization in India', 16),
(595, 'History of Urbanization in India (continued)', 16),
(596, 'Urbanization in Medieval India', 16),
(597, 'The Industrial Revolution and the Rise of the Gesellschaft Part I', 16),
(598, 'The Industrial Revolution and the Rise of the Gesellschaft Part II', 16),
(599, 'Friedrich Engels on the \'Hypocritical\' Capitalist City', 16),
(600, 'Friedrich Engels on the \'Hypocritial\' Capitalist City (continued)', 16),
(601, 'Freedom and Alienation in the City from Georg Simmel\'s \"The Metropolis and ', 16),
(602, 'Freedom and Alienation in the City from Georg Simmel\'s \"The Metropolis and ', 16),
(603, 'The Chicago School or the Ecological Theory of the City', 16),
(604, 'The Chicago School or the Ecological Theory of the City (continued)', 16),
(605, 'Ernest W. Burgess\'s Model of Urban Growth', 16),
(606, 'Louis Wirth: \"Urbanism as a Way of Life\"', 16),
(607, 'Louis Wirth: \"Urbanism as a Way of Life\" (continued)', 16),
(608, 'Compositional and Cultural Theories', 16),
(609, 'Compositional and Cultural Theories 2', 16),
(610, 'Compositional and Cultural Theories 2 (continued)', 16),
(611, 'Socio-spatial Approach or the New Urban Sociology', 16),
(612, 'Technology', 16),
(613, 'Material Culture : The Chimmey, Street lighting and Urban Space', 16),
(614, 'Colonial Cities and Technology: the Case of Calcutta', 16),
(615, 'Technology and the Urban Community Part I', 16),
(616, 'Technology and the Urban Community Part II', 16),
(617, 'Technology and the Urban Community Part III', 16),
(618, 'The Gemeinschaft in the City: Urban Neighbourhoods', 16),
(619, 'The Gemeinschaft in the City: Urban Neighbourhoods', 16),
(620, 'The Gemeinschaft in the City: Urban Neighbourhoods', 16),
(621, 'Louis Wirth (1927): The Ghetto', 16),
(622, 'City Planning', 16),
(623, 'City Planning (continued)', 16),
(624, 'City Planning (continued)', 16),
(625, 'The Planning of the Pre-Imperial Cities of India: the Port Cities', 16),
(626, 'The Imperial City: The Making of Colonial Lucknow', 16),
(627, 'The Imperial City: The Making of Colonial Lucknow (continued)', 16),
(628, 'The Imperial City: The Making of Colonial Lucknow (continued)', 16),
(629, 'The Modern City in Post-Independent India: the case-study of Chandigarh', 16),
(630, 'The Modern City in Post-Independent India: the case-study of Chandigarh (co', 16),
(631, 'City Design and Contemporary Urban Changes', 16);

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
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`Cid`);

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
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Sid`),
  ADD KEY `Student_Cid_id_f07ca6d5_fk_College_Cid` (`Cid_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `Cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

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

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Student_Cid_id_f07ca6d5_fk_College_Cid` FOREIGN KEY (`Cid_id`) REFERENCES `college` (`Cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
