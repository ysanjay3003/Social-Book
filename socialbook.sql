-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 10:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Sanjay Yadav', 'admin@socialbook.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(49, 17, 13, 'looking beautiful', '2023-05-11 16:50:37'),
(50, 18, 13, 'awsome bro', '2023-05-13 11:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(87, 14, 13),
(88, 13, 14),
(89, 15, 13),
(90, 15, 14),
(91, 13, 15),
(92, 13, 16),
(93, 14, 15),
(94, 17, 13),
(95, 17, 14),
(96, 17, 15),
(97, 17, 16),
(98, 13, 17),
(99, 21, 13),
(100, 21, 14),
(101, 21, 15),
(102, 21, 17),
(103, 21, 18),
(104, 21, 19),
(105, 21, 20),
(106, 13, 18),
(107, 13, 19),
(108, 13, 20),
(109, 13, 21),
(110, 26, 13),
(111, 26, 14),
(112, 26, 18),
(113, 27, 13),
(114, 27, 14),
(115, 27, 15),
(116, 27, 17),
(117, 27, 18),
(118, 27, 19),
(119, 27, 20),
(120, 27, 25),
(121, 27, 26),
(122, 26, 15),
(123, 26, 17),
(124, 26, 19),
(125, 26, 27),
(126, 13, 26),
(127, 13, 27);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(97, 17, 14),
(100, 17, 13),
(101, 18, 13),
(102, 18, 14),
(103, 18, 15),
(104, 17, 15),
(106, 19, 17),
(107, 18, 17),
(108, 17, 17),
(109, 19, 13),
(115, 21, 13),
(118, 20, 27),
(119, 19, 27),
(120, 18, 27),
(121, 17, 27),
(122, 20, 26),
(123, 19, 26),
(124, 17, 26),
(125, 18, 26),
(126, 23, 26),
(127, 23, 13);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `msg`, `read_status`, `created_at`) VALUES
(48, 13, 14, 'remember me!', 1, '2023-05-10 20:27:24'),
(49, 14, 13, 'haan yar , kaise hai', 1, '2023-05-13 11:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `post_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_user_id`, `message`, `created_at`, `from_user_id`, `read_status`, `post_id`) VALUES
(116, 13, 'started following you !', '2023-05-10 20:24:40', 14, 1, '0'),
(117, 14, 'started following you !', '2023-05-10 20:25:50', 13, 1, '0'),
(118, 14, 'liked your post !', '2023-05-10 20:29:19', 13, 1, '17'),
(119, 13, 'started following you !', '2023-05-11 16:07:25', 15, 1, '0'),
(120, 14, 'started following you !', '2023-05-11 16:07:26', 15, 1, '0'),
(121, 14, 'commented on your post', '2023-05-11 16:50:37', 13, 1, '17'),
(122, 14, 'unliked your post !', '2023-05-11 16:50:58', 13, 1, '17'),
(123, 14, 'liked your post !', '2023-05-11 16:50:58', 13, 1, '17'),
(124, 15, 'started following you !', '2023-05-11 16:51:06', 13, 1, '0'),
(125, 16, 'started following you !', '2023-05-13 11:47:35', 13, 0, '0'),
(126, 13, 'liked your post !', '2023-05-13 11:50:06', 14, 1, '18'),
(127, 15, 'started following you !', '2023-05-13 11:50:20', 14, 1, '0'),
(128, 13, 'liked your post !', '2023-05-13 11:51:45', 15, 1, '18'),
(129, 14, 'liked your post !', '2023-05-13 11:51:47', 15, 0, '17'),
(130, 13, 'started following you !', '2023-05-13 20:00:02', 17, 1, '0'),
(131, 14, 'started following you !', '2023-05-13 20:00:03', 17, 0, '0'),
(132, 15, 'started following you !', '2023-05-13 20:00:05', 17, 0, '0'),
(133, 16, 'started following you !', '2023-05-13 20:00:08', 17, 0, '0'),
(134, 17, 'started following you !', '2023-05-14 02:50:19', 13, 1, '0'),
(135, 13, 'liked your post !', '2023-05-14 11:47:31', 17, 1, '19'),
(136, 13, 'liked your post !', '2023-05-14 11:47:32', 17, 1, '18'),
(137, 14, 'liked your post !', '2023-05-14 11:47:33', 17, 0, '17'),
(149, 18, 'started following you !', '2023-05-15 15:59:00', 13, 0, '0'),
(150, 19, 'started following you !', '2023-05-15 15:59:01', 13, 0, '0'),
(151, 20, 'started following you !', '2023-05-15 15:59:02', 13, 0, '0'),
(152, 21, 'started following you !', '2023-05-15 15:59:02', 13, 0, '0'),
(153, 21, 'liked your post !', '2023-05-15 15:59:08', 13, 0, '21'),
(154, 13, 'started following you !', '2023-05-15 17:50:53', 26, 1, '0'),
(155, 14, 'started following you !', '2023-05-15 17:50:53', 26, 0, '0'),
(156, 18, 'started following you !', '2023-05-15 17:50:55', 26, 0, '0'),
(157, 13, 'started following you !', '2023-05-15 17:58:59', 27, 1, '0'),
(158, 14, 'started following you !', '2023-05-15 17:59:00', 27, 0, '0'),
(159, 15, 'started following you !', '2023-05-15 17:59:01', 27, 0, '0'),
(160, 17, 'started following you !', '2023-05-15 17:59:01', 27, 0, '0'),
(161, 18, 'started following you !', '2023-05-15 17:59:02', 27, 0, '0'),
(162, 19, 'started following you !', '2023-05-15 18:09:15', 27, 0, '0'),
(163, 20, 'started following you !', '2023-05-15 18:09:16', 27, 0, '0'),
(164, 25, 'started following you !', '2023-05-15 18:09:16', 27, 0, '0'),
(165, 26, 'started following you !', '2023-05-15 18:09:17', 27, 1, '0'),
(166, 13, 'liked your post !', '2023-05-15 18:20:54', 27, 2, '20'),
(167, 13, 'liked your post !', '2023-05-15 18:20:57', 27, 1, '19'),
(168, 13, 'liked your post !', '2023-05-15 18:20:59', 27, 1, '18'),
(169, 14, 'liked your post !', '2023-05-15 18:21:00', 27, 0, '17'),
(170, 15, 'started following you !', '2023-05-16 00:55:22', 26, 0, '0'),
(171, 17, 'started following you !', '2023-05-16 00:55:23', 26, 0, '0'),
(172, 19, 'started following you !', '2023-05-16 00:55:24', 26, 0, '0'),
(173, 13, 'liked your post !', '2023-05-16 00:55:40', 26, 2, '20'),
(174, 13, 'liked your post !', '2023-05-16 00:55:43', 26, 1, '19'),
(175, 14, 'liked your post !', '2023-05-16 00:55:48', 26, 0, '17'),
(176, 13, 'liked your post !', '2023-05-16 00:55:50', 26, 1, '18'),
(177, 27, 'started following you !', '2023-05-16 01:03:41', 26, 0, '0'),
(178, 26, 'started following you !', '2023-05-16 07:46:34', 13, 0, '0'),
(179, 26, 'liked your post !', '2023-05-16 07:48:22', 13, 0, '23'),
(180, 27, 'started following you !', '2023-05-16 07:48:25', 13, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`) VALUES
(17, 14, '1683750271peacock.png', 'a peacock graces our garden with its stunning presence on this beautiful morning\r\n', '2023-05-10 20:24:31'),
(18, 13, '1683817009landscape-trees-mountains-clouds-digital-art-38-1920x1080.jpg', 'looking great , isn\'t', '2023-05-11 14:56:49'),
(19, 13, '1683979308sunrise-of-minimal-mountains-5k-kl-1920x1080.jpg', 'sunshine', '2023-05-13 12:01:48'),
(22, 27, '1684173988blue-black-muscle-car-with-license-plate-that-says-trans-front.jpg', 'dream car', '2023-05-15 18:06:28'),
(23, 26, '1684199297ray-hennessy-xUUZcpQlqpM-unsplash.jpg', '', '2023-05-16 01:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ac_status` int(11) NOT NULL COMMENT '0=not verified,1=active,2=blocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`) VALUES
(13, 'Sanjay ', 'Yadav', 1, 'sanj95080@gmail.com', 'yadavsanjay', '5f1c5342818bf8c161d8ff4e18ff1720', '1684143458profile-11.jpg', '2023-05-10 16:39:33', '2023-05-15 09:37:38', 1),
(14, 'Deepak', 'kumar', 1, 'snjku007@gmail.com', 'kumardeepak', '498b5924adc469aa7b660f457e0fc7e5', 'default_profile.jpg', '2023-05-10 20:21:46', '2023-05-10 20:22:10', 1),
(15, 'Ezio', 'Auditore', 1, 'ezio5360@gmail.com', 'ezioauditore', '2a2b55d7998d5142e0454ffde2793d99', 'default_profile.jpg', '2023-05-11 16:05:52', '2023-05-11 16:07:21', 1),
(17, 'Suraj ', 'Rawat', 1, 'unity3d3003@gmail.com', 'rawatsuraj', '4dd49f4f84e4d6945e3bc6d14812004e', 'default_profile.jpg', '2023-05-13 19:56:11', '2023-05-14 11:51:03', 1),
(18, 'Bijit', 'Kumar', 1, 'kumarbijit08@gmail.com', 'kumarbijit', '7eea26eae9a1bfdb7089dd601cdc5111', 'default_profile.jpg', '2023-05-15 13:01:00', '2023-05-15 13:01:00', 0),
(19, 'Jason', 'Browne', 1, 'recardosy3003@gmail.com', 'brownejason', '2b877b4b825b48a9a0950dd5bd1f264d', 'default_profile.jpg', '2023-05-15 14:43:03', '2023-05-15 14:44:00', 1),
(20, 'Ankul ', 'Sah', 1, 'ankulgupta792@gmail.com', 'ankul007', '4693bf007877183deaf779026ec888c9', 'default_profile.jpg', '2023-05-15 14:45:02', '2023-05-15 14:55:39', 1),
(25, 'Neha', 'Sharma', 2, 'lalmanospe@gufum.com', 'sharmaneha', '262f5bdd0af9098e7443ab1f8e435290', 'default_profile.jpg', '2023-05-15 17:47:38', '2023-05-15 17:48:17', 1),
(26, 'Ladily', 'Singh', 2, 'bispunurto@gufum.com', 'ladilysingh', 'a7a8581ad71f52a2da68125e1109391f', 'default_profile.jpg', '2023-05-15 17:50:13', '2023-05-15 17:50:49', 1),
(27, 'Molly', 'Tracey', 2, 'naknizurki@gufum.com', 'mollytracey', 'ed6658e6f22583ed66fb5e5e735b9e63', '1684173513profile-17.jpg', '2023-05-15 17:54:35', '2023-05-15 17:58:33', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
