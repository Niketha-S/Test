-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2022 at 06:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organicfarming`
--

-- --------------------------------------------------------

--
-- Table structure for table `cookietable`
--

CREATE TABLE `cookietable` (
  `username` varchar(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `createdon` varchar(50) NOT NULL,
  `rembember` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cookietable`
--

INSERT INTO `cookietable` (`username`, `token`, `createdon`, `rembember`) VALUES
('Aravinth', 'c8c2a4d221d5df87b1682970bbd12e11', '1651304309', 'false'),
('Pranauv', '51d5804323d9fa7d64c6b1f5025a9e9b', '1650617688', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `iteams`
--

CREATE TABLE `iteams` (
  `itemId` varchar(10) NOT NULL,
  `itemName` varchar(20) NOT NULL,
  `itemType` varchar(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `imageUrl` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `priceperkg` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iteams`
--

INSERT INTO `iteams` (`itemId`, `itemName`, `itemType`, `quantity`, `imageUrl`, `description`, `priceperkg`) VALUES
('CHY1001', 'Tomato', 'vegetable', 99, 'Tomato.jpg', 'Tomatoes are the major dietary source of the antioxidant lycopene, which has been linked to many health benefits, including reduced risk of heart disease and cancer. They are also a great source of vitamin C, potassium, folate, and vitamin K.', 40),
('CHY1002', 'Carrot', 'vegetable', 59, 'Carrot.jpg', 'Carrots are truly a superfood because they’re not just healthy, but they can also be eaten in many ways. Steam them, eat them raw or even cook them if you like, carrots are surely the most versatile food out there, but they have immense benefits that will help you live better. ', 45),
('CHY1003', 'Beetroot', 'vegetable', 100, 'Beetroot.jpg', 'Beetroots, commonly known as beets, are a popular root vegetable used in many cuisines around the world. Beets are packed with essential vitamins, minerals and plant compounds, some of which have medicinal properties. What’s more, they are delicious and easy to add to your diet.', 15),
('FRU1001', 'Apple', 'fruits', 98, 'Apple.jpg', 'Apples are also a rich source of polyphenols. While nutrition labels don’t list these plant compounds, they’re likely responsible for many of the health benefits.To get the most out of apples, leave the skin on — it contains half of the fiber and many of the polyphenols.', 220),
('FRU1002', 'Banana', 'fruits', 100, 'Banana.jpg', 'Bananas are one of the most popular fruits in the world.They are full important nutrients, but eating too many could end up doing more harm than good. Too much of any single food may contribute to weight gain and nutrient deficiencies.', 36),
('FRU1003', 'Mango', 'fruits', 100, 'Mango.jpg', 'Mango is native to India and Southeast Asia and has been cultivated for over 4,000 years. There are hundreds of types of mango, each with a unique taste, shape, size and color .This fruit is not only delicious but also boasts an impressive nutritional profile.', 30);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `userName` varchar(20) NOT NULL,
  `itemId` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`userName`, `itemId`, `quantity`) VALUES
('Pranauv', 'CHY1002', 2),
('Pranauv', 'FRU1001', 2),
('Arun Kiran', 'CHY1002', 5),
('Arun Kiran', 'CHY1002', 34),
('Aravinth', 'CHY1001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userName` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phoneNumber` varchar(12) NOT NULL,
  `oneTimePassword` varchar(6) NOT NULL,
  `validate` int(2) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(25) NOT NULL,
  `pincode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userName`, `password`, `email`, `phoneNumber`, `oneTimePassword`, `validate`, `address`, `city`, `state`, `country`, `pincode`) VALUES
('Aravinth', 'password', 'aravinth@gmail.com', '9876543210', '549822', 0, '221B Baker', 'Erode', 'Tamilnadu', 'India', 638110),
('Arun Kiran', 'password', 'Admin@gmail.com', '5566778899', '431971', 0, 'F Block', 'Vellore', 'TN', 'India', 632014),
('Pranauv', 'password', 'ajeypranauv@gmail.com', 'phonenumber', '778748', 0, '221B Baker Street', 'Erode', 'Tamilnadu', 'India', 638110),
('Shyam', 'password', 'shaym@gmail.com', '1234567890', '253723', 0, '221B Baker', 'Erode', 'Tamilnadu', 'India', 638110),
('Taylor', 'password', 'Taylor@gmail.com', '0192848432', '432121', 0, 'qwertyu', 'qazwsxed', 'tgbyhn', 'qwertyu', 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cookietable`
--
ALTER TABLE `cookietable`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `iteams`
--
ALTER TABLE `iteams`
  ADD PRIMARY KEY (`itemId`),
  ADD UNIQUE KEY `iteamName` (`itemName`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD KEY `userName` (`userName`),
  ADD KEY `iteamId` (`itemId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userName`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `iteams` (`itemId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
