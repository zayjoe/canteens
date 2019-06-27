-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2019 at 08:44 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteen_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `canteens`
--

CREATE TABLE `canteens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `canteens`
--

INSERT INTO `canteens` (`id`, `name`, `remark`, `create_at`, `update_at`) VALUES
(1, 'Canteen One', 'hi', '2019-06-24 14:42:53', '2019-06-24 14:42:53'),
(2, 'Canteen Two', '', '2019-06-24 14:52:35', '2019-06-24 14:52:35'),
(3, 'Canteen Three', '', '2019-06-24 14:53:03', '2019-06-24 14:53:03'),
(4, 'Canteen Four', '      lorem ipsum                  ', '2019-06-24 14:53:14', '2019-06-24 20:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `status`, `create_at`, `update_at`) VALUES
(8, 'serious', 'student1@mm.com', '972243789', 'Vestibulum at eros', 0, '2019-06-27 00:01:34', '2019-06-27 00:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `qty`) VALUES
(13, 3, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `canteen_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `body`, `price`, `canteen_id`, `image`, `create_at`, `update_at`) VALUES
(3, 'Lorem ipsum', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2000, 1, 'product-image_1561484095.jpg', '2019-06-26 00:04:55', '2019-06-26 00:04:55'),
(4, 'adff lorem', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 3000, 1, 'product-image-3_1561484127.jpg', '2019-06-26 00:05:27', '2019-06-26 00:05:27'),
(5, 'lreo isum', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 3000, 1, 'product-image-5_1561484168.jpg', '2019-06-26 00:06:08', '2019-06-26 00:06:08'),
(6, 'Isuu ipon', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1500, 1, 'product-image-8_1561484214.jpg', '2019-06-26 00:06:54', '2019-06-26 00:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `create_at` datetime NOT NULL,
  `update_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `create_at`, `update_at`) VALUES
(1, 'admin', 'admin@mm.com', '$2y$10$t2grmVBKiTrw52Zhi0uBN.eBkZ1vw/Car0LiXqxTikd.ZPUz1q6/O', 1, '2019-06-24 21:44:13', 2147483647),
(2, 'student1', 'student1@mm.com', '$2y$10$wchWkOvzSPAEI2aLRu7yq.z/HCGVmz/ystIrzGXLHXDpgIsLnKbdi', 0, '2019-06-24 21:46:21', 2147483647),
(3, 'student2', 'student2@mm.com', '$2y$10$mxn/dUnS1.UyrXYQ./ow0er.A4EtaFSNynuKCx4Q.a5wfWH3VJMq.', 0, '2019-06-26 22:10:15', 2147483647),
(5, 'student3', 'student3@mm.com', '$2y$10$8mCaGH/dlSPAa8MNIvz56.Q5uRM6G8akNevUDfu3aeLONchV1qjBC', 0, '2019-06-27 11:59:45', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canteens`
--
ALTER TABLE `canteens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `canteens`
--
ALTER TABLE `canteens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
