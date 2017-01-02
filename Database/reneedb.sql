-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2016 at 06:44 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renee`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BOOKING_ID` int(10) NOT NULL,
  `BOOKING_D_T` datetime NOT NULL,
  `BOOKING_P_NO` int(2) NOT NULL,
  `TOUR_ID` int(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `TRANSACTION_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BOOKING_ID`, `BOOKING_D_T`, `BOOKING_P_NO`, `TOUR_ID`, `USER_ID`, `TRANSACTION_ID`) VALUES
(1, '2016-12-20 10:00:00', 2, 4, 6, 10),
(2, '2016-12-24 11:00:00', 3, 4, 10, 11),
(3, '2016-12-20 20:35:00', 1, 8, 13, 12),
(4, '2016-12-20 16:28:00', 5, 5, 18, 13),
(5, '2016-12-20 13:57:00', 2, 6, 20, 14);

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `GUIDE_ID` int(10) NOT NULL,
  `GUIDE_FirstName` varchar(225) NOT NULL,
  `GUIDE_LastName` varchar(225) NOT NULL,
  `GUIDE_Rate` double(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`GUIDE_ID`, `GUIDE_FirstName`, `GUIDE_LastName`, `GUIDE_Rate`) VALUES
(1, 'Andrei', 'Belly', 50.50),
(2, 'Blake', 'Brooke', 20.00),
(3, 'Cameron', 'Carter', 25.10),
(4, 'Daniel', 'DingDong', 49.19),
(5, 'Eli', 'Emerson', 31.15),
(6, 'Finn', 'Finley', 24.80),
(7, 'Gael', 'Giovanni', 150.00),
(8, 'Hailey', 'Haider', 5.50),
(9, 'Ivy', 'Israel', 65.59),
(10, 'Jackee', 'Jayce', 32.65),
(11, 'Kacey', 'Kazimir', 40.50),
(12, 'Lea', 'Lucero', 80.50),
(13, 'Michelle', 'Mac', 35.89),
(14, 'Natalie', 'Nav', 22.58),
(15, 'Nairus', 'Yeckting', 48.25);

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `TOUR_ID` int(10) NOT NULL,
  `TOUR_NAME` varchar(225) NOT NULL,
  `TOUR_D_T` datetime NOT NULL,
  `TOUR_LOCATION` varchar(225) NOT NULL,
  `TOUR_DESCRIPTION` varchar(225) NOT NULL,
  `TOUR_DURATION` int(3) NOT NULL,
  `TOUR_PRICE` double(6,2) NOT NULL,
  `TOUR_CAPACITY` int(3) NOT NULL,
  `TOUR_KMS` int(3) NOT NULL,
  `GUIDE_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`TOUR_ID`, `TOUR_NAME`, `TOUR_D_T`, `TOUR_LOCATION`, `TOUR_DESCRIPTION`, `TOUR_DURATION`, `TOUR_PRICE`, `TOUR_CAPACITY`, `TOUR_KMS`, `GUIDE_ID`) VALUES
(4, 'Tour de Old Port', '2016-12-02 17:00:00', 'Old Port', 'Visit Montreal''s historic centerpiece on this guided biking tour of Old Port', 100, 50.99, 20, 30, 1),
(5, 'Brossard on Wheels', '2016-12-05 14:00:00', 'Brossard', 'Take a tour in Brossard', 60, 30.00, 30, 20, 5),
(6, 'Rolling in the old Saint-Lambert', '2016-12-10 12:00:00', 'Saint-Lambert', 'Visit Saint-Lambert''s historic centerpiece on this guided biking tour.', 40, 15.00, 25, 15, 2),
(7, 'Laval bikers', '2016-12-01 14:00:00', 'Laval', 'Visit Laval''s most interesting spots!', 80, 50.00, 30, 25, 4),
(8, 'Christmas Special', '2016-12-24 10:00:00', 'Berry UQAM', 'Visit Montreal with a festive spirit!', 180, 60.00, 40, 40, 4);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANSACTION_ID` int(10) NOT NULL,
  `TRANSACTION_STATUS` tinyint(1) NOT NULL,
  `TRANSACTION_D_T` datetime NOT NULL,
  `USER_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANSACTION_ID`, `TRANSACTION_STATUS`, `TRANSACTION_D_T`, `USER_ID`) VALUES
