-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Jan 2022 pada 09.32
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `namalengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `level`, `namalengkap`) VALUES
(1, 'azzahfn', 'admin', 'admin', 'Azzah F Nizzah'),
(2, 'azza', 'azza', 'User', 'azza');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` varchar(5) NOT NULL,
  `nm_alternatif` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nm_alternatif`) VALUES
('al002', 'Alpine Renault 1300'),
('al001', 'Harley Davidson Ultimate Chopper'),
('al003', 'Moto Guzzi 1100i'),
('al004', 'Harley-Davidson Eagle Drag Bike'),
('al005', 'Alfa Romeo GTA'),
('al006', 'LanciaA Delta 16V'),
('al007', 'Ford Mustang'),
('al008', 'Ferrari Enzo'),
('al009', 'Setra Bus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(5) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `bobot` double NOT NULL,
  `poin1` double NOT NULL,
  `poin2` double NOT NULL,
  `poin3` double NOT NULL,
  `poin4` double NOT NULL,
  `poin5` double NOT NULL,
  `sifat` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`, `poin1`, `poin2`, `poin3`, `poin4`, `poin5`, `sifat`) VALUES
('kr001', 'JUMLAH ORDER', 5, 1, 2, 3, 4, 5, 'benefit'),
('kr002', ' AMOUNT', 3, 1, 2, 3, 4, 5, 'benefit'),
('kr003', 'PRODUCTLINES', 2, 1, 2, 3, 4, 5, 'benefit'),
('kr004', 'STOCK', 4, 1, 2, 3, 4, 5, 'cost'),
('kr005', 'JUMLAH CUSTOMER', 3, 1, 2, 3, 4, 5, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_matrik`
--

CREATE TABLE `nilai_matrik` (
  `id_matrik` int(7) NOT NULL,
  `id_alternatif` varchar(7) NOT NULL,
  `id_kriteria` varchar(7) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_matrik`
--

INSERT INTO `nilai_matrik` (`id_matrik`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(130, 'al004', 'kr005', 3),
(129, 'al004', 'kr004', 5),
(155, 'al002', 'kr005', 4),
(154, 'al002', 'kr004', 4),
(121, 'al003', 'kr001', 2),
(122, 'al003', 'kr002', 3),
(123, 'al003', 'kr003', 2),
(124, 'al003', 'kr004', 4),
(125, 'al003', 'kr005', 4),
(126, 'al004', 'kr001', 3),
(127, 'al004', 'kr002', 4),
(128, 'al004', 'kr003', 5),
(153, 'al002', 'kr003', 3),
(152, 'al002', 'kr002', 4),
(151, 'al002', 'kr001', 3),
(110, 'al001', 'kr005', 5),
(109, 'al001', 'kr004', 4),
(108, 'al001', 'kr003', 2),
(107, 'al001', 'kr002', 2),
(106, 'al001', 'kr001', 2),
(131, 'al005', 'kr001', 4),
(132, 'al005', 'kr002', 3),
(133, 'al005', 'kr003', 2),
(134, 'al005', 'kr004', 3),
(135, 'al005', 'kr005', 3),
(145, 'al006', 'kr005', 3),
(144, 'al006', 'kr004', 4),
(143, 'al006', 'kr003', 2),
(142, 'al006', 'kr002', 2),
(141, 'al006', 'kr001', 3),
(146, 'al007', 'kr001', 3),
(147, 'al007', 'kr002', 2),
(148, 'al007', 'kr003', 3),
(149, 'al007', 'kr004', 3),
(150, 'al007', 'kr005', 2),
(156, 'al008', 'kr001', 3),
(157, 'al008', 'kr002', 4),
(158, 'al008', 'kr003', 3),
(159, 'al008', 'kr004', 3),
(160, 'al008', 'kr005', 4),
(161, 'al009', 'kr001', 3),
(162, 'al009', 'kr002', 3),
(163, 'al009', 'kr003', 2),
(164, 'al009', 'kr004', 4),
(165, 'al009', 'kr005', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_preferensi`
--

CREATE TABLE `nilai_preferensi` (
  `nm_alternatif` varchar(35) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_preferensi`
--

INSERT INTO `nilai_preferensi` (`nm_alternatif`, `nilai`) VALUES
('Harley Davidson Ultimate Chopper', 0.3728),
('Alpine Renault 1300', 0.6174),
('Moto Guzzi 1100i', 0.3318),
('Harley-Davidson Eagle Drag Bike', 0.5094),
('Alfa Romeo GTA', 0.5094),
('LanciaA Delta 16V', 0.5094),
('Ford Mustang', 0.4153),
('Ferrari Enzo', 0.6157),
('Setra Bus', 0.3553);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  ADD PRIMARY KEY (`id_matrik`);

--
-- Indexes for table `nilai_preferensi`
--
ALTER TABLE `nilai_preferensi`
  ADD PRIMARY KEY (`nm_alternatif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  MODIFY `id_matrik` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
