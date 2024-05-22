-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 08:43 AM
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
(1, 'Hi', 'dasd', 'qewqeqw', 'eqwewq', 0, 'ewqeqweqw', 'eqwewqedsa', '2024-05-22 14:28:53', '2024-05-22 14:18:29'),
(2, 'Post 2', 'image', 'Jake', 'ddddd', 1, 'eeeee', 'ffffff', '2024-05-22 14:29:55', '2024-05-22 14:18:34'),
(3, 'Hello', 'dasd', 'qewqeqw', 'eqwewq', 1, 'ewqeqweqw', 'eqwewqedsa', '2024-05-22 14:19:05', '2024-05-22 14:19:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
