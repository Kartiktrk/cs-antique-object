-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 27, 2021 at 03:37 AM
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
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `BiderName` varchar(20) DEFAULT NULL,
  `BiderPassword` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `kartik`
--

CREATE TABLE `kartik` (
  `Items_Name` varchar(200) DEFAULT NULL,
  `Items` varchar(200) DEFAULT NULL,
  `Price` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kartik`
--

INSERT INTO `kartik` (`Items_Name`, `Items`, `Price`) VALUES
('Chola era bronze idol', 'chola_idol.jpg', '10,00,000.00');

-- --------------------------------------------------------

--
-- Table structure for table `me`
--

CREATE TABLE `me` (
  `Items_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Items` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `me`
--

INSERT INTO `me` (`Items_Name`, `Items`, `Price`) VALUES
('Chola era bronze idol', 'chola_idol.jpg', '10,00,000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pname` varchar(200) NOT NULL,
  `price` bigint NOT NULL,
  `timeline` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `speciality` varchar(300) NOT NULL,
  `pid` int NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pname`, `price`, `timeline`, `category`, `speciality`, `pid`, `image`) VALUES
('chola bronze idol', 1000000, 331, 'idol', 'A unique form of chola era bronze architecture', 1, ''),
('King Arthur\'s shield', 200000, 599, 'weapons', 'Considered to be symbol of equality.', 2, ''),
('Sputnik-1', 10000000, 1957, 'satellite', 'The world\'s first artificial satellite sent into space', 3, ''),
('Test Cap', 10000, 1978, 'sport item', 'Kapil Dev\'s first test cap in his debut vs Pakistan', 4, ''),
('General Dyer\'s Pistol', 500000, 1919, 'weapons', 'Possessed by the infamous General Dyer from the Jallianwala Bagh massacre', 5, ''),
('Sachin Tendulkar\'s bat', 3000000, 2012, 'sport item', 'Used by the Little Master to score his 100th century', 6, ''),
('Rice Painting', 500000, 1933, 'art', 'Rice Painting of Lord Buddha done with intricate design', 7, ''),
('Monolithic stone', 300000, 160, 'excavation', 'old stone found at excavation site and confirmed if monolithic age', 8, ''),
('last supper', 3500000, 1495, 'art ', 'Da Vinci\'s great work after monalisa.Intricate design', 9, ''),
('mobile phone', 100000, 1973, 'electronics', 'Motorala Inc brought their first version of the mobile phone', 10, ''),
('antique lamp', 19000, 1950, 'art', 'way back in 1950s. used in royal houses and adds colour to the house', 11, ''),
('teaset', 25000, 1947, 'furniture', 'teaset used to belong to Lord Mountbatten in 1947. more than 150 years old.', 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `Name` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Subject` varchar(30) DEFAULT NULL,
  `Message` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`Name`, `Email`, `Subject`, `Message`) VALUES
('Qwerty', 'qwerty@gmail.com', 'Antique Object', ' This is regarding the object we recieved was nice.\r\n        '),
('User1', 'user@gmail.com', 'Antique Object', ' We have ordered this item.\r\n        '),
('User1', 'mailme.jananie@gmail.com', 'Antique Teaset', ' The item we recieved is damaged');

-- --------------------------------------------------------

--
-- Table structure for table `sundar`
--

CREATE TABLE `sundar` (
  `Items` varchar(20) DEFAULT NULL,
  `Price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sundar`
--

INSERT INTO `sundar` (`Items`, `Price`) VALUES
('furn.png', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sundarajan`
--

CREATE TABLE `sundarajan` (
  `Items_Name` varchar(200) DEFAULT NULL,
  `Items` varchar(200) DEFAULT NULL,
  `Price` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `Items_Name` varchar(200) DEFAULT NULL,
  `Items` varchar(200) DEFAULT NULL,
  `Price` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `Items_Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Items` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`Items_Name`, `Items`, `Price`) VALUES
('furn.png', 'furn.png', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(90) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `Email`, `ID`) VALUES
('Sundarajan', 'sundar', 'sundar@gmail.com', 28),
('Kartik', 'kartik', 'kartikeyan@gmail.com', 29);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `Items` varchar(20) DEFAULT NULL,
  `Price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
