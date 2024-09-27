-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2024 at 06:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footballdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `member_username` varchar(255) NOT NULL,
  `member_password` varchar(255) NOT NULL,
  `member_phone` varchar(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`member_id`, `member_name`, `member_username`, `member_password`, `member_phone`, `timestamp`) VALUES
(1, 'Pimmawat Saita', 'thephu', '1234', '0931713860', '2024-08-22 17:14:51'),
(2, 'way', 'way', 'awy', 'way', '2024-08-22 19:25:53'),
(7, 'kong', 'garet', '1234', '123423432', '2024-08-23 06:11:46'),
(8, 'ประพันธ์ แข็งขัน', 'konggaret', '12345678', '0987654321', '2024-08-23 06:21:50'),
(13, 'wave', 'wave', '1212', '12321321321', '2024-08-23 07:56:52'),
(14, 'jr', 'jr123', '1234', '09821323123', '2024-08-24 07:22:08'),
(15, 'qwer', 'qwer', 'qwer', '1234', '2024-08-24 10:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `booking_id` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `startTime` varchar(255) NOT NULL,
  `endTime` varchar(255) NOT NULL,
  `timeUsed` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`booking_id`, `field`, `date`, `startTime`, `endTime`, `timeUsed`, `name`) VALUES
(33, 'สนาม 1', '27/09/2024', '18:00', '20:00', 2, 'กันต์'),
(34, 'สนาม 2', '2024-09-27', '18:00', '20:00', 2, 'กันต์'),
(35, 'สนาม 2', '2024-09-27', '20:00', '23:00', 3, 'กันต์');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `password`) VALUES
(17, 'Pimmawat Saita', '0931713860', '$2b$10$nyI9DznoBZCkd6aNgJ80nO7XMGLSk2/urlQt3FEiMVKzXfJWLxn6C'),
(18, 'Pimmawat Saita', '0987654321', '$2b$10$WLHg39cmT/2jA0jwhXFl6e0V27PhnyvF0T22eO7mA3EtX4wVCq4TS'),
(19, 'กันต์', '0931713861', '$2b$10$vtLRaUqzfTF6Ll52BNpu3eyF65oMgSF3RKqlZEkmiCsWyIg8BbNvm'),
(20, 'Microvave', '0922482510', '$2b$10$Gb3pGXfwtcxhDpt3mbyVxebBvaEGX3OMVqtTHNSX1ilu3.ZrUL1f6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
