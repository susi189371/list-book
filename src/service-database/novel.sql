-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2018 pada 03.54
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `desc_book`
--

CREATE TABLE `desc_book` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `date_published` date NOT NULL,
  `number_of_page` int(100) NOT NULL,
  `type_of_page` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `desc_book`
--

INSERT INTO `desc_book` (`id`, `title`, `author`, `date_published`, `number_of_page`, `type_of_page`) VALUES
(1, 'Melawan dunia', 'sastro', '2018-01-01', 90, 'Novel'),
(2, 'panduan ramadhan', 'ust.yusuf', '2018-01-01', 100, 'Religion'),
(3, 'fiqih wanita', 'ust.hanan', '2018-01-01', 998, 'Religion'),
(4, 'Belajar tajwid', 'ust.tariq', '2018-01-01', 84, 'Religion'),
(5, 'diorama sepasang albana', 'ari nur', '2018-01-01', 245, 'Novel'),
(6, 'manusia setengah salmon', 'raditya dika', '2018-01-01', 823, 'Novel'),
(7, 'Resep kue', 'mama ani', '2018-01-01', 60, 'Masakan'),
(8, 'Linux', 'marquez', '2018-01-01', 234, 'IT'),
(9, 'Angular js', 'jacob', '2018-01-01', 500, 'IT'),
(10, 'Dilatasi waktu', 'Ari nur', '2018-01-01', 432, 'Novel'),
(11, 'Resep Olahan Jus Sehat', 'dedi seto', '2018-01-01', 443, 'Resep Makanan'),
(12, 'Panduan workout', 'jims barrley', '2018-01-01', 223, 'Olahraga'),
(14, 'si mbah', 'asep maruloh', '2018-11-09', 23, 'Resep Masakan'),
(15, 'Panji topeng hitam', 'Riyato', '2016-01-05', 50, 'Resep Masakan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `desc_book`
--
ALTER TABLE `desc_book`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `desc_book`
--
ALTER TABLE `desc_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