(10, 1, '2016-12-20 10:00:00', 14),
(11, 1, '2016-12-24 12:00:00', 20),
(12, 1, '2016-12-24 17:30:00', 17),
(13, 1, '2016-12-25 22:15:00', 10),
(14, 0, '2016-12-26 13:24:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user_user`
--

CREATE TABLE `user_user` (
  `USER_ID` int(10) NOT NULL,
  `USER_FirstName` varchar(225) NOT NULL,
  `USER_LastName` varchar(225) NOT NULL,
  `USER_Email` varchar(225) NOT NULL,
  `USER_Password` varchar(225) NOT NULL,
  `USER_Type` char(1) NOT NULL,
  `USER_DoB` date DEFAULT NULL,
  `USER_Gender` char(1) DEFAULT NULL,
  `USER_Phone` varchar(10) DEFAULT NULL,
  `USER_Title` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_user`
--

INSERT INTO `user_user` (`USER_ID`, `USER_FirstName`, `USER_LastName`, `USER_Email`, `USER_Password`, `USER_Type`, `USER_DoB`, `USER_Gender`, `USER_Phone`, `USER_Title`) VALUES
(6, 'Andy', 'Aki', 'a@a.com', 'aaa', 'c', '1994-10-07', 'm', '5145145114', NULL),
(7, 'Belly', 'Beirut', 'b@b.com', 'bbb', 'c', '1995-05-17', 'f', '5145145000', NULL),
(8, 'Carly', 'Caprice', 'c@c.com', 'ccc', 'c', '1989-11-21', 'f', '5145145111', NULL),
(9, 'Dany', 'Monta', 'd@d.com', 'ddd', 'c', '1980-04-01', 'm', '5145145222', NULL),
(10, 'Ezreal', 'Einhart', 'e@e.com', 'eee', 'c', '1992-08-11', 'm', '5145145333', NULL),
(11, 'Irina', 'Shayk', 'i@i.com', 'iii', 'm', '1990-02-12', 'f', '5145145444', NULL),
(12, 'Chaimaa', 'Montanez', 'c@m.com', 'cmy', 'f', '1996-12-12', 'f', '5145145555', NULL),
(13, 'Nicole', 'Salazar', 'n@peanut.com', 'asd', 'm', '1991-01-26', 'f', '5145145666', NULL),
(14, 'Ana', 'Pumpkin', 'a@psl.com', 'fghgh', 'm', '1984-03-25', 'f', '5145145777', NULL),
(15, 'Maria', 'Sharap', 'm@s.com', 'diugdfg', 'm', '1987-07-15', 'f', '5145145888', NULL),
(16, 'Jody', 'Birhala', 'j@gold.com', 'i<3andy', 'a', '1999-12-30', 'f', '5145146969', 'CEO'),
(17, 'Julie', 'Cauldron', 'j@j.com', 'asiurh', 'a', '1990-02-12', 'f', '5145149999', NULL),
(18, 'Crystal', 'Leblanc', 'c@cry.com', 'insta', 'a', '1990-09-10', 'f', '5145140101', NULL),
(19, 'Amira', 'Kazan', 'a@kaz.com', 'amikaz', 'a', '1987-05-05', 'f', '5145140202', NULL),
(20, 'Little', 'Bird', 'i@i.com', 'angry', 'a', '1996-06-06', 'f', '5145140000', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BOOKING_ID`),
  ADD KEY `BOOKING_TOUR_ID_FK` (`TOUR_ID`),
  ADD KEY `BOOKING_USER_ID_FK` (`USER_ID`),
  ADD KEY `BOOKING_TRANSACTION_ID_FK` (`TRANSACTION_ID`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`GUIDE_ID`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`TOUR_ID`),
  ADD KEY `TOUR_GUIDE_ID_FK` (`GUIDE_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANSACTION_ID`),
  ADD KEY `TRANSACTION_USER_ID_FK` (`USER_ID`);

--
-- Indexes for table `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BOOKING_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `guide`
--
ALTER TABLE `guide`
  MODIFY `GUIDE_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `TOUR_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANSACTION_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_user`
--
ALTER TABLE `user_user`
  MODIFY `USER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `BOOKING_TOUR_ID_FK` FOREIGN KEY (`TOUR_ID`) REFERENCES `tour` (`TOUR_ID`),
  ADD CONSTRAINT `BOOKING_TRANSACTION_ID_FK` FOREIGN KEY (`TRANSACTION_ID`) REFERENCES `transaction` (`TRANSACTION_ID`),
  ADD CONSTRAINT `BOOKING_USER_ID_FK` FOREIGN KEY (`USER_ID`) REFERENCES `user_user` (`USER_ID`);

--
-- Constraints for table `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `TOUR_GUIDE_ID_FK` FOREIGN KEY (`GUIDE_ID`) REFERENCES `guide` (`GUIDE_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `TRANSACTION_USER_ID_FK` FOREIGN KEY (`USER_ID`) REFERENCES `user_user` (`USER_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
