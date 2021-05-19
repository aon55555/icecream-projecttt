-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 01:11 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ice`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'Sarocha', 'mis.thungpang@gmail.com', '$2y$10$vf/AXjaZgo28xXy4OskuJ.zKrIHo7MFfYz5.jtdGBEwKBYoGTW4iK', '0'),
(2, 'Kongkunanat', 'aon_33834@email.com', '$2y$10$mSqWQUviUrsN80W0eygsVu9rX.GhmW8SGwQR6mRGBrTNKT3jbqaLa', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'ete'),
(2, 'Haagen-Dazs'),
(3, 'Nestle'),
(4, 'Magnum');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, '20-50 Bath'),
(3, '70-100  Bath'),
(4, '100-150  Bath'),
(5, '170-240  Bath'),
(6, '250-300 Bath'),
(12, '500-1000 Bath');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Incompleted'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Incompleted'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 2, 2, 'Haagen dazs Cafe Ice Cream ', 45, 700, '', 'Haagen dazs Cafe Ice Cream Tub.png', ''),
(2, 2, 2, 'Haagen dazs Chocolate Ice Cream ', 25, 300, '', 'Haagen dazs Chocolat Ice Cream Tub.png', 'Chocolate,Chocolat'),
(3, 3, 2, 'Haagen dazs Chocolat beurre Ice Cream ', 89, 30, '', 'Haagen dazs Chocolat beurre Ice Cream Tub.png', 'Chocolate,Chocolat'),
(4, 12, 2, 'Haagen dazs Dulce de leche Ice Cream ', 515, 135, '', 'Haagen dazs Dulce de leche Ice Cream Tub.png', ''),
(5, 6, 2, 'Haagen dazs Vanille Ice Cream ', 289, 892, '', 'Haagen dazs Vanille Ice Cream Tub.png', 'Vanille,Vanila'),
(6, 2, 2, 'Haagen dazs White Chocolat raspberry', 25, 1100, '', 'Haagen dazs White Chocolat raspberry truffle Ice Cream Tub.png', 'Chocolate,Chocolat'),
(19, 4, 1, 'Chunky Brownie Chocolate Ice Cream ', 128, 7000, '', 'Chunky Brownie Chocolate Ice Cream Tub.png', 'Chocolate,Chocolat'),
(20, 5, 1, 'Hokkaido Milk Ice Cream Tub', 178, 8900, '', 'Hokkaido Milk Ice Cream Tub.png', 'Milk Ice Cream '),
(21, 2, 1, 'Kati Ruam Mitr Ice Cream Tub', 48, 500, '', 'Kati Ruam Mitr Ice Cream Tub.png', ''),
(22, 5, 1, 'Lime Sherbet Ice Cream Tub', 189, 560, '', 'Lime Sherbet Ice Cream Tub.png', ''),
(23, 12, 1, 'Macadamia Brittlw Ice Cream Tub', 999, 50000, '', 'Macadamia Brittlw Ice Cream Tub.png', ''),
(24, 5, 4, 'Magnum  Double Chocolate ', 178, 80, '', 'Magnum  Double Chocolate Deluxe Ice Cream Tub.png', 'Chocolate,Chocolat'),
(25, 4, 4, 'Magnum  Double Pistachio Honey', 120, 60, '', 'Magnum  Double Pistachio Honey.png', ''),
(26, 3, 4, 'Magnum Classic Ice Cream', 89, 70, '', 'Magnum Classic Ice Cream  Tub.png', ''),
(27, 4, 4, 'Magnum DB_chocalate_strw', 120, 85, '', 'Magnum DB_chocalate_strw.png', 'Chocolate,Chocolat'),
(28, 2, 4, 'Magnum Double Chocolate ', 25, 350, '', 'Magnum Double Chocolate Deluxe Pint  Tub.png', 'Chocolate,Chocolat'),
(29, 12, 4, 'Magnum Double Cookie Crumble', 550, 390, '', 'Magnum Double Cookie Crumble.png', ''),
(30, 2, 3, 'Nestle Chocolate  Ice Cream Tub', 45, 980, '', 'Nestle Chocolate  Ice Cream Tub.png', 'Chocolate,Chocolat'),
(31, 3, 3, 'Nestle Chocolate Chip Ice Cream Tub', 99, 23, '', 'Nestle Chocolate Chip Ice Cream Tub.png', 'Chocolate,Chocolat'),
(32, 4, 3, 'Nestle Milo lce Cream Tub', 120, 780, '', 'Nestle Milo lce Cream Tub.png', ''),
(33, 6, 3, 'Nestle Oreo Cookies Ice Cream Tub', 289, 560, '', 'Nestle Oreo Cookies Ice Cream Tub.png', ''),
(34, 3, 3, 'Nestle Sherbet Lemon Flavored Tub', 88, 780, '', 'Nestle Sherbet Lemon Flavored Ice Cream Tub.png', ''),
(35, 2, 3, 'Nestle Vanilla Ice Cream Tub', 33, 892, '', 'Nestle Vanilla Ice Cream Tub.png', 'Vanille,Vanila');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Juta', 'Manee', 'juta@email.com', '1234', '0987154268', 'Bangkok', 'KMUTNB'),
(2, 'Pob', 'Tham', 'Pob@email.com', '5678', '0749275168', 'Bangkok', 'KMUTNB');

-- --------------------------------------------------------

--
-- Table structure for table `xx`
--

CREATE TABLE `xx` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xx`
--

INSERT INTO `xx` (`id`, `user`, `pass`, `name`) VALUES
(1, 'Jutamanee', '1234', 'Jutamanee'),
(2, 'Pobtham', '5678', 'Pobtham');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `xx`
--
ALTER TABLE `xx`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xx`
--
ALTER TABLE `xx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
