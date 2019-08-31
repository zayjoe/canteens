-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2019 at 11:45 AM
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
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `message`, `create_at`) VALUES
(2, 'test user', 'testuser123@mm.com', '65432876', 'this is test', '2019-06-27 21:33:35'),
(3, 'tester', 'tester@mm.com', '123456', 'hello form', '2019-06-29 21:58:48');

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

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `points`, `create_at`, `update_at`) VALUES
(7, 2, 100, '2019-06-28 11:29:36', '2019-06-28 11:29:36'),
(8, 6, 95, '2019-06-28 11:46:29', '2019-06-29 22:03:04'),
(9, 11, 170, '2019-07-02 17:42:33', '2019-08-23 22:06:30');

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
  `get_time` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `body`, `price`, `canteen_id`, `image`, `get_time`, `create_at`, `update_at`) VALUES
(3, 'Lorem ipsum', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 2000, 1, 'product-image_1561484095.jpg', 'Breakfast', '2019-06-26 00:04:55', '2019-08-23 21:34:14'),
(4, 'adff lorem', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 3000, 1, 'product-image-3_1561484127.jpg', 'Breakfast', '2019-06-26 00:05:27', '2019-08-23 21:35:58'),
(5, 'lreo isum', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 3000, 1, 'product-image-5_1561484168.jpg', 'Lunch', '2019-06-26 00:06:08', '2019-08-23 21:36:05'),
(6, 'Isuu ipon', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 1500, 1, 'product-image-8_1561484214.jpg', 'Breakfast', '2019-06-26 00:06:54', '2019-08-23 21:36:15'),
(7, 'lorem ipsum1', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 2000, 1, 'single-product_1561631517.png', 'Breakfast', '2019-06-27 17:01:57', '2019-08-23 21:36:29'),
(8, 'lorem ipsum 3', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 3000, 1, 'product-item_1561631552.jpg', 'Lunch', '2019-06-27 17:02:32', '2019-08-23 21:36:37'),
(9, 'Lorem Ipsum 2', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 2000, 1, 'product-image-8_1561631607.jpg', 'Breakfast', '2019-06-27 17:03:27', '2019-08-23 21:36:44'),
(10, 'Lorem Ipsum 4', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 1500, 1, 'product-image-3_1561631643.jpg', 'Lunch', '2019-06-27 17:04:03', '2019-08-23 21:37:09'),
(11, 'Lorem ipsum', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 1500, 1, 'single-product_1561631668.png', 'Breakfast', '2019-06-27 17:04:28', '2019-08-23 21:37:02'),
(12, 'Lorem Ipsum 2', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 2000, 1, 'product-image-6_1561631701.jpg', 'Breakfast', '2019-06-27 17:05:01', '2019-08-23 21:35:24'),
(13, 'Lorem Ipsum 3', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 3000, 1, 'product-image-2_1561631725.jpg', 'Lunch', '2019-06-27 17:05:25', '2019-08-23 21:35:15'),
(14, 'Lorem Ipsum 4', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 3000, 1, 'product-image-8_1561631755.jpg', 'Breakfast', '2019-06-27 17:05:55', '2019-08-23 21:35:02'),
(15, 'Lorem ipsum', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 1500, 1, 'product-image-4_1561631786.jpg', 'Lunch', '2019-06-27 17:06:26', '2019-08-23 21:34:26'),
(16, 'Lorem Ipsum 2', '                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.            ', 2000, 1, 'product-image-6_1561631812.jpg', 'Lunch', '2019-06-27 17:06:52', '2019-08-23 21:34:51'),
(17, 'Lorem Ipsum 3', '                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.                        ', 3000, 2, 'product-image-5_1561631836.jpg', 'Breakfast', '2019-06-27 17:07:16', '2019-08-23 23:11:15'),
(18, 'Lorem Ipsum 4', '                                                                                                                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.   ', 3000, 2, 'single-product_1561631857.png', 'Lunch', '2019-06-27 17:07:37', '2019-08-23 21:38:12'),
(19, 'test', '                                                                                                hello                                                                        ', 1000, 1, 'Starsuboo_400x400_1566570797.jpg', 'Breakfast', '2019-08-23 21:03:17', '2019-08-23 21:27:15');

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
(6, 'test', 'testuser@mm.com', '$2y$10$JoCQjSYaxBYPapnmZEROBOKFZ.L4Dtm/u2p/9mZ2qCe86hfGzgCNO', 0, '2019-06-27 13:59:36', 2147483647),
(7, 'zayjoe', 'zayjoseph@gmail.com', '$2y$10$U50zVv5JyZrUtzNgcSt3COAfAzV1DiWD70XFB4bOZ7dqLuFrSCEGe', 0, '2019-07-02 16:53:57', 2147483647),
(8, 'kyaw', 'kyaw@gmail.com', '$2y$10$4wF7Ffv2ShIgaYP574.UyuEIaUbRgSDY.gt.Bao4MsqfdUavzYSbi', 0, '2019-07-02 16:56:09', 2147483647),
(9, 'zaw zaw', 'zawzaw@gmail.com', '$2y$10$28qxx0rVyYmw4lGpMvsKkOUpWwsIH6BKt8.vOSY1UdCd2mkzL.1ay', 0, '2019-07-02 16:58:15', 2147483647),
(10, 'khine', 'khine@gmail.com', '$2y$10$.rY.UCiI714mlBwC6besiOCCb0.Kw53IU5h3nVCzgOFOmQ4PjB4Qi', 0, '2019-07-02 17:03:43', 2147483647),
(11, 'zaw2', 'zaw2@gmail.com', '$2y$10$PMMOlt0zELfyKRdusuAPR.eG2tc50uiM13DVlmDLi0yJy9bbj6p5S', 0, '2019-07-02 17:40:32', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canteens`
--
ALTER TABLE `canteens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
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
-- Indexes for table `points`
--
ALTER TABLE `points`
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
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
