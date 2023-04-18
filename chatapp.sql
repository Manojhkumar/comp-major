-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 03:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `id` int(11) NOT NULL,
  `parent_comment` varchar(500) NOT NULL,
  `student` varchar(1000) NOT NULL,
  `post` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`id`, `parent_comment`, `student`, `post`, `date`) VALUES
(2, '0', 'END', 'ho how are you\n', '2023-04-03 06:21:37'),
(3, '2', 'esfsef', 'stop', '2023-04-03 06:21:50'),
(4, '', 'me', 'ok', '2023-04-03 06:22:07'),
(5, '4', 'sdfgsd', 'oh oh', '2023-04-03 06:22:20'),
(6, '4', 'kin', 'hola', '2023-04-03 06:22:40'),
(7, '4', 'sadas', 'sadasd', '2023-04-03 17:08:48'),
(8, '0', 'ace', 'where is onepiece?', '2023-04-06 05:45:34'),
(9, '8', 'luffy', 'its with me bro', '2023-04-06 05:45:58'),
(10, '0', 'heee', 'hjvh', '2023-04-18 06:10:38'),
(11, '10', 'jeee', 'jiuhy\n', '2023-04-18 06:11:01'),
(12, '10', 'sdfsdf', 'wafawf', '2023-04-18 08:09:55'),
(13, '0', 'harini', 'ewfwefwef', '2023-04-18 09:33:00'),
(14, '', 'mano', 'ytdy', '2023-04-18 09:34:17'),
(15, '', 'refer me', 'awdawd', '2023-04-18 09:36:05'),
(16, '15', 'cee', 'saac', '2023-04-18 09:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(12, 688362867, 530638162, 'hi'),
(13, 530638162, 688362867, 'hi'),
(14, 688362867, 530638162, 'hi'),
(15, 530638162, 688362867, 'how are you brother'),
(16, 688362867, 530638162, 'fine'),
(17, 1005778137, 759145474, 'hi'),
(18, 926947045, 759145474, 'hloooo'),
(19, 759145474, 926947045, 'hi'),
(20, 926947045, 759145474, 'yapdi iruka??'),
(21, 759145474, 926947045, 'good ne??'),
(22, 926947045, 759145474, 'good..'),
(23, 530085690, 926947045, 'hi'),
(24, 530085690, 926947045, 'hi'),
(25, 759145474, 1089444734, 'hi'),
(26, 1089444734, 759145474, 'poda dei'),
(27, 926947045, 759145474, 'ji'),
(28, 759145474, 926947045, 'nk'),
(29, 759145474, 926947045, 'coimbatore epa vara'),
(30, 926947045, 759145474, '1 maniku varen'),
(31, 926947045, 759145474, 'sir kita solliduuu'),
(32, 926947045, 759145474, 'certifiocate ready pana sillu'),
(33, 926947045, 759145474, '*sollu'),
(34, 926947045, 759145474, 'ok'),
(35, 926947045, 759145474, 'hi'),
(36, 759145474, 926947045, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(15, 530638162, 'Monkey d', 'luffy', 'monkeydluffy@gmail.com', '67f34a417d155806b00eaa76c1c12554', '1680759551avatar.jpg.jpg', 'Offline now'),
(16, 688362867, 'portagase d', 'Ace', 'portagasedace@gmail.com', '665722a319965d0de56bddc535eae719', '1680759720Red Hair Pirates.jpg', 'Offline now'),
(17, 530085690, 'shalini', 'Machado', 'shalini@gmail.com', '400a852ae8f149ef9aa2d1ecc0959600', '1680760530yae-miko-genshin-impact-game-4k-wallpaper-3840x2160-uhdpaper.com-486.1_c.jpg', 'Offline now'),
(18, 926947045, 'harini', 'nesapriya', 'harininesapriya@gmail.com', 'b2f7d6e27829d7da30ab470e11a67a6e', '16807612185ac2ff814b8fea1d15a5aea75156bd76.jpg', 'Active now'),
(19, 759145474, 'Manojh', 'Kumar', 'manojh@gmail.com', 'b2f7d6e27829d7da30ab470e11a67a6e', '16807613204e22dd8e81d59196b416e31f5354403e.jpg', 'Offline now'),
(20, 1005778137, 'siva', 'kumar', 'siva@gmail.com', '1955b38f13116a57e4de2134a139d139', '1680761425f19cd593ccfe6ea67dd81b4560a5e671.jpg', 'Offline now'),
(21, 1089444734, 'dany', 'siva', 'ds009@gmail.com', '07304e56c452be73ad2b51a4647d0300', '1681798079download.jpg', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
