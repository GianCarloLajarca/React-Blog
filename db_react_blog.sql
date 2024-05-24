-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 08:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_react_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_aid` int(11) NOT NULL,
  `category_title` varchar(50) NOT NULL,
  `category_is_active` tinyint(1) NOT NULL,
  `category_datetime` varchar(20) NOT NULL,
  `category_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_aid` int(11) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_photo` varchar(50) NOT NULL,
  `post_author` varchar(50) NOT NULL,
  `post_category` varchar(20) NOT NULL,
  `post_is_active` tinyint(1) NOT NULL,
  `post_article` text NOT NULL,
  `post_publish_date` varchar(20) NOT NULL,
  `post_datetime` varchar(20) NOT NULL,
  `post_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_aid`, `post_title`, `post_photo`, `post_author`, `post_category`, `post_is_active`, `post_article`, `post_publish_date`, `post_datetime`, `post_created`) VALUES
(1, 'This Is The Best Camera For Short Minimal Style', 'post-4.jpg', 'Johnny T Hale', 'Health', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...\n\n## **Heading** level 2\n\nI really like using Markdown.\n\nI think Ill use it to format all of my documents from now on.\n\nThis is the first line.  \nAnd this is the second line.\n\nA cat ___meow___\n\n![Tux, the Linux mascot](https://images.summitmedia-digital.com/cosmo/images/2024/03/07/bini-fun-fearless-p-pop-powerhouse-we-all-need-1709808372.jpg)', '2024-05-24', '2024-05-24 13:58:20', '2024-05-22 14:18:29'),
(3, 'Technology Can Make Your Live Easy And Fast', 'post-2.jpg', 'Johnny T Hale', 'Techno', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...', '2024-05-24', '2024-05-24 10:20:54', '2024-05-22 14:19:05'),
(5, 'Nice Photo Shooting With Hand Classic Style', 'post-1.jpg', 'Johnny T Hale', 'Lifestyle', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...', 'August 28, 2022', '2024-05-22 22:09:27', '2024-05-22 22:08:44'),
(6, 'Best Lighting For Outdoor Photo Shoot Style', 'post-3.jpg', 'Johnny T Hale', 'Travel', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...\n\n\n\n## Header 1', '2024-05-24', '2024-05-24 13:50:32', '2024-05-22 22:13:50'),
(7, 'Relaxing With Nice View After Enjoy Food', 'post-5.jpg', 'Johnny T Hale', 'Food', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...', 'August 28, 2022', '2024-05-23 07:08:13', '2024-05-23 07:08:13'),
(8, 'Best Lighting For Outdoor Photo Shoot Style', 'post-6.jpg', 'Johnny T Hale', 'Lifestyle', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...', '2024-05-24', '2024-05-24 10:22:44', '2024-05-23 07:09:42'),
(9, 'New Skill With The Height Quality Camera Lens', 'post-7.jpg', 'Johnny T Hale', 'Health', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...', 'August 28, 2022', '2024-05-23 07:10:22', '2024-05-23 07:10:22'),
(10, 'This Is The Best Camera For Short Minimal Style', 'post-8.jpg', 'Johnny T Hale', 'Health', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...', 'August 28, 2022', '2024-05-23 07:11:36', '2024-05-23 07:11:36'),
(11, 'Technology Can Make Your Live Easy And Fast', 'post-9.jpg', 'Johnny T Hale', 'Techno', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...', 'August 28, 2022', '2024-05-23 07:12:42', '2024-05-23 07:12:42'),
(12, 'Best Lighting For Outdoor Photo Shoot Style', 'post-10.jpg', 'Johnny T Hale', 'Travel', 1, 'There are many variations of passages of Lorem Ipsum available but the majority have suffered...', 'August 28, 2022', '2024-05-23 07:13:20', '2024-05-23 07:13:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_aid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
