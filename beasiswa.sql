-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 23, 2023 at 10:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2106115_zhillan`
--

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa`
--

CREATE TABLE `beasiswa` (
  `idpemain` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nmpemain` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `beasiswa`
--

INSERT INTO `beasiswa` (`idpemain`, `nik`, `nmpemain`, `email`, `tgl_lahir`) VALUES
(1, '3205042839512302', 'Erlangga Sutanto', 'erlsut10@gmail.com', '2009-06-09'),
(2, '3205042738492012', 'Danang Suryana', 'dsuryana30@gmail.com', '2014-11-14'),
(3, '3205042738000000', 'Evan Panganian', 'evan.panganian@gmail.com', '2012-12-12');

--
-- Triggers `beasiswa`
--
DELIMITER $$
CREATE TRIGGER `batas_nik` BEFORE INSERT ON `beasiswa` FOR EACH ROW BEGIN
IF LENGTH(NEW.nik) <> 16 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'NIK harus 16 karakter.';
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_batas_tgl_lahir` BEFORE INSERT ON `beasiswa` FOR EACH ROW begin
if not (new.tgl_lahir between '2008-01-01' and '2015-01-01') then
signal sqlstate '45000'
set message_text = 'Anda harus berusia antara 10 tahun dan 15 tahun.';
end if;
end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`idpemain`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `idpemain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
