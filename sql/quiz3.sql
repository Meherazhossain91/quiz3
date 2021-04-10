-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2021 at 10:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz3`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `name`) VALUES
(1, 'games'),
(2, 'educational'),
(3, 'Software'),
(4, 'Discover ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `password`, `email`, `create_at`) VALUES
(1, 'Apu', '$2y$10$jO3GphCCo5s69WTjVXjOZekTm/TvxP3nBO8kaCp75TpuuIocjCmcy', 'apu@gmail.com', '2021-04-10 07:21:22'),
(2, 'adaada', '$2y$10$qdqCPK1RWhaqH7Uw1jmi7.qbBlkt5yX.1dXZPzCSgbHNJDSYcPRLu', 'ada@diu.edu.bd', '2021-04-10 07:39:58'),
(3, 'adad', '$2y$10$pNqo3Rh67IXmWcKEGmdDQecJm4m7TK1YQF65dCnR1R.mOe851v/QG', 'adad@diu.edu.bd', '2021-04-10 07:48:12'),
(4, 'adadadadad', '$2y$10$5V0UjLsz/xrLpd2JtcIco.YeFzdPrANl/n7J3MtbgIS93vuY4xnZG', 'aaaadad@diu.edu.bd', '2021-04-10 07:53:03'),
(5, 'meherazapu', '$2y$10$QE/DEQxXcZ8IhKd185/38efeWrMJYdwgzTgUShTSFE0KLODPf5./i', 'apiiii@diu.edu.bd', '2021-04-10 07:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `vrs`
--

CREATE TABLE `vrs` (
  `id` int(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cat_id` int(255) NOT NULL,
  `vrs_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vrs`
--
ALTER TABLE `vrs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vrs`
--
ALTER TABLE `vrs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
