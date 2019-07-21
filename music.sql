-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2019 at 09:23 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_groups`
--

CREATE TABLE `access_groups` (
  `id` int(11) NOT NULL,
  `parent` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `default_permission` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_groups`
--

INSERT INTO `access_groups` (`id`, `parent`, `name`, `default_permission`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', NULL, '2018-12-28 00:00:00', '2018-12-28 00:00:00', NULL),
(2, 'instructor', 'instructor', NULL, '2018-12-27 18:33:15', '2018-12-27 18:33:15', NULL),
(3, 'student', 'student', NULL, '2018-12-27 18:33:28', '2018-12-27 18:33:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2018-12-26 22:17:03', '2018-12-26 22:17:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `email`, `password`, `user_id`, `contact_no`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 'rafi', 'rafi@rafi.com', '12345', 1, NULL, 1, '2018-12-18 19:45:27', '2018-12-18 19:45:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_type_id` varchar(255) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `room` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_type_id`, `instructor_id`, `start_time`, `end_time`, `room`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'pop', 'pop01', 1, '00:00:00', '00:00:00', 212, 0, '2019-02-03 16:25:58', '2019-02-03 21:12:55', NULL),
(11, 'pop11', 'pop11', 3, '00:00:00', '00:00:00', 212, 0, '2019-02-03 16:25:58', '2019-02-03 21:12:55', NULL),
(12, 'Acoustic Blues Guitar', 'ABG101', 10, '00:00:00', '00:00:00', 1001, 0, '2019-02-09 00:22:13', '2019-02-09 00:24:14', NULL),
(13, 'Advanced Blues Guitar', 'ABG102', 9, '00:00:00', '00:00:00', 1002, 0, '2019-02-09 00:23:00', '2019-02-09 00:23:00', NULL),
(14, 'Afro-Cuban Drums', 'ACD101', 8, '00:00:00', '00:00:00', 1003, 0, '2019-02-09 00:23:46', '2019-02-09 00:23:46', NULL),
(15, 'Applied Mathematics for Musicians', 'AMM101', 7, '00:00:00', '00:00:00', 2001, 0, '2019-02-09 00:24:53', '2019-02-09 00:24:53', NULL),
(16, 'Artist Management', 'AM101', 4, '00:00:00', '00:00:00', 2002, 0, '2019-02-09 00:25:36', '2019-02-09 00:25:36', NULL),
(17, 'Bass Performance', 'BP101', 6, '00:00:00', '00:00:00', 2003, 0, '2019-02-09 00:26:19', '2019-02-09 00:26:19', NULL),
(18, 'Classic Rock Guitar', 'CRG101', 3, '00:00:00', '00:00:00', 3001, 0, '2019-02-09 00:27:00', '2019-02-09 00:27:00', NULL),
(19, 'Composing and Producing Electronic Music 1', 'CPEM101', 8, '00:00:00', '00:00:00', 3002, 0, '2019-02-09 00:27:47', '2019-02-09 00:27:47', NULL),
(20, 'Composing and Producing Electronic Music 2', 'CPEM102', 10, '00:00:00', '00:00:00', 3003, 0, '2019-02-09 00:28:23', '2019-02-09 00:28:23', NULL),
(21, 'Concert Touring', 'CT101', 7, '00:00:00', '00:00:00', 4001, 0, '2019-02-09 00:29:07', '2019-02-09 00:29:07', NULL),
(22, 'Creative Strategies for Composition Beyond Style', 'CSCBS101', 5, '00:00:00', '00:00:00', 4002, 0, '2019-02-09 00:29:57', '2019-02-09 00:29:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_materials`
--

CREATE TABLE `course_materials` (
  `id` int(11) NOT NULL,
  `material` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_materials`
--

INSERT INTO `course_materials` (`id`, `material`, `price`, `link`, `course_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'abc.pdf', '10', '0c0567a299c13e0cc482e2e1afe59dae', 11, 0, '2019-02-08 22:09:42', '2019-02-08 22:09:42', NULL),
(2, 'def.pdf', '20', '0c0567a299c13e0cc482e2e1afe59dae', 15, 0, '2019-02-08 22:09:42', '2019-02-08 22:09:42', NULL),
(3, 'asd', '22', '0c0567a299c13e0cc482e2e1afe59dae', 15, 0, '2019-02-08 22:09:42', '2019-02-08 22:09:42', NULL),
(4, 'zdsad', '10', '0c0567a299c13e0cc482e2e1afe59dae', 11, 0, '2019-02-08 22:09:42', '2019-02-08 22:09:42', NULL),
(5, 'def.pdf', '5', '0c0567a299c13e0cc482e2e1afe59dae', 10, 0, '2019-02-08 22:09:42', '2019-02-08 22:09:42', NULL),
(6, 'asd', '10', '0c0567a299c13e0cc482e2e1afe59dae', 21, 0, '2019-02-08 22:09:42', '2019-02-08 22:09:42', NULL),
(7, 'interdum.', '10', '0c0567a299c13e0cc482e2e1afe59dae', 22, 0, '2018-12-09 08:27:39', NULL, NULL),
(8, 'Morbi', '8', '0c0567a299c13e0cc482e2e1afe59dae', 10, 0, '2018-12-10 06:18:55', NULL, NULL),
(9, 'montes,', '20', '0c0567a299c13e0cc482e2e1afe59dae', 12, 0, '2018-06-11 00:09:45', NULL, NULL),
(10, 'Integer', '5', '0c0567a299c13e0cc482e2e1afe59dae', 14, 0, '2018-04-24 00:15:19', NULL, NULL),
(11, 'ornare', '10', '0c0567a299c13e0cc482e2e1afe59dae', 18, 0, '2018-11-12 14:48:32', NULL, NULL),
(12, 'pharetra', '5', '0c0567a299c13e0cc482e2e1afe59dae', 17, 0, '2018-12-26 20:56:24', NULL, NULL),
(13, 'vel', '10', '0c0567a299c13e0cc482e2e1afe59dae', 19, 0, '2018-07-03 21:43:13', NULL, NULL),
(14, 'ante,', '17', '0c0567a299c13e0cc482e2e1afe59dae', 10, 0, '2018-03-27 11:59:10', NULL, NULL),
(15, 'vulputate,', '15', '0c0567a299c13e0cc482e2e1afe59dae', 16, 0, '2019-01-14 09:14:00', NULL, NULL),
(16, 'est', '5', '0c0567a299c13e0cc482e2e1afe59dae', 20, 0, '2018-11-18 15:00:57', NULL, NULL),
(17, 'vitae,', '8', '0c0567a299c13e0cc482e2e1afe59dae', 17, 0, '2018-05-11 09:14:55', NULL, NULL),
(18, 'vel', '15', '0c0567a299c13e0cc482e2e1afe59dae', 20, 0, '2018-11-05 06:01:28', NULL, NULL),
(19, 'elit.', '12', '0c0567a299c13e0cc482e2e1afe59dae', 21, 0, '2018-10-27 20:19:16', NULL, NULL),
(20, 'Donec', '10', '0c0567a299c13e0cc482e2e1afe59dae', 13, 0, '2019-02-05 11:54:07', NULL, NULL),
(21, 'vitae', '20', '0c0567a299c13e0cc482e2e1afe59dae', 22, 0, '2018-09-14 00:14:23', NULL, NULL),
(22, 'ultricies', '5', '0c0567a299c13e0cc482e2e1afe59dae', 12, 0, '2019-01-25 05:53:39', NULL, NULL),
(23, 'urna', '15', '0c0567a299c13e0cc482e2e1afe59dae', 10, 0, '2018-04-17 19:28:13', NULL, NULL),
(24, 'malesuada.', '12', '0c0567a299c13e0cc482e2e1afe59dae', 18, 0, '2018-11-07 21:30:15', NULL, NULL),
(25, 'Mauris', '25', '0c0567a299c13e0cc482e2e1afe59dae', 14, 0, '2018-10-29 21:45:43', NULL, NULL),
(26, 'lacinia.', '20', '0c0567a299c13e0cc482e2e1afe59dae', 20, 0, '2018-12-10 18:45:57', NULL, NULL),
(27, '123', '7', '0c0567a299c13e0cc482e2e1afe59dae', 13, 0, '2019-03-06 20:03:32', '2019-03-06 20:03:32', NULL),
(28, 'New', '20', '0cc579e1fbe7aff6d85353876ff3f75f', 10, 0, '2019-03-11 12:08:17', '2019-03-11 12:08:17', NULL),
(29, 'Now', '10', 'b32a3abcc3f48d3fcaba08b43430fe97', 10, 0, '2019-03-18 12:47:07', '2019-03-18 12:47:07', NULL),
(30, 'This is new', '10', 'a0acda9525b3ebfc4b3cbdb04ad0ac18', 10, 0, '2019-03-19 13:08:04', '2019-03-19 13:08:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sunday', '2019-01-11 16:02:45', '2019-01-11 16:02:45', NULL),
(2, 'monday', '2019-01-11 16:02:45', '2019-01-11 16:02:45', NULL),
(3, 'tuesday', '2019-01-11 16:02:45', '2019-01-11 16:02:45', NULL),
(4, 'wednesday', '2019-01-11 16:02:45', '2019-01-11 16:02:45', NULL),
(5, 'thursday', '2019-01-11 16:02:45', '2019-01-11 16:02:45', NULL),
(6, 'friday', '2019-01-11 16:02:45', '2019-01-11 16:02:45', NULL),
(7, 'saturday', '2019-01-11 16:02:45', '2019-01-11 16:02:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, '2018-12-20 21:35:05', '2018-12-20 21:35:05', NULL),
(3, 67, 0, '2019-02-09 00:00:55', '2019-02-09 00:00:55', NULL),
(4, 68, 0, '2019-02-09 00:00:55', '2019-02-09 00:00:55', NULL),
(5, 70, 0, '2019-02-09 00:00:55', '2019-02-09 00:00:55', NULL),
(6, 72, 0, '2019-02-09 00:00:55', '2019-02-09 00:00:55', NULL),
(7, 75, 0, '2019-02-09 00:00:55', '2019-02-09 00:00:55', NULL),
(8, 77, 0, '2019-02-09 00:00:55', '2019-02-09 00:00:55', NULL),
(9, 78, 0, '2019-02-09 00:00:55', '2019-02-09 00:00:55', NULL),
(10, 80, 0, '2019-02-09 00:00:55', '2019-02-09 00:00:55', NULL),
(11, 98, 0, '2019-02-11 13:48:40', '2019-02-11 13:48:40', NULL),
(12, 99, 0, '2019-03-13 12:00:05', '2019-03-13 12:00:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 'asdsad', 0, '2019-02-09 12:44:42', '2019-02-09 12:44:42', NULL),
(2, 1, 96, 'Hello Buckley', 0, '2019-02-09 15:31:48', '2019-02-09 15:31:48', NULL),
(3, 1, 85, 'hello Barber', 0, '2019-02-09 15:33:41', '2019-02-09 15:33:41', NULL),
(4, 2, 85, 'hello Barber', 0, '2019-02-09 15:33:41', '2019-02-09 15:33:41', NULL),
(5, 94, 1, 'Hello Buckley', 0, '2019-02-09 15:31:48', '2019-02-09 15:31:48', NULL),
(6, 86, 1, 'hello Barber', 0, '2019-02-09 15:33:41', '2019-02-09 15:33:41', NULL),
(7, 89, 1, 'hello Barber', 0, '2019-02-09 15:33:41', '2019-02-09 15:33:41', NULL),
(8, 2, 3, 'Hello student', 0, '2019-02-09 16:25:52', '2019-02-09 16:25:52', NULL),
(9, 2, 1, 'Hello Admin', 0, '2019-02-11 17:22:21', '2019-02-11 17:22:21', NULL),
(10, 2, 1, 'hello', 0, '2019-02-11 17:29:36', '2019-02-11 17:29:36', NULL),
(11, 2, 1, 'hello', 0, '2019-02-11 17:29:53', '2019-02-11 17:29:53', NULL),
(12, 2, 1, 'admin', 0, '2019-02-11 17:32:59', '2019-02-11 17:32:59', NULL),
(13, 2, 1, 'hello admin', 0, '2019-02-11 17:38:17', '2019-02-11 17:38:17', NULL),
(14, 2, 1, 'hello admin', 0, '2019-02-11 17:39:47', '2019-02-11 17:39:47', NULL),
(15, 1, 1, 'hello admin', 0, '2019-02-11 17:45:01', '2019-02-11 17:45:01', NULL),
(16, 2, 1, 'hello admin', 0, '2019-02-11 17:46:05', '2019-02-11 17:46:05', NULL),
(17, 1, 2, 'Hello Instructor', 0, '2019-02-11 18:04:06', '2019-02-11 18:04:06', NULL),
(18, 1, 2, 'Hello Instructor', 0, '2019-02-11 18:04:39', '2019-02-11 18:04:39', NULL),
(19, 1, 2, 'Hello Instructor', 0, '2019-02-11 18:05:53', '2019-02-11 18:05:53', NULL),
(20, 3, 3, 'heelppp', 0, '2019-02-12 15:40:34', '2019-02-12 15:40:34', NULL),
(21, 2, 3, 'hi', 0, '2019-02-12 15:53:24', '2019-02-12 15:53:24', NULL),
(22, 2, 1, 'hi admin\n', 0, '2019-02-12 21:22:01', '2019-02-12 21:22:01', NULL),
(23, 2, 3, 'hi student\n', 0, '2019-02-12 21:22:14', '2019-02-12 21:22:14', NULL),
(24, 3, 2, 'hi instructor', 0, '2019-02-12 21:22:42', '2019-02-12 21:22:42', NULL),
(25, 2, 99, 'hello', 0, '2019-03-13 12:09:58', '2019-03-13 12:09:58', NULL),
(26, 1, 100, 'Hello Mustakim', 0, '2019-03-18 21:41:39', '2019-03-18 21:41:39', NULL),
(27, 100, 1, 'Hi Admin ', 0, '2019-03-18 21:42:28', '2019-03-18 21:42:28', NULL),
(28, 101, 1, 'Hello Admin', 0, '2019-03-19 13:06:45', '2019-03-19 13:06:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notification` varchar(255) NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(3) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `notification`, `value`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'demo', 0, 0, '2019-02-11 17:32:59', '2019-02-11 18:07:01', NULL),
(5, 1, 'instructor  send you a message', 0, 1, '2019-02-11 17:46:05', '2019-03-20 18:20:23', NULL),
(6, 2, 'admin  send you a message', 0, 1, '2019-02-11 18:05:53', '2019-03-19 19:11:19', NULL),
(7, 3, 'instructor  send you a message', 0, 0, '2019-02-11 17:46:05', '2019-02-13 16:04:56', NULL),
(8, 3, 'instructor  send you a message', 0, 1, '2019-02-12 15:53:24', '2019-02-13 16:04:56', NULL),
(9, 1, 'instructor  send you a message', 0, 1, '2019-02-12 21:22:01', '2019-03-20 18:20:23', NULL),
(10, 3, 'instructor  send you a message', 0, 1, '2019-02-12 21:22:14', '2019-02-13 16:04:56', NULL),
(11, 2, 'student  send you a message', 0, 1, '2019-02-12 21:22:42', '2019-03-19 19:11:19', NULL),
(12, 1, 'rafi  requested to signup', 0, 1, '2019-03-13 12:00:05', '2019-03-20 18:20:23', NULL),
(13, 99, 'instructor  send you a message', 0, 1, '2019-03-13 12:09:59', '2019-03-13 12:10:18', NULL),
(14, 1, 'mustakim  requested to signup', 0, 1, '2019-03-18 17:58:34', '2019-03-20 18:20:23', NULL),
(15, 100, 'admin  send you a message', 0, 1, '2019-03-18 21:41:39', '2019-03-18 21:42:02', NULL),
(16, 1, 'mustakim  send you a message', 0, 1, '2019-03-18 21:42:28', '2019-03-20 18:20:23', NULL),
(17, 1, 'daud  requested to signup', 0, 1, '2019-03-19 13:03:31', '2019-03-20 18:20:23', NULL),
(18, 1, 'daud  send you a message', 0, 1, '2019-03-19 13:06:45', '2019-03-20 18:20:23', NULL),
(19, NULL, 'admin  send you a message', 1, 1, '2019-03-20 18:56:28', '2019-03-20 18:56:28', NULL),
(20, NULL, 'admin  send you a message', 1, 1, '2019-03-20 18:56:42', '2019-03-20 18:56:42', NULL),
(21, NULL, 'admin  send you a message', 1, 1, '2019-03-20 18:59:30', '2019-03-20 18:59:30', NULL),
(22, NULL, 'admin  send you a message', 1, 1, '2019-03-20 19:07:08', '2019-03-20 19:07:08', NULL),
(23, NULL, 'admin  send you a message', 1, 1, '2019-03-20 19:11:42', '2019-03-20 19:11:42', NULL),
(24, NULL, 'admin  send you a message', 1, 1, '2019-03-20 19:12:09', '2019-03-20 19:12:09', NULL),
(25, 101, 'admin  send you a message', 1, 1, '2019-03-20 19:21:17', '2019-03-20 19:21:17', NULL),
(26, 101, 'admin  send you a message', 1, 1, '2019-03-20 19:21:42', '2019-03-20 19:21:42', NULL),
(27, 101, 'admin  send you a message', 1, 1, '2019-03-20 19:21:49', '2019-03-20 19:21:49', NULL),
(28, 97, 'admin  send you a message', 1, 1, '2019-03-20 19:35:48', '2019-03-20 19:35:48', NULL),
(29, 87, 'admin  send you a message', 1, 1, '2019-03-20 19:36:28', '2019-03-20 19:36:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `courseMaterial_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `courseMaterial_id`, `amount`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 3, 29, '10', 2, '2019-03-18 15:15:28', '2019-03-18 15:15:28', NULL),
(3, 3, 23, '15', 2, '2019-03-18 15:39:48', '2019-03-18 15:39:48', NULL),
(4, 3, 8, '8', 2, '2019-03-18 15:42:07', '2019-03-18 15:42:07', NULL),
(5, 3, 14, '17', 2, '2019-03-18 17:31:29', '2019-03-18 17:31:29', NULL),
(6, 100, 21, '20', 2, '2019-03-18 18:03:23', '2019-03-18 18:03:23', NULL),
(7, 101, 24, '12', 2, '2019-03-19 13:05:32', '2019-03-19 13:05:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `attachment`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Etiam imperdiet dictum magna. Ut tincidunt', 'Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/JNuKyKXLh8U.jpg', 92, 1, '2019-02-16 02:03:23', NULL, NULL),
(2, 'vehicula et, rutrum eu, ultrices sit', 'risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/YkeShrnpr8M.jpg', 69, 1, '2019-02-16 02:03:23', NULL, NULL),
(3, 'risus. Nulla eget metus eu erat', 'Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/wz7-sFtZuyw.jpg', 85, 1, '2019-02-16 02:03:23', NULL, NULL),
(4, 'amet, dapibus id, blandit at, nisi.', 'ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/K6UHkomaXK8.jpg', 69, 1, '2019-02-16 02:03:23', NULL, NULL),
(5, 'cursus. Nunc mauris elit, dictum eu,', 'Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit.', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/J-vUhQQhHjc.jpg', 69, 1, '2019-02-16 02:03:23', NULL, NULL),
(6, 'fringilla, porttitor vulputate, posuere vulputate, lacus.', 'tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/_auYsWsLfSc.jpg', 98, 1, '2019-02-16 02:03:23', NULL, NULL),
(7, 'auctor odio a purus. Duis elementum,', 'Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/QdEn9s5Q_4w.jpg', 86, 1, '2019-02-16 02:03:23', NULL, NULL),
(8, 'eu dolor egestas rhoncus. Proin nisl', 'non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/-SS5Z5x8rKk.jpg', 88, 1, '2019-02-16 02:03:23', NULL, NULL),
(9, 'Mauris eu turpis. Nulla aliquet. Proin', 'est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/rrHtkX1rLP0.jpg', 98, 1, '2019-02-16 02:03:23', NULL, NULL),
(10, 'egestas. Duis ac arcu. Nunc mauris.', 'purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est,', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/QKIcW_4Qlqw.jpg', 90, 1, '2019-02-16 02:03:23', NULL, NULL),
(11, 'neque. Sed eget lacus. Mauris non', 'Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261199/W-pjcFdynOQ.jpg', 84, 1, '2019-02-16 02:03:23', NULL, NULL),
(12, 'sed turpis nec mauris blandit mattis.', 'neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261198/Q8IIh_iulbI.jpg', 70, 1, '2019-02-16 02:03:23', NULL, NULL),
(13, 'a, magna. Lorem ipsum dolor sit', 'metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede.', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261199/9Suzd3dpBH0.jpg', 75, 1, '2019-02-16 02:03:23', NULL, NULL),
(14, 'nisi. Cum sociis natoque penatibus et', 'velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis.', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261199/qrbThHeP2_0.jpg', 69, 1, '2019-02-16 02:03:23', NULL, NULL),
(15, 'scelerisque, lorem ipsum sodales purus, in', 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci,', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261199/qH_fz7Baz1E.jpg', 75, 1, '2019-02-16 02:03:23', NULL, NULL),
(16, 'In lorem. Donec elementum, lorem ut', 'Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261199/StAl7MQIioY.jpg', 72, 1, '2019-02-16 02:03:23', NULL, NULL),
(17, 'est mauris, rhoncus id, mollis nec,', 'elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261199/sxxnM-tRlVg.jpg', 70, 1, '2019-02-16 02:03:23', NULL, NULL),
(18, 'natoque penatibus et magnis dis parturient', 'amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261199/Ei9kRVmrzuY.jpg', 87, 1, '2019-02-16 02:03:23', NULL, NULL),
(19, 'lobortis quam a felis ullamcorper viverra.', 'Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261199/kxOqZycorKo.jpg', 93, 1, '2019-02-16 02:03:23', NULL, NULL),
(20, 'in molestie tortor nibh sit amet', 'Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at', 'https://res.cloudinary.com/dmun7lv5g/image/upload/v1550261199/waUKawojYxs.jpg', 82, 1, '2019-02-16 02:03:23', NULL, NULL),
(21, 'instructor', 'this is the instructor\'s post', 'http://res.cloudinary.com/dmun7lv5g/image/upload/v1550670562/hiddsznnvqgcaotmrgmt.jpg', 2, 0, '2019-02-16 15:05:15', '2019-02-20 13:49:22', NULL),
(22, 'student', 'this is student1', 'http://res.cloudinary.com/dmun7lv5g/image/upload/v1550331161/lhcsaso0lzipbufwpxwd.jpg', 3, 0, '2019-02-16 15:19:58', '2019-02-27 18:09:36', NULL),
(23, 'THIS IS MY POST', 'ad', 'http://res.cloudinary.com/dmun7lv5g/image/upload/v1550669949/maxfbhwrt9eapfdznxtt.jpg', 1, 0, '2019-02-20 13:39:10', '2019-02-27 18:14:58', NULL),
(28, 'this', 'this is last post', 'http://res.cloudinary.com/dmun7lv5g/image/upload/v1551612993/vhuoynf7ybb1n86vngfx.jpg', 3, 0, '2019-03-03 11:36:33', '2019-03-13 14:57:54', NULL),
(29, 'instructor', 'instructor', 'http://res.cloudinary.com/dmun7lv5g/image/upload/v1551629585/q5wiquhlwmcxpukzj52z.jpg', 2, 0, '2019-03-03 16:13:06', '2019-03-13 15:35:17', NULL),
(30, 'New Post', 'AIUB', 'http://res.cloudinary.com/dmun7lv5g/image/upload/v1553000761/vbnjpf01mymgfpgvwach.png', 101, 0, '2019-03-19 13:06:01', '2019-03-19 13:06:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `course_id`, `marks`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 10, '100', 0, '2019-02-06 23:56:22', '2019-02-06 23:56:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, '2018-12-18 19:13:15', '2018-12-18 19:13:15', NULL),
(3, 69, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(4, 71, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(5, 73, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(6, 74, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(7, 76, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(8, 79, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(9, 81, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(10, 82, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(11, 83, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(12, 84, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(13, 85, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(14, 86, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(15, 87, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(16, 88, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(17, 89, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(18, 90, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(19, 91, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(20, 92, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(21, 93, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(22, 94, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(23, 95, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(24, 96, 0, '2019-02-09 00:06:18', '2019-02-09 00:06:18', NULL),
(25, 97, 0, '2019-02-10 20:29:44', '2019-02-10 20:29:44', NULL),
(26, 100, 0, '2019-03-18 17:58:33', '2019-03-18 17:58:33', NULL),
(27, 101, 0, '2019-03-19 13:03:31', '2019-03-19 13:03:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `marks` varchar(255) NOT NULL DEFAULT '-',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`id`, `student_id`, `course_id`, `marks`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 10, '40', 0, '2019-01-04 14:12:21', '2019-02-07 14:37:27', NULL),
(3, 9, 12, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(4, 10, 12, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(5, 11, 13, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(6, 12, 14, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(7, 13, 12, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(11, 16, 15, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(12, 17, 16, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(13, 18, 20, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(14, 19, 20, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(15, 9, 13, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(16, 10, 13, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(17, 11, 12, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(18, 12, 12, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(19, 13, 14, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(20, 14, 18, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(21, 15, 20, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(23, 16, 17, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(24, 17, 21, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(25, 18, 21, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(26, 19, 18, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(27, 18, 21, '-', 0, '2019-02-09 00:35:16', '2019-02-09 00:35:16', NULL),
(28, 17, 22, '-', 0, '2019-02-09 00:35:16', '2019-03-13 13:04:29', NULL),
(29, 19, 22, '-', 0, '2019-02-09 00:35:16', '2019-03-13 13:04:22', NULL),
(30, 18, 22, '-', 0, '2019-02-09 00:35:16', '2019-03-13 13:04:15', NULL),
(38, 15, 12, '-', 0, '2019-02-12 14:33:13', '2019-02-12 14:33:13', NULL),
(39, 15, 21, '-', 0, '2019-02-12 14:33:13', '2019-02-12 14:33:13', NULL),
(53, 15, 10, '50', 0, '2019-02-12 14:41:32', '2019-03-19 13:09:11', NULL),
(54, 15, 16, '-', 0, '2019-02-12 14:41:39', '2019-02-12 14:41:39', NULL),
(55, 15, 22, '-', 0, '2019-02-12 14:54:04', '2019-03-13 13:04:08', NULL),
(57, 1, 11, '-', 0, '2019-03-13 13:13:13', '2019-03-13 13:13:13', NULL),
(58, 26, 22, '0.0', 0, '2019-03-18 17:59:48', '2019-03-18 17:59:48', NULL),
(59, 27, 18, '0.0', 0, '2019-03-19 13:04:30', '2019-03-19 13:04:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` int(3) DEFAULT '0',
  `access_group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `first_name`, `last_name`, `address`, `gender`, `password`, `email`, `contact_no`, `category`, `status`, `access_group_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Firstml,', 'Last', 'Admin Address', 'male', '$2a$08$w308h91/2nL2cA.x8jTIneRR5.9EqvAxCFlqcipWmlTHs.gl0bnEK', 'admin@admin.com', '01ADMINn', NULL, 1, 1, '2018-12-27 00:00:00', '2019-03-19 13:39:36', NULL),
(2, 'instructor', 'instructor', 'instructor', 'instructor', 'female', '$2a$08$TNW/1ScCAOjP3L5Ts9WCo.ItNKZpcE06TF1Yk7D3pjVfNr8VGDi3G', 'instructor@instructor', 'INS012', NULL, 1, 2, '2019-01-05 04:42:57', '2019-03-19 15:11:03', NULL),
(3, 'student', 'student', 'student', 'student', 'male', '$2a$08$NblaBTddYM2e2wsl.4AuneBgejWEqwg8sbQu7I5TsV/7dJ591eKKW', 'smrafi4130@gmail.com', '01954664678', NULL, 1, 3, '2019-01-05 04:42:57', '2019-02-04 19:21:57', NULL),
(67, 'Fischer', 'Peter', 'Keelie', 'VII', 'not-specified', '$2a$08$D2FmWSywgWxkoVtzAAte1OgRv1dJKjznSCpHeWwGfCOLRuaiVLTXG', 'eros.turpis@scelerisquenequeNullam.edu', '1-406-257-1910', NULL, 1, 2, '2018-05-09 07:52:59', NULL, NULL),
(68, 'Blair', 'Tyler', 'Sydnee', 'TX', 'not-specified', '$2a$08$D2FmWSywgWxkoVtzAAte1OgRv1dJKjznSCpHeWwGfCOLRuaiVLTXG', 'feugiat.nec@augueSed.com', '1-681-557-6038', NULL, 1, 2, '2018-04-03 00:00:50', NULL, NULL),
(69, 'Shaw', 'Barry', 'Ila', '?zmir', 'not-specified', '$2a$08$D2FmWSywgWxkoVtzAAte1OgRv1dJKjznSCpHeWwGfCOLRuaiVLTXG', 'Cras.vehicula.aliquet@adipiscingenim.edu', '1-760-867-0540', NULL, 1, 3, '2018-12-28 09:24:24', NULL, NULL),
(70, 'Kim', 'Keaton', 'Camilla', 'ON', 'not-specified', '$2a$08$D2FmWSywgWxkoVtzAAte1OgRv1dJKjznSCpHeWwGfCOLRuaiVLTXG', 'Donec@ipsumprimisin.ca', '1-481-175-6222', NULL, 1, 2, '2018-10-18 00:52:44', NULL, NULL),
(71, 'Barnett', 'Curran', 'Halla', 'Adana', 'not-specified', '$2a$08$.M/srZ51K/DdsGLN4hn2Ne/HC0tEnB0r/zaAWR0iH4MJzYK0YO.DW', 'volutpat.Nulla.dignissim@dui.net', '1-193-302-6036', NULL, 1, 3, '2019-01-27 00:31:32', NULL, NULL),
(72, 'Dunn', 'Blake', 'Mariam', 'Stockholms län', 'male', '$2a$08$.M/srZ51K/DdsGLN4hn2Ne/HC0tEnB0r/zaAWR0iH4MJzYK0YO.DW', 'amet.consectetuer@Donec.ca', '1-360-246-6256', NULL, 1, 2, '2018-11-28 16:52:54', NULL, NULL),
(73, 'Gill', 'Wayne', 'Jenette', 'NE', 'not-specified', '$2a$08$.M/srZ51K/DdsGLN4hn2Ne/HC0tEnB0r/zaAWR0iH4MJzYK0YO.DW', 'quam.a.felis@nequeNullamut.ca', '1-940-348-8251', NULL, 1, 3, '2018-12-15 20:42:26', NULL, NULL),
(74, 'Kaufman', 'Avram', 'Lydia', 'Biobío', 'female', '$2a$08$.M/srZ51K/DdsGLN4hn2Ne/HC0tEnB0r/zaAWR0iH4MJzYK0YO.DW', 'odio.Nam.interdum@cursuspurus.ca', '189-1061', NULL, 1, 3, '2018-05-30 21:41:37', NULL, NULL),
(75, 'Prince', 'Holmes', 'Belle', 'VB', 'not-specified', '$2a$08$.M/srZ51K/DdsGLN4hn2Ne/HC0tEnB0r/zaAWR0iH4MJzYK0YO.DW', 'rutrum.magna@antedictum.org', '1-978-832-2385', NULL, 1, 2, '2018-03-18 11:15:55', NULL, NULL),
(76, 'Bray', 'Peter', 'Uta', 'CM', 'female', '$2a$08$f5GUw04nNKu4KQ3qA19F1O7Pj..TSM9AeCjZroK8fSJQp1iHu.x.q', 'diam@ut.com', '1-605-679-6583', NULL, 1, 3, '2018-10-14 18:25:44', NULL, NULL),
(77, 'Wooten', 'Marsden', 'Meghan', 'Ontario', 'not-specified', '$2a$08$f5GUw04nNKu4KQ3qA19F1O7Pj..TSM9AeCjZroK8fSJQp1iHu.x.q', 'risus.varius@magna.ca', '1-891-571-2551', NULL, 1, 2, '2018-12-20 14:52:23', NULL, NULL),
(78, 'Santiago', 'Timon', 'Veronica', 'Lombardia', 'not-specified', '$2a$08$f5GUw04nNKu4KQ3qA19F1O7Pj..TSM9AeCjZroK8fSJQp1iHu.x.q', 'penatibus@metus.co.uk', '1-260-355-0609', NULL, 1, 2, '2018-05-03 05:49:08', NULL, NULL),
(79, 'Estes', 'Brody', 'Amaya', 'Comunitat Valenciana', 'not-specified', '$2a$08$f5GUw04nNKu4KQ3qA19F1O7Pj..TSM9AeCjZroK8fSJQp1iHu.x.q', 'Phasellus.elit@risusDonecegestas.org', '308-7557', NULL, 1, 3, '2018-03-08 07:18:13', NULL, NULL),
(80, 'Joyce', 'Reuben', 'Sloane', 'PR', 'female', '$2a$08$f5GUw04nNKu4KQ3qA19F1O7Pj..TSM9AeCjZroK8fSJQp1iHu.x.q', 'sed@metusInnec.co.uk', '1-319-826-6801', NULL, 1, 2, '2018-08-18 17:54:34', NULL, NULL),
(81, 'Logan', 'Kevin', 'Kerry', 'Gelderland', 'not-specified', '$2a$08$o7ObrNWaakgR6uI2GGyfVOuwBWGiq8gQy5M0wpM3z4TRRM5IsWE.e', 'Phasellus.fermentum.convallis@varius.ca', '1-474-442-8410', NULL, 1, 3, '2018-11-10 07:45:46', NULL, NULL),
(82, 'Boyd', 'Philip', 'Sage', 'Vienna', 'female', '$2a$08$o7ObrNWaakgR6uI2GGyfVOuwBWGiq8gQy5M0wpM3z4TRRM5IsWE.e', 'accumsan@sed.edu', '306-6078', NULL, 1, 3, '2019-01-14 03:54:11', NULL, NULL),
(83, 'Holmes', 'Caleb', 'Tasha', 'Vlaams-Brabant', 'male', '$2a$08$o7ObrNWaakgR6uI2GGyfVOuwBWGiq8gQy5M0wpM3z4TRRM5IsWE.e', 'sit@Etiambibendumfermentum.net', '841-8203', NULL, 1, 3, '2019-01-27 19:22:52', NULL, NULL),
(84, 'Castillo', 'Lewis', 'Catherine', 'VEN', 'not-specified', '$2a$08$o7ObrNWaakgR6uI2GGyfVOuwBWGiq8gQy5M0wpM3z4TRRM5IsWE.e', 'sed.sem@cursuset.edu', '1-898-823-1098', NULL, 1, 3, '2018-05-19 18:02:46', NULL, NULL),
(85, 'Barber', 'Tad', 'Yen', 'Catalunya', 'female', '$2a$08$o7ObrNWaakgR6uI2GGyfVOuwBWGiq8gQy5M0wpM3z4TRRM5IsWE.e', 'Cras@quamdignissimpharetra.edu', '1-638-307-5067', NULL, 1, 3, '2018-09-08 22:34:29', NULL, NULL),
(86, 'Weiss', 'Kenneth', 'Joy', 'VII', 'male', '$2a$08$o7ObrNWaakgR6uI2GGyfVOuwBWGiq8gQy5M0wpM3z4TRRM5IsWE.e', 'Mauris.molestie.pharetra@lacusvariuset.net', '443-5108', NULL, 1, 3, '2018-11-08 01:12:07', NULL, NULL),
(87, 'Wiggins', 'Christian', 'Chanda', 'N.', 'female', '$2a$08$o7ObrNWaakgR6uI2GGyfVOuwBWGiq8gQy5M0wpM3z4TRRM5IsWE.e', 'Maecenas.mi@elit.co.uk', '966-0908', NULL, 1, 3, '2018-11-02 19:20:29', NULL, NULL),
(88, 'Whitney', 'Steven', 'Oprah', 'Montgomeryshire', 'not-specified', '$2a$08$o7ObrNWaakgR6uI2GGyfVOuwBWGiq8gQy5M0wpM3z4TRRM5IsWE.e', 'egestas.Aliquam.nec@nulla.org', '636-3514', NULL, 1, 3, '2018-05-12 02:31:54', NULL, NULL),
(89, 'Kirby', 'Chester', 'Whoopi', 'Sicilia', 'female', '$2a$08$o7ObrNWaakgR6uI2GGyfVOuwBWGiq8gQy5M0wpM3z4TRRM5IsWE.e', 'congue@sapien.edu', '1-860-519-8198', NULL, 1, 3, '2018-03-01 07:47:53', NULL, NULL),
(90, 'Heath', 'Tyrone', 'Taylor', 'AN', 'female', '$2a$08$T5e3bmJmTxv4aw6rbuGwkeCnIYNElOsavP0ZAcitwwC3Iz6RDuJx.', 'Quisque.porttitor.eros@sagittis.org', '1-556-149-8672', NULL, 1, 3, '2018-03-11 11:10:06', NULL, NULL),
(91, 'Dawson', 'Vance', 'Naida', 'Dolno?l?skie', 'male', '$2a$08$T5e3bmJmTxv4aw6rbuGwkeCnIYNElOsavP0ZAcitwwC3Iz6RDuJx.', 'lorem.eu@ultrices.com', '298-8963', NULL, 1, 3, '2018-10-06 21:08:06', NULL, NULL),
(92, 'Pitts', 'Mohammad', 'Sheila', 'PE', 'not-specified', '$2a$08$T5e3bmJmTxv4aw6rbuGwkeCnIYNElOsavP0ZAcitwwC3Iz6RDuJx.', 'nisi@euultricessit.org', '1-751-634-9726', NULL, 1, 3, '2018-03-11 20:12:56', NULL, NULL),
(93, 'Morrison', 'Clark', 'Jada', 'East Lothian', 'female', '$2a$08$T5e3bmJmTxv4aw6rbuGwkeCnIYNElOsavP0ZAcitwwC3Iz6RDuJx.', 'Quisque.ac.libero@idenimCurabitur.ca', '939-5256', NULL, 1, 3, '2018-02-14 12:44:09', NULL, NULL),
(94, 'Stephenson', 'Hedley', 'Mechelle', 'Picardie', 'female', '$2a$08$T5e3bmJmTxv4aw6rbuGwkeCnIYNElOsavP0ZAcitwwC3Iz6RDuJx.', 'magna.Sed.eu@nuncInat.net', '981-4332', NULL, 1, 3, '2018-09-10 18:39:11', NULL, NULL),
(95, 'Mayo', 'Ian', 'Fay', 'Ist', 'female', '$2a$08$T5e3bmJmTxv4aw6rbuGwkeCnIYNElOsavP0ZAcitwwC3Iz6RDuJx.', 'elit.pede@vestibulumMaurismagna.edu', '1-732-323-0964', NULL, 1, 3, '2018-03-08 10:51:05', NULL, NULL),
(96, 'Buckley', 'Hammett', 'Riley', 'Anambra', 'female', '$2a$08$T5e3bmJmTxv4aw6rbuGwkeCnIYNElOsavP0ZAcitwwC3Iz6RDuJx.', 'Proin.vel@ullamcorper.ca', '644-0263', NULL, 1, 3, '2018-06-08 15:38:06', NULL, NULL),
(97, 'abc', NULL, NULL, NULL, NULL, '$2a$08$V.vE4IquwIJAlhtqVxzliOgayxMyPl4.4Sd6WlFcMCa57N2C/gc3u', 'abc@abc.com', '01400664678', NULL, 0, 3, '2019-02-10 20:29:44', '2019-02-10 20:29:44', NULL),
(98, 'hello', NULL, NULL, NULL, NULL, '$2a$08$zNdNK057IyQZYGanJHfuJuBQWgPz/JVdICoM0YU.tGewGK4sOrzPG', 'hello@hello.com', '01954664678', NULL, 0, 2, '2019-02-11 13:48:40', '2019-02-11 13:48:40', NULL),
(99, 'rafi', NULL, NULL, NULL, NULL, '$2a$08$/x6eNdIEaO6.2f0C5XFuAOibMEjn1.bueno7QmLLjIWcOFPi1F682', 'rafi@gmail.com', '01954664678', NULL, 1, 2, '2019-03-13 12:00:05', '2019-03-13 12:00:22', NULL),
(100, 'mustakim', NULL, NULL, NULL, NULL, '$2a$08$TMLpXjEPKCTibTfuZ.NA7urC9CgUBQ/9ZN90EWNniVrK85Vb481ja', 'mustakim@gmail.com', '01680459329', NULL, 1, 3, '2019-03-18 17:58:33', '2019-03-18 22:25:09', NULL),
(101, 'daud', NULL, NULL, NULL, NULL, '$2a$08$lIEAgM8CE7BbwneRudlQg.tlJ/7KEGFDz3M3RjZr2mCZIbEBsnNjq', 'daud@gmail.com', '0100000000', NULL, 1, 3, '2019-03-19 13:03:31', '2019-03-19 13:04:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_groups`
--
ALTER TABLE `access_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_materials`
--
ALTER TABLE `course_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`user_name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_groups`
--
ALTER TABLE `access_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `course_materials`
--
ALTER TABLE `course_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
