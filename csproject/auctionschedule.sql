-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 27, 2021 at 03:41 AM
-- Server version: 8.0.25
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `auctionschedule`
--

CREATE TABLE `auctionschedule` (
  `Item` varchar(20) DEFAULT NULL,
  `Timings` varchar(6) DEFAULT NULL,
  `Date` varchar(12) DEFAULT NULL,
  `itemdesc` varchar(200) DEFAULT NULL,
  `startprice` int DEFAULT NULL,
  `Item_Name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auctionschedule`
--

INSERT INTO `auctionschedule` (`Item`, `Timings`, `Date`, `itemdesc`, `startprice`, `Item_Name`) VALUES
('furn.png', '10:30', '27-07-2021', 'This chair is from roman empire', 1000, 'Ancient Chair'),
('chola_idol.jpg', '12:49', '2021-07-27', 'This is Mona Lisa', 100000, 'Mona Lisa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
