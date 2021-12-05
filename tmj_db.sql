-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 04:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmj_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_address` varchar(250) NOT NULL,
  `user_datereg` datetime(6) NOT NULL,
  `otp` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_email`, `user_name`, `user_password`, `user_phone`, `user_address`, `user_datereg`, `otp`) VALUES
(1, 'shyv@gmail.com', 'shyv', 'bec75d2e4e2acf4f4ab038144c0d862505e52d07', 'na', 'na', '0000-00-00 00:00:00.000000', 54769),
(2, 'yue@gmail.com', 'Yue', 'bec75d2e4e2acf4f4ab038144c0d862505e52d07', 'na', 'na', '0000-00-00 00:00:00.000000', 29081),
(5, 'may@gmail.com', 'may', 'df45126634b6b0754b540a4d0cae8a1c3e64b939', 'na', 'na', '0000-00-00 00:00:00.000000', 34252),
(6, 'shyvonne@gmail.com', 'shyy', 'df45126634b6b0754b540a4d0cae8a1c3e64b939', 'na', 'na', '0000-00-00 00:00:00.000000', 75192),
(7, 'wann@gmail.com', 'wann', 'a65cc321febbb45e9a302885dfbe9ff19897ba74', 'na', 'na', '0000-00-00 00:00:00.000000', 22339),
(8, 'heyy@gmail.com', 'heyy', 'df45126634b6b0754b540a4d0cae8a1c3e64b939', 'na', 'na', '0000-00-00 00:00:00.000000', 59374),
(9, 'yoo@gmail.com', 'yooo', 'df45126634b6b0754b540a4d0cae8a1c3e64b939', 'na', 'na', '0000-00-00 00:00:00.000000', 42216);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
