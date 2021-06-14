-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2021 at 08:52 PM
-- Server version: 10.3.29-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mynoama_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `gender` text NOT NULL,
  `tele` int(255) NOT NULL,
  `email` varchar(320) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `date_naissance` datetime NOT NULL,
  `business_adress` varchar(320) NOT NULL,
  `home_adress` varchar(320) NOT NULL,
  `remarque` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `full_name`, `class`, `group`, `gender`, `tele`, `email`, `facebook`, `date_naissance`, `business_adress`, `home_adress`, `remarque`) VALUES
(2, 'gfjyhfiy', 'ps', 'a', 'masculine', 86975974, 'jgfut@hjgiuyg.com', 'hjythedtr', '2021-05-06 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', 'gfuyfuyg'),
(3, 'btissamyaqine', '', '', 'Gender', 879865983, 'btissamyaqine123@gmail.com', 'btissamyaqine', '0000-00-00 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', 'asrysgsfdbgfdsvfz'),
(4, 'HSDJHG', 'CE1', 'B', 'masculine', 86975974, 'btissamyaqine123@gmail.com', 'btissamyaqine', '2021-05-26 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', '4FRFC'),
(7, 'issam', 'PS', 'A', 'masculine', 0, '', '', '0000-00-00 00:00:00', '', '', ''),
(10, 'btissam', '', '', 'Gender', 6541254, '', '', '0000-00-00 00:00:00', '', '', ''),
(15, 'hahahha', 'PS', 'B', 'masculine', 2147483647, 'jgfut@hjgiuyg.com', 'hahh', '2021-05-26 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', 'hfdnfdmbvksgf;owibvd'),
(17, 'hahahhas', 'Class', 'Group', 'Gender', 2147483647, 'jgfut@hjgiuyg.com', 'hahh', '0000-00-00 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', ''),
(20, 'issm test', '', '', 'Gender', 0, '', '', '0000-00-00 00:00:00', '', '', ''),
(21, 'issam test 65', '', '', 'Gender', 0, '', '', '0000-00-00 00:00:00', '', '', ''),
(25, 'dedede', '', '', 'Gender', 654128732, '', '', '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `id_credit` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `gender` text NOT NULL,
  `tele` int(255) NOT NULL,
  `email` varchar(320) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `date_naissance` datetime NOT NULL,
  `business_adress` varchar(320) NOT NULL,
  `home_adress` varchar(320) NOT NULL,
  `remarque` varchar(1000) NOT NULL,
  `credit` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`id_credit`, `id_client`, `full_name`, `class`, `group`, `gender`, `tele`, `email`, `facebook`, `date_naissance`, `business_adress`, `home_adress`, `remarque`, `credit`, `create_at`) VALUES
(2, 2, 'gfjyhfiy', 'ps', 'a', 'masculine', 86975974, 'jgfut@hjgiuyg.com', 'hjythedtr', '2021-05-06 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', 'gfuyfuyg', 0, '2021-05-31 12:27:28'),
(3, 3, 'btissamyaqine', 'CE6', 'b', 'feminine', 879865983, 'btissamyaqine123@gmail.com', 'btissamyaqine', '2021-04-29 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', 'asrysgsfdbgfdsvfz', 0, '2021-05-31 12:27:28'),
(4, 0, 'HSDJHG', 'CE1', 'B', 'masculine', 86975974, 'btissamyaqine123@gmail.com', 'btissamyaqine', '2021-05-26 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', '4FRFC', 0, '2021-05-31 12:27:28'),
(7, 0, 'issam', 'PS', 'A', 'Gender', 0, '', '', '0000-00-00 00:00:00', '', '', '', 0, '2021-05-31 12:27:28'),
(8, 0, 'btissam', 'Class', 'Group', 'Gender', 661452145, '', '', '0000-00-00 00:00:00', '', '', '', 0, '2021-05-31 12:27:28'),
(10, 0, 'btissam', '', '', 'Gender', 0, '', '', '0000-00-00 00:00:00', '', '', '', 0, '2021-05-31 12:27:28'),
(15, 0, 'hahahha', 'PS', 'B', 'masculine', 2147483647, 'jgfut@hjgiuyg.com', 'hahh', '2021-05-26 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', 'hfdnfdmbvksgf;owibvd', 0, '2021-05-31 12:27:28'),
(16, 16, 'Nouamane Ajana', 'CE2', 'A', 'Gender', 698738346, '', '', '0000-00-00 00:00:00', '', '', '', 0, '2021-05-31 12:27:28'),
(17, 17, 'hahahhas', 'Class', 'Group', 'Gender', 2147483647, 'jgfut@hjgiuyg.com', 'hahh', '0000-00-00 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', '', 0, '2021-05-31 12:27:28'),
(25, 19, 'aSASAS', '', '', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 0, '2021-05-31 13:32:35'),
(26, 0, 'aSASAS', '', '', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 12, '2021-05-31 13:43:13'),
(27, 0, 'aSASAS', '', '', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 23, '2021-05-31 21:02:28'),
(28, 20, 'issm test', '', '', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', -15, '2021-06-01 14:39:51'),
(29, 20, 'issm test', '', '', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 20, '2021-06-01 14:40:02'),
(30, 18, 'wswssw', '', '', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 12, '2021-06-02 16:03:00'),
(31, 18, 'wswssw', '', '', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', -45, '2021-06-02 16:03:19'),
(32, 22, 'anas', '', '', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 10, '2021-06-02 16:14:39'),
(33, 22, 'anas', '', '', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', -15, '2021-06-02 16:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `id_ing` int(11) NOT NULL,
  `name_ing` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id_ing`, `name_ing`, `create_at`) VALUES
(1, 'test 01', '2021-06-02 18:24:56'),
(2, 'test 01', '2021-06-02 18:24:56'),
(3, 'test 01', '2021-06-02 18:24:58'),
(4, 'test 01', '2021-06-02 18:24:58'),
(5, '545454', '2021-06-01 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `create_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `login`, `password`, `fname`, `lname`, `role`, `active`, `create_on`) VALUES
(1, 'test', 'test', 'btissam', 'yaqine', 'admin', 0, '2021-05-25 12:41:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id_credit`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id_ing`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `credit`
--
ALTER TABLE `credit`
  MODIFY `id_credit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id_ing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
