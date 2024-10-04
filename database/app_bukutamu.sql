-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2024 at 05:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_bukutamu`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id_tamu` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_tamu` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `bertemu` varchar(225) NOT NULL,
  `kepentingan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_tamu`, `tanggal`, `nama_tamu`, `alamat`, `no_hp`, `bertemu`, `kepentingan`) VALUES
('1', '2024-09-10', 'Arfaaaa', 'Jln. Siliwangi', '081977289112', 'Amir', 'Bawa STNK'),
('2', '2024-09-02', 'Hubner aa', 'Jln. Pegang', '088291211122', 'Erick', 'Mau Tidur'),
('Blue', '2024-09-23', 'Blue', '', '', '', ''),
('Bluew', '2024-09-28', 'Blueww', 'ewfffffffff', '098765232', 'sasa', 'dsadsa'),
('fsaaa', '2024-09-26', 'fsaaaaaaa', 'safffffff', 'fsaaa', 'afssss', 'fsaaaa'),
('Hamba', '2024-09-24', 'Hamba', 'Jln. Awe', '08123532321', 'Faiz', 'awoooo'),
('hfg', '2024-09-20', 'hfg', 'gdg', '645', 'fz', 'gzd'),
('Karin', '2024-09-20', 'Karin', 'Jln. Sudarso', '0888192822', 'Faiz', 'Mengambil sesuatu hehehe'),
('R', '2024-09-29', 'R', 'JLN rr', '1234567', 'dsadsadsa', 'Mengambil sesuatu hehehe'),
('zt001', '2024-09-30', 'sca', 'sfaafa', '1234657', 'safa', 'safsa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` varchar(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `user_role`) VALUES
('', 'qwe', '$2y$10$qslg6keMVS.HGjJ40G25CeSY3bliGjO3jz1jvIDI282ab7sTM3yOq', 'admin'),
('usr01', 'fahri', '$2y$10$N5yxV5A.DLy0sfwVi6r8QulR8JITzkcoERhzsFUiypsW6041Ew99S', ''),
('usr02', 'asadsaasdas', '$2y$10$QOcEPJdZAUgArog/W5gRb.cXiAiygH1Xo9SXZEqJVe/gwG4oBndkm', 'admin'),
('usr03', 'howyudu', '$2y$10$oYx7BboDVlaDSmc0Wo5LI.60Nf4NvFk5YbXx7V3jhRtmChQrXMaMm', 'admin'),
('usr04', 'fahri_rh9cz', '$2y$10$s2Y2yliTDw8NnZPMe2DioOcOZuIK1G.FHGoqXAUsbRNOQOTEtvNQm', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
