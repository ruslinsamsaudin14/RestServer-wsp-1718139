-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 02:14 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_percetakan_sablon`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `jenis_sablon_id` int(11) NOT NULL,
  `jenis_kaos` varchar(128) NOT NULL,
  `warna_kaos` varchar(128) NOT NULL,
  `jenis_sablon` varchar(128) NOT NULL,
  `harga` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `jenis_sablon_id`, `jenis_kaos`, `warna_kaos`, `jenis_sablon`, `harga`) VALUES
(1, 1, 'Cotton Combed 20s', 'merah', 'Sablon Rubber', 75000),
(2, 2, 'Cotton Combed 24s', 'biru', 'Sablon Plastisol ', 80000),
(3, 3, 'Cotton Combed 30s', 'pink', 'Sablon DTG', 85000),
(4, 4, 'Cotton Combed 40s', 'hijau', 'Sablon Flocking', 90000),
(5, 5, 'Cotton Cardet', 'biru navy', 'Sablon Glow in the Dark', 110000),
(6, 6, 'Cotton Slub', 'putih', 'Sablon Discharge', 120000),
(7, 7, 'Cotton Spandex', 'hitam', 'Sablon High Density', 125000),
(8, 8, 'Tri-Blends', 'hitam', 'Sablon Foil', 99000),
(9, 9, 'Cotton Bamboo', 'putih', 'Sablon Foam/Puff', 100000),
(10, 10, 'Supima', 'kuning', 'Sablon Pigmen', 87000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_sablon`
--

CREATE TABLE `tb_jenis_sablon` (
  `id_jenis_sablon` int(11) NOT NULL,
  `nama_jenis_sablon` varchar(128) NOT NULL,
  `Keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jenis_sablon`
--

INSERT INTO `tb_jenis_sablon` (`id_jenis_sablon`, `nama_jenis_sablon`, `Keterangan`) VALUES
(1, 'Sablon Rubber', 'sablon rubber yang memiliki tingkat lekatan yang baik pada bahan kaos, serta sifatnya yang elastis membuat sablon jenis ini sebagai salah satu jenis sablon terbaik, dan termasuk bahan tinta sablon yang termurah.'),
(2, 'Sablon Plastisol', 'Sablon jenis plastisol akan memberikan efek warna cerah serta memiliki beragam pilihan warna tinta sehingga bisa disesuaikan dengan warna dasar kaos, dan bahkan telah menjadi sablon yang digunakan sebagai standar internasional, sablon jenis ini tidak tahan panas dalam artian sablon akan mudah mengelupas, sehingga jangan pernah setrika kaos yang menggunakan sablon jenis ini secara langsung di permukaannya, melainkan setrikalah bagian dalam dari kaos tersebut.'),
(3, 'Sablon DTG', 'Sablon DTG sering juga disebut metode Print DTG karena untuk melakukan proses sablon ini harus menggunakan printer selayaknya melakukan print pada kertas. Karena menggunakan printer, tidak ada batasan warna untuk kaos yang akan dibuat, tidak seperti pada metode sablon yang lainnya.'),
(4, 'Sablon Flocking', 'Jenis sablon yang satu ini akan menimbulkan efek bulu-bulu halus (flock) pada permukaannya seperti pada beludru, dan juga sablon ini tidak menggunakan tinta melainkan menggunakan serbuk atau bubuk pewarna.'),
(5, 'Sablon Glow in the Dark', 'Seperti namanya, sablon ini merupakan jenis sablon yang dapat menyala di dalam gelap, dan menggunakan fosfor sebagai bahan utama dari tintanya, serta termasuk ke dalam salah satu jenis sablon terbaik apabila dilihat dari tingkat keawetannya.'),
(6, 'Sablon Discharge', 'Jenis sablon yang satu ini termasuk unik dan juga cukup awet, karena sablon jenis Discharge akan mampu meresap ke dalam kain sehingga akan mengubah warna benang yang membentuk kaos tersebut.'),
(7, 'Sablon High Density', 'Sablon jenis ini merupakan kombinasi antara tinta sablon transparan (Straight Up Gloss) dengan tinta sablon jenis Plastisol yang ditimpa di atasnya supaya menghasilkan efek timbul yang terbilang awet dan tahan lama.'),
(8, 'Sablon Foil', 'sablon jenis ini dapat memberikan efek warna emas atau perak yang mengkilat sehingga tepat digunakan apabila anda menginginkan hasil yang demikian, serta sablon jenis ini cukup awet dan tahan lama.'),
(9, 'Sablon Foam / Puff', 'Sablon jenis Foam ini juga dapat memberikan efek timbul seperti pada sablon High Density, dan permukaannya lembut seperti pada busa, serta cocok digunakan untuk semua bahan katun. Kelemahan sablon ini adalah tidak bisa disetrika langsung dan tidak dapat digunakan untuk mencetak warna gradasi.'),
(10, 'Sablon Pigmen', 'Sablon yang satu ini meskipun sudah turun pamornya, tetap banyak dipakai dan digunakan, terutama apabila dipadukan dengan kaos berwarna cerah atau terang. Sablon jenis ini tidak terlalu elastis dan cenderung kaku, serta pada saat luntur akan menyisakan bekas pada kaos.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `jenis_sablon_id` (`jenis_sablon_id`);

--
-- Indexes for table `tb_jenis_sablon`
--
ALTER TABLE `tb_jenis_sablon`
  ADD PRIMARY KEY (`id_jenis_sablon`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_jenis_sablon`
--
ALTER TABLE `tb_jenis_sablon`
  MODIFY `id_jenis_sablon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`jenis_sablon_id`) REFERENCES `tb_jenis_sablon` (`id_jenis_sablon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
