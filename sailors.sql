-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2021 at 03:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sailors`
--

-- --------------------------------------------------------

--
-- Table structure for table `Boats`
--

CREATE TABLE `Boats` (
  `bid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Boats`
--

INSERT INTO `Boats` (`bid`, `name`, `color`) VALUES
(11, 'Black Pearl', 'black'),
(12, 'Queen Annes Revenge', 'brown'),
(13, 'Blackbeards Delight', 'black'),
(14, 'Redbeards Delight', 'red'),
(15, 'Oceans Dagger', 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `Reserves`
--

CREATE TABLE `Reserves` (
  `sid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Reserves`
--

INSERT INTO `Reserves` (`sid`, `bid`, `day`) VALUES
(101, 11, 1),
(101, 11, 2),
(102, 11, 3),
(102, 14, 4),
(102, 12, 1),
(103, 12, 2),
(103, 12, 2),
(105, 11, 1),
(105, 12, 2),
(102, 13, 3),
(105, 14, 4),
(102, 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Sailors`
--

CREATE TABLE `Sailors` (
  `sid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sailors`
--

INSERT INTO `Sailors` (`sid`, `name`, `rating`, `age`) VALUES
(101, 'Jack Sparrow', 10, 40),
(102, 'Will Turner', 6, 26),
(103, 'Elizabeth Swann', 7, 24),
(104, 'Mr. Gibbs', 9, 51),
(105, 'Davey Jones', 10, 420);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Boats`
--
ALTER TABLE `Boats`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `Reserves`
--
ALTER TABLE `Reserves`
  ADD KEY `sid` (`sid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `Sailors`
--
ALTER TABLE `Sailors`
  ADD PRIMARY KEY (`sid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Reserves`
--
ALTER TABLE `Reserves`
  ADD CONSTRAINT `Reserves_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `Sailors` (`sid`),
  ADD CONSTRAINT `Reserves_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `Boats` (`bid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
