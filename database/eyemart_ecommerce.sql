-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2019 at 08:48 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eyemart_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Ray-Ban'),
(2, 'Maui Jim'),
(3, 'MessyWeekend'),
(4, ' ic! berlin'),
(5, 'Moscot'),
(6, 'Randolph Engineering'),
(7, 'American Optical'),
(8, 'Oliver Peoples'),
(9, 'Warby Parker');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL,
  `status` tinyint(6) NOT NULL DEFAULT 0 COMMENT '0=incomplete||1=complete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`, `status`) VALUES
(70, 47, '0', 4, 'Ray-Ban Sunglasess', 'img1.jpg', 1, 1200, 1200, 1),
(71, 48, '0', 4, 'Ray-Ban Sunglasess-2', 'img2.jpeg', 1, 1200, 1200, 1),
(72, 49, '0', 4, 'Ray-Ban Sunglasess', 'img3.jpg', 1, 1200, 1200, 1),
(73, 50, '0', 4, 'Ray-Ban Sunglasess-2', 'img4.jpg', 1, 1200, 1200, 1),
(77, 47, '0', 4, 'Ray-Ban Sunglasess', 'img1.jpg', 1, 1200, 1200, 0),
(78, 48, '0', 4, 'Ray-Ban Sunglasess-2', 'img2.jpeg', 1, 1200, 1200, 0),
(79, 65, '0', 4, 'Sunglasses -Model', 'img2.jpeg', 1, 1110, 1110, 0),
(89, 47, '0', 7, 'Ray-Ban Sunglasess', 'img1.jpg', 2, 1200, 2400, 0),
(90, 49, '0', 7, 'Ray-Ban Sunglasess', 'img3.jpg', 1, 1200, 1200, 0),
(91, 48, '0', 7, 'Ray-Ban Sunglasess-2', 'img2.jpeg', 1, 1200, 1200, 0),
(92, 51, '0', 7, 'Warby Parker Sunglasess', 'img5.jpg', 1, 1200, 1200, 0),
(100, 47, '0', 5, 'Ray-Ban Sunglasess', 'img1.jpg', 2, 1200, 2400, 0),
(101, 51, '0', 5, 'Warby Parker Sunglasess', 'img5.jpg', 1, 1200, 1200, 0),
(102, 52, '0', 5, 'Ray-Ban Sunglasess-2', 'img6.jpg', 1, 1200, 1200, 0),
(103, 50, '0', 5, 'Ray-Ban Sunglasess-2', 'img4.jpg', 1, 1200, 1200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(111, 'Exclusive'),
(112, 'Flash Sale'),
(113, 'Royals'),
(114, 'Standard'),
(115, 'Non Branded');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_product_ids` text NOT NULL,
  `shipping address` text NOT NULL,
  `mobile_no` int(255) NOT NULL,
  `payment_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `user_id`, `cart_product_ids`, `shipping address`, `mobile_no`, `payment_info`) VALUES
(69, 4, '70, 71, 72, 73', 'ssd,adfeasd,3333,ea', 1919919, 'chekc,1234');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(47, 111, 1, 'Ray-Ban Sunglasess', 1200, 'Converse is here to effortlessly ramp up your cool factor. The frames offer features such as Twist and Turn technology on temples for custom fits as well as flex hinges for added durability.', 'img1.jpg', 'exclusive,rayban'),
(48, 112, 1, 'Ray-Ban Sunglasess-2', 1200, 'Fore! The only way to hit a style hole-in-one is with a style driver – Fairway. Landing on the company green more than 20 years ago, this tried-and-true favorite delivers traditional, straightforward design without the country club prices.', 'img2.jpeg', 'exclusive,rayban'),
(49, 113, 1, 'Ray-Ban Sunglasess', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img3.jpg', 'exclusive,rayban'),
(50, 112, 1, 'Ray-Ban Sunglasess-2', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img4.jpg', 'exclusive,rayban'),
(51, 114, 9, 'Warby Parker Sunglasess', 1200, 'Warby Parker SunglasessWarby Parker SunglasessWarby Parker Sunglasess', 'img5.jpg', 'exclusive,Warby Parker Sunglasess'),
(52, 112, 1, 'Ray-Ban Sunglasess-2', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img6.jpg', 'exclusive,rayban'),
(53, 113, 1, 'Ray-Ban Sunglasess', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img3.jpg', 'exclusive,rayban'),
(54, 112, 1, 'Ray-Ban Sunglasess-2', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img4.jpg', 'exclusive,rayban'),
(55, 111, 1, 'Ray-Ban Sunglasess', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img1.jpg', 'exclusive,rayban'),
(56, 112, 1, 'Ray-Ban Sunglasess-2', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img11.jpg', 'exclusive,rayban'),
(57, 113, 1, 'Ray-Ban Sunglasess', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img3.jpg', 'exclusive,rayban'),
(58, 112, 1, 'Ray-Ban Sunglasess-2', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img12.jpg', 'exclusive,rayban'),
(59, 114, 9, 'Warby Parker Sunglasess', 1200, 'Warby Parker SunglasessWarby Parker SunglasessWarby Parker Sunglasess', 'img13.jpg', 'exclusive,Warby Parker Sunglasess'),
(60, 112, 1, 'Ray-Ban Sunglasess-2', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img14.jpg', 'exclusive,rayban'),
(61, 113, 1, 'Ray-Ban Sunglasess', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img15.jpg', 'exclusive,rayban'),
(62, 112, 1, 'Ray-Ban Sunglasess-2', 1200, 'Ray-Ban SunglasessRay-Ban Sunglasess Exclusive', 'img16.png', 'exclusive,rayban'),
(63, 112, 4, 'Sunglasses -Model', 1110, 'Sunglasses -Model', 'img11.jpg', 'Sunglasses -Model,'),
(64, 114, 2, 'Sunglasses -Model', 1110, 'Sunglasses -Model', 'img1.jpg', 'Sunglasses -Model,'),
(65, 113, 3, 'Sunglasses -Model', 1110, 'Sunglasses -Model', 'img2.jpeg', 'Sunglasses -Model,'),
(66, 113, 7, 'Sunglasses -Model', 2000, 'Sunglasses -Model', 'img15.jpg', 'exclusive,rayban'),
(67, 111, 6, 'Sunglasses -Model', 2000, 'Sunglasses -Model', 'img15.jpg', 'exclusive,rayban'),
(68, 114, 6, 'Sunglasses -Model', 2000, 'Sunglasses -Model', 'img16.png', 'exclusive,rayban'),
(69, 115, 6, 'Sunglasses -Model', 2000, 'Sunglasses -Model', 'img16.png', 'exclusive,rayban'),
(70, 115, 8, 'Sunglasses -Model', 2000, 'Sunglasses -Model', 'img1.jpg', 'exclusive,rayban'),
(71, 111, 5, 'Sunglasses -Model', 2000, 'Sunglasses -Model', 'img1.jpg', 'exclusive,rayban');

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
  `mobile` varchar(22) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(4, 'Arat islam', 'Sofol', 'arat@gmail.com', '12345', '01762644306', 'dfhdfg', 'gfdfg'),
(5, 'khan kamrul islam', 'arat', 'khankamrulislamaratcse@outlook.com', '12345', '12345', 'mirpur 1', 'mirpur 2'),
(7, 'tushar', 'emran', 'tushar@gmail.com', '123456', '1255', 'jhfdkghjk', 'jbadjgja');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
