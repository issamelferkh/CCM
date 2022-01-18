-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 09:43 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id_answer` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id_answer`, `id_question`, `id_user`, `answer`, `create_at`) VALUES
(26, 20, 2, 'test answer of the questions 01 by anas user.', '2022-01-18 08:40:33');

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
(15, 'hahahha', '', 'C', 'masculine', 2147483647, 'jgfut@hjgiuyg.com', 'hahh', '0000-00-00 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', 'hfdnfdmbvksgf;owibvd'),
(17, 'hahahhas', 'Class', 'Group', 'Gender', 2147483647, 'jgfut@hjgiuyg.com', 'hahh', '0000-00-00 00:00:00', 'gbhnttgbgfbgfbgf', 'fvrghtngfb@jdvcjhdv', ''),
(20, 'issm test', '', '', 'Gender', 0, '', '', '0000-00-00 00:00:00', '', '', ''),
(21, 'issam test 65', '', '', 'Gender', 0, '', '', '0000-00-00 00:00:00', '', '', '');

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
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id_file` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `id_folder` int(11) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `size` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id_file`, `name`, `path`, `id_folder`, `create_at`, `size`, `id_user`) VALUES
(26, 'iii-removebg-preview.png', '../uploads/iii-removebg-preview.png', 26, '2021-11-15 07:49:03', 79721, 0),
(27, 'Issam.ELFERKH CV DevOps FR (1).pdf', '../uploads/Issam.ELFERKH CV DevOps FR (1).pdf', 24, '2021-11-15 07:50:48', 496851, 0),
(28, 'Demande de sélection temporaire.pdf', '../uploads/Demande de sélection temporaire.pdf', 0, '2021-11-15 08:38:21', 528831, 0);

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `id_folder` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `master_id` int(11) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(1000) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id_folder`, `name`, `title`, `master_id`, `create_at`, `description`, `id_user`) VALUES
(24, 'Folder 01', '', 0, '2021-11-15 07:48:15', '', 1),
(25, 'Folder 01 - 01', '', 24, '2021-11-15 07:48:28', '', 1),
(26, 'Folder 01 -02', '', 25, '2021-11-15 07:48:39', '', 1),
(27, 'Folder 01 -02', '', 24, '2021-11-15 07:48:49', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_client` int(255) NOT NULL,
  `id_day` int(11) NOT NULL,
  `timestamp_day` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `tele` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remarque` varchar(320) NOT NULL,
  `remise` int(255) NOT NULL,
  `order_menus` varchar(255) NOT NULL,
  `price_total` float NOT NULL,
  `price_remise` float NOT NULL,
  `price_final` float NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_order`, `id_client`, `id_day`, `timestamp_day`, `full_name`, `tele`, `class`, `status`, `remarque`, `remise`, `order_menus`, `price_total`, `price_remise`, `price_final`, `create_at`) VALUES
(21, 10, 1, 18802, 'btissam', '6541254', '/', 'Canceled', '', 0, 'tacos - 35Dhs - Qte:1\r\n', 35, 0, 35, '2021-06-01 13:53:39'),
(22, 2, 2, 18802, 'gfjyhfiy', '86975974', 'ps/a', 'Archived', '', 0, 'tacos - 35Dhs - Qte:1\r\n', 35, 0, 35, '2021-06-02 13:59:56'),
(24, 7, 1, 18921, 'issam', '0', 'PS/A', 'Pending', '', 0, 'tacos - 35Dhs - Qte:1\r\ntest - 120Dhs - Qte:1\r\ntest - 675Dhs - Qte:1\r\n', 830, 0, 830, '2021-10-21 11:38:36'),
(25, 20, 2, 18921, 'issm test', '0', '/', 'Pending', '', 0, 'Frites - 5Dhs - Qte:1\r\n', 5, 0, 5, '2021-10-21 11:42:25'),
(26, 20, 3, 18921, 'issm test', '0', '/', 'Pending', '', 0, 'Frites - 5Dhs - Qte:1\r\n', 5, 0, 5, '2021-10-21 12:21:07'),
(27, 10, 1, 18927, 'btissam', '6541254', '/', 'Pending', '', 0, ' - 5Dhs - Qte:1\r\n - 35Dhs - Qte:1\r\n - 120Dhs - Qte:1\r\n', 160, 0, 160, '2021-10-27 15:07:19'),
(28, 10, 2, 18927, 'btissam', '6541254', '/', 'Pending', '', 0, 'Frites - 5Dhs - Qte:1\r\nhghg+hghgh+hghg+%27+%27+jjj - 100Dhs - Qte:1\r\ntacos - 35Dhs - Qte:1\r\ntest - 120Dhs - Qte:1\r\n', 260, 0, 260, '2021-10-27 17:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id_question` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id_question`, `id_cat`, `id_user`, `question`, `create_at`) VALUES
(20, 1, 1, 'test submite questions 01 ?', '2022-01-18 08:39:39');

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
(1, 'demo', 'demo', 'Issam', 'EL FERKH', 'admin', 1, '2021-05-25 12:41:29'),
(2, 'anas', 'anas123', 'Anas', 'Archane', 'admin', 1, '2022-01-18 08:23:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id_answer`);

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
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id_answer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
