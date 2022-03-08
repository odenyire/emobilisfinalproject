-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 06:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ovs`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `CandidateID` int(11) NOT NULL,
  `abc` varchar(1) NOT NULL,
  `Position` varchar(200) NOT NULL,
  `Party` varchar(100) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Photo` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`CandidateID`, `abc`, `Position`, `Party`, `FirstName`, `LastName`, `MiddleName`, `Gender`, `Year`, `Photo`) VALUES
(101, 'c', 'Form One Rep', 'UDA', 'Joseph', 'Atibu', 'Ndukuo', 'Male', 'Form One', 'upload/photo0317.jpg'),
(102, 'c', 'Form One Rep', 'Jubilee', 'Nuria', 'Khaleed', 'Mghoi', 'FeMale', 'Form One', 'upload/photo0900.jpg'),
(100, 'e', 'Form Three Rep', 'Muungano', 'Julius', 'Nyerere', 'Kambarage', 'Male', 'Form Three', 'upload/539324_3623195908310_933066000_n.jpg'),
(134, 'c', 'Form One Rep', 'Horse Party', 'Veronica', 'Bianayco', 'Dwarso', 'FeMale', 'Form One', 'upload/SAM_0418.JPG'),
(130, 'c', 'Form One Rep', 'Muungano', 'Veronicah', 'Antony', 'Magereza', 'FeMale', 'Form Two', 'upload/185257_425222344194052_226314123_n.jpg'),
(150, 'd', 'Form Two Rep', 'lynksys', 'jetro', 'Vargas', 'Serw', 'Male', 'Form Two', 'upload/jetro.jpg'),
(151, 'd', 'Form Two Rep', 'lynksys', 'jed', 'Vargas', 'Sewruio', 'Male', 'Form Two', 'upload/jed.jpg'),
(191, 'a', 'School Captain', 'UDA', 'Hamadi', 'Kibindoni', 'aMBIA', 'Male', 'Form Four', 'upload/pic.jpg'),
(192, 'b', 'Deputy Captain', 'wfwef', 'dwfvdwsfs', 'dfewfrswe', 'gwresgreg', 'Female', 'Form Two', 'upload/SAM_4493.JPG'),
(154, 'd', 'Form Two Rep', 'Muungano Party', 'Mark', 'dominic', 'dela cruz', 'Male', 'Form Two', 'upload/579875_417245051645924_2106200816_n.jpg'),
(175, 'f', 'Deputy Captain', 'Jubilee Party', 'Lonida', 'Delez', 'Deres', 'FeMale', 'Form Four', 'upload/[large][AnimePaper]wallpapers_Mobile-Suit-Gundam-Seed-Destiny_Rukawa11(1.33)__THISRES__72873.jpg'),
(186, 'f', 'Form Four Rep', 'UDA', 'Gerald', 'Kimbio', 'Ruge', 'Male', 'Form Four', 'upload/black-abstract-windows7-seven-desktop-wallpaper-1600x1200.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `data` varchar(30) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `data`, `action`, `date`, `user`) VALUES
(569, 'Emmanuel Odenyire', 'Login', '2022-03-08 12:15:02', 'admin'),
(602, 'Emmanuel Odenyire', 'Logout', '2022-03-08 20:00:34', 'admin'),
(601, 'Emmanuel Odenyire', 'Login', '2022-03-08 19:58:32', 'admin'),
(600, 'Emmanuel Odenyire', 'Logout', '2022-03-08 19:57:57', 'admin'),
(599, 'dwfvdwsfs dfewfrswe', 'Added Candidate', '2022-03-08 19:44:17', 'admin'),
(598, 'Emmanuel Odenyire', 'Login', '2022-03-08 19:12:40', 'admin'),
(597, 'Emmanuel Odenyire', 'Login', '2022-03-08 19:06:14', 'admin'),
(596, 'Emmanuel Odenyire', 'Logout', '2022-03-08 19:05:48', 'admin'),
(595, 'Emmanuel Odenyire', 'Login', '2022-03-08 19:03:17', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `User_Type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `FirstName`, `LastName`, `UserName`, `Password`, `User_Type`) VALUES
(2, 'Emmanuel', 'Odenyire', 'odenyire', 'admin', 'admin'),
(5, 'David', 'Mutune', 'mutune', 'admin', 'Admin'),
(4, 'Barret', 'Kamunzu', 'kamunzu', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `VoterID` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`VoterID`, `FirstName`, `LastName`, `MiddleName`, `Username`, `Password`, `Year`, `Status`) VALUES
(24, 'Marion', 'Esipila', 'Mideva', 'marion', 'voter', 'Form One', 'Voted'),
(23, 'Raphael', 'Furaha', 'Leja', 'raphael', 'voter', 'Form One', 'Unvoted'),
(39, 'Zacharia', 'Francis', 'Ishalla', 'zachariah', 'voter', 'Form Four', 'Unvoted'),
(48, 'Anita', 'Malia', 'Mwambi', 'anita', 'voter', 'Form Two', 'Voted');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `ID` int(11) NOT NULL,
  `CandidateID` int(11) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`CandidateID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`VoterID`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `CandidateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `VoterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
