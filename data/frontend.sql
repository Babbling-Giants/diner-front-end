-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 10:39 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frontend`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
('d', 'Drinks', 'Purees made from the finest of Venusian insects, government-inspected.', 'catd.png'),
('m', 'Mains', 'Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium "meat".', 'catm.png'),
('s', 'Sides', 'Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.', 'cats.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8485ed36d03ab0e79dda0b1b7f5bbf44ba3c3d2f', '127.0.0.1', 1491751109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313735313039363b75736572726f6c657c733a353a2261646d696e223b),
('e4ca8955e7fd59fc14807c92b6ecf61bbf2cdaaa', '127.0.0.1', 1491751640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313735313634303b75736572726f6c657c733a353a2261646d696e223b),
('49c55688bbb34022c9ccf871c2ba39be06f72bd3', '127.0.0.1', 1491752151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313735313934393b75736572726f6c657c733a353a2261646d696e223b),
('77c6cac1d6b8689a0baef4c9b67c9b8366bc3e10', '127.0.0.1', 1491752318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313735323330323b75736572726f6c657c733a353a2261646d696e223b),
('4445661a794e8b78552544a17ccd9d4ab0bd05f1', '127.0.0.1', 1491752671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313735323636383b75736572726f6c657c733a353a2261646d696e223b),
('59b8d70cb872ba08302ec55ef9874b96a3098adf', '127.0.0.1', 1491753820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313735333832303b75736572726f6c657c733a353a2261646d696e223b),
('b0f1bc8c90f3c376a280e3aa50ea3a77e5538e28', '127.0.0.1', 1491770178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313737303135383b75736572726f6c657c733a343a2275736572223b);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order`,`item`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
