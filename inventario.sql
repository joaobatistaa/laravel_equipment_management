-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Fev-2020 às 10:38
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `admin_id` int(11) NOT NULL,
  `admin_nomedeutilizador` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`admin_id`, `admin_nomedeutilizador`, `admin_password`) VALUES
(1, 'admin', 'ffe27f2f0c66d7ae013a5f36e02ca4b2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `agrupamento`
--

CREATE TABLE `agrupamento` (
  `agrupamento_id` int(20) NOT NULL,
  `agrupamento_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Repuestos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola_local`
--

CREATE TABLE `escola_local` (
  `escola_local_id` int(20) NOT NULL,
  `escola_local_nome` varchar(255) NOT NULL,
  `escola_local_agrupamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `estado_id` int(20) NOT NULL,
  `estado_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(20) NOT NULL,
  `agrupamento` varchar(255) NOT NULL,
  `escola` varchar(255) NOT NULL,
  `local` varchar(54) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `numero_serie` varchar(255) NOT NULL,
  `ano` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id`, `agrupamento`, `escola`, `local`, `tipo`, `marca`, `modelo`, `numero_serie`, `ano`, `estado`) VALUES
(1, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFJPN', '2019', ''),
(2, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E71E', '2019', ''),
(3, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E7HB', '2019', ''),
(4, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFKHB', '2019', ''),
(5, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFLBR', '2019', ''),
(6, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZWF', '2019', ''),
(7, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DLLJD', '2019', ''),
(8, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DK9WM', '2019', ''),
(9, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E44X', '2019', ''),
(10, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7Z6V', '2019', ''),
(11, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7ZVD', '2019', ''),
(12, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BG8HJ', '2019', ''),
(13, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZVX', '2019', ''),
(14, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B81DY', '2019', ''),
(15, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BG8GF', '2019', ''),
(16, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Desktop', 'HP', '8300SFF', '2UA33719GR', '2019', ''),
(17, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Desktop', 'HP', '8300SFF', '2UA3281G1K', '2019', ''),
(18, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Desktop', 'HP', '8300SFF', '2UA3261969', '2019', ''),
(19, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Monitor', 'Acer', 'AL1706', 'ETLS10801453802BB1PK04', '', ''),
(20, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Monitor', 'Acer', 'AL1707', 'ETLS10801453802B9BPK04', '', ''),
(21, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Monitor', 'Acer', 'AL1708', 'ETL460CC2264417AB44001', '', ''),
(22, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Teclado ', '', '', '', '', ''),
(23, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Teclado ', '', '', '', '', ''),
(24, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Teclado ', '', '', '', '', ''),
(25, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Rato', '', '', '', '', ''),
(26, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Rato', '', '', '', '', ''),
(27, 'Agrupamento Marinhas do Sal', 'EBI Marinhas do Sal', '', 'Rato', '', '', '', '', ''),
(28, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Painel Interativo', 'Promethean', 'VTP-65', 'V65I-I73Z1A1490326', '2019', ''),
(29, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKFCA', '2019', ''),
(30, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7ZLK', '2019', ''),
(31, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DLKRL', '2019', ''),
(32, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E4JR', '2019', ''),
(33, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKFHB', '2019', ''),
(34, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZBJ', '2019', ''),
(35, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKFAL', '2019', ''),
(36, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7ZPF', '2019', ''),
(37, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DLL0E', '2019', ''),
(38, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BG8KB', '2019', ''),
(39, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKF5Z', '2019', ''),
(40, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BG8CL', '2019', ''),
(41, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BG8DK', '2019', ''),
(42, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFLLB', '2019', ''),
(43, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFKFJ', '2019', ''),
(44, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Desktop', 'HP', '8300SFF', '2UA33716WT', '2019', ''),
(45, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Desktop', 'HP', '8300SFF', '2UA3122DZL', '2019', ''),
(46, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Desktop', 'HP', '8300SFF', '2UA3281G0Y', '2019', ''),
(47, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Desktop', 'HP', '8300SFF', '2UA3281FXN', '2019', ''),
(48, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Desktop', 'HP', '8300SFF', '2UA3411FT5', '2019', ''),
(49, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'V¡deo Projetor', 'Epson', 'EB 520', 'VFWF721047L', '', ''),
(50, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Teclado ', '', '', '', '', ''),
(51, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Teclado ', '', '', '', '', ''),
(52, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Teclado ', '', '', '', '', ''),
(53, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Teclado ', '', '', '', '', ''),
(54, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Teclado ', '', '', '', '', ''),
(55, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Rato', '', '', '', '', ''),
(56, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Rato', '', '', '', '', ''),
(57, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Rato', '', '', '', '', ''),
(58, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Rato', '', '', '', '', ''),
(59, 'Agrupamento Marinhas do Sal', 'EB Latino Coelho', '', 'Rato', '', '', '', '', ''),
(60, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Painel Interativo', 'Promethean', 'VTP-65', 'V65I-I73Z1A1490347', '2019', ''),
(61, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DLKEY', '2019', ''),
(62, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BDL4X', '2019', ''),
(63, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKASW', '2019', ''),
(64, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E4FZ', '2019', ''),
(65, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E7FJ', '2019', ''),
(66, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DLKKT', '2019', ''),
(67, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BA2AP', '2019', ''),
(68, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DLL8M', '2019', ''),
(69, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E7KD', '2019', ''),
(70, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E4CH', '2019', ''),
(71, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B70ZZ', '2019', ''),
(72, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BA05N', '2019', ''),
(73, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKA8T', '2019', ''),
(74, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BG9BP', '2019', ''),
(75, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BA1SP', '2019', ''),
(76, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Desktop', 'HP', '8300SFF', '2UA3181BPD', '2019', ''),
(77, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Desktop', 'HP', '8300SFF', '2UA3281FWV', '2019', ''),
(78, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Desktop', 'HP', '8300SFF', '2UA3261246', '2019', ''),
(79, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Desktop', 'HP', '8300SFF', '2UA3371627', '2019', ''),
(80, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'V¡deo Projetor', 'Epson', 'EB 520', 'VFWF7Z1043L', '', ''),
(81, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Teclado ', '', '', '', '', ''),
(82, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Teclado ', '', '', '', '', ''),
(83, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Teclado ', '', '', '', '', ''),
(84, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Teclado ', '', '', '', '', ''),
(85, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Rato', '', '', '', '', ''),
(86, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Rato', '', '', '', '', ''),
(87, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Rato', '', '', '', '', ''),
(88, 'Agrupamento Marinhas do Sal', 'EB Alcobertas', '', 'Rato', '', '', '', '', ''),
(89, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Painel Interativo', 'Promethean', 'VTP-65', 'V65I-I73Z1A1490144', '2019', ''),
(90, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZNN', '2019', ''),
(91, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZGE', '2019', ''),
(92, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B6TNA', '2019', ''),
(93, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B711M', '2019', ''),
(94, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B82CF', '2019', ''),
(95, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BG9GK', '2019', ''),
(96, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B712L', '2019', ''),
(97, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7ZYW', '2019', ''),
(98, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B6TQF', '2019', ''),
(99, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7ZZT', '2019', ''),
(100, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Desktop', 'HP', '8300SFF', '2UA3260ZBQ', '2019', ''),
(101, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Teclado ', '', '', '', '', ''),
(102, 'Agrupamento Marinhas do Sal', 'EB St. Ant¢nio - Fr guas', '', 'Rato', '', '', '', '', ''),
(103, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B804A', '2019', ''),
(104, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKELT', '2019', ''),
(105, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B80HP', '2019', ''),
(106, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKEJH', '2019', ''),
(107, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BDL7V', '2019', ''),
(108, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKF8R', '2019', ''),
(109, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7ZJM', '2019', ''),
(110, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKE7L', '2019', ''),
(111, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DEKQM', '2019', ''),
(112, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E7SN', '2019', ''),
(113, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BA6ZV', '2019', ''),
(114, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DLKPR', '2019', ''),
(115, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DLKNN', '2019', ''),
(116, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9Z1Z', '2019', ''),
(117, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7ZAE', '2019', ''),
(118, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC5393848', '', ''),
(119, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC539382R', '', ''),
(120, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC524197R', '', ''),
(121, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC5103CKC', '', ''),
(122, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC5102SPL', '', ''),
(123, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC5101P1P', '', ''),
(124, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC5062MWQ', '', ''),
(125, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC4420S4V', '', ''),
(126, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC43743C7', '', ''),
(127, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC4373GD9', '', ''),
(128, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC4373GD0', '', ''),
(129, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC4280L7M', '', ''),
(130, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC4280L7F', '', ''),
(131, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC4280L7D', '', ''),
(132, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC4280L75', '', ''),
(133, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC4235WNV', '', ''),
(134, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC41613V0', '', ''),
(135, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC41613TR', '', ''),
(136, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'CZC4091RGH', '', ''),
(137, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'AUD5270063', '', ''),
(138, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'AUD44705PQ', '', ''),
(139, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'AUD4410339', '', ''),
(140, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'AUD43601NK', '', ''),
(141, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'AUD4300FFN', '', ''),
(142, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'AUD4150K64', '', ''),
(143, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'AUD4150K61', '', ''),
(144, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'AUD4150K5X', '', ''),
(145, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', 'AUD3500PF3', '', ''),
(146, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', '2UA5431JNW', '', ''),
(147, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', '2UA5171BHG', '', ''),
(148, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', '2UA50923KS', '', ''),
(149, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', '2UA5091CLF', '', ''),
(150, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', '2UA50726SQ', '', ''),
(151, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', '2UA50726QX', '', ''),
(152, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', '2UA50610RD', '', ''),
(153, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', '2UA41112FR', '', ''),
(154, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'HP', 'ProDesk 600 G1', '2UA3420XT9', '', ''),
(155, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3510DRB', '', ''),
(156, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3510DPN', '', ''),
(157, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3510CDF', '', ''),
(158, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3510B95', '', ''),
(159, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3510B7Q', '', ''),
(160, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK34704PC', '', ''),
(161, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460TP3', '', ''),
(162, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460DJK', '', ''),
(163, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460DFK', '', ''),
(164, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460CMY', '', ''),
(165, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460CK7', '', ''),
(166, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460CK4', '', ''),
(167, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460CJX', '', ''),
(168, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460CJP', '', ''),
(169, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460C4J', '', ''),
(170, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460C49', '', ''),
(171, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3460C2W', '', ''),
(172, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3450F33', '', ''),
(173, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK34507P9', '', ''),
(174, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK34506QG', '', ''),
(175, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK345063Y', '', ''),
(176, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK345063B', '', ''),
(177, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK345062C', '', ''),
(178, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3450626', '', ''),
(179, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3440NKC', '', ''),
(180, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3440NK2', '', ''),
(181, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3440FR0', '', ''),
(182, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK344069Q', '', ''),
(183, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK34403P7', '', ''),
(184, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK34403NT', '', ''),
(185, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK34403N5', '', ''),
(186, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK34402VV', '', ''),
(187, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', '6CM4142ZJT', '', ''),
(188, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', '6CM4142ZCK', '', ''),
(189, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', '6CM4142YP2', '', ''),
(190, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', '6CM4142Y5Q', '', ''),
(191, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', '6CM4142Y39', '', ''),
(192, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'DELL', 'Precision T1600', '', '', ''),
(193, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Desktop', 'DELL', 'Precision T1601', '', '', ''),
(194, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3510DQ7', '', ''),
(195, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Monitor', 'HP', 'TFT P201', 'CNK3510B99', '', ''),
(196, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Interface de µudio', 'Roland', 'Rubix44', '', '', ''),
(197, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Microfone', 'Soundsation', 'VOXTAKER 100', '', '', ''),
(198, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'Microfone', 'Soundsation', 'VOXTAKER 101', '', '', ''),
(199, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Fernando Casimiro Pereira da Silva', '', 'M quina a Laser CO2', '', '', '', '', ''),
(200, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Painel Interativo', 'Promethean', 'VTP-65', 'V65I-I73Z1A1490327', '2019', ''),
(201, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7ZQJ', '2019', ''),
(202, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKFOD', '2019', ''),
(203, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZYV', '2019', ''),
(204, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZJW', '2019', ''),
(205, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B6TGP', '2019', ''),
(206, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07CE5M', '2019', ''),
(207, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFLVP', '2019', ''),
(208, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKESL', '2019', ''),
(209, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BG96E', '2019', ''),
(210, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BG8TP', '2019', ''),
(211, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFFKA', '2019', ''),
(212, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0G9PYM', '2019', ''),
(213, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B817A', '2019', ''),
(214, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKF7N', '2019', ''),
(215, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0G9Q0X', '2019', ''),
(216, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Desktop', 'HP', '8300SFF', '2UA32309W9', '2019', ''),
(217, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Desktop', 'HP', '8300SFF', '2UA3371612', '2019', ''),
(218, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Desktop', 'HP', '8300SFF', '2UA3261574', '2019', ''),
(219, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Desktop', 'HP', '8300SFF', '2UA3371585', '2019', ''),
(220, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Desktop', 'HP', '8300SFF', '2UA33715XM', '2019', ''),
(221, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'V¡deo Projetor', 'Epson', 'EB 520', 'VFWF810775L', '', ''),
(222, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Teclado ', '', '', '', '', ''),
(223, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Teclado ', '', '', '', '', ''),
(224, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Teclado ', '', '', '', '', ''),
(225, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Teclado ', '', '', '', '', ''),
(226, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Teclado ', '', '', '', '', ''),
(227, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Rato', '', '', '', '', ''),
(228, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Rato', '', '', '', '', ''),
(229, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Rato', '', '', '', '', ''),
(230, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Rato', '', '', '', '', ''),
(231, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Mina do Espadanal', '', 'Rato', '', '', '', '', ''),
(232, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Painel Interativo', 'Promethean', 'VTP-65', 'V65I-I73Z1A1490255', '2019', ''),
(233, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DG9XD', '2019', ''),
(234, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0G7F7J', '2019', ''),
(235, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFFGM', '2019', ''),
(236, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0G77VW', '2019', ''),
(237, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07CVEF', '2019', ''),
(238, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0G7J3H', '2019', ''),
(239, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07GJXL', '2019', ''),
(240, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFLYM', '2019', ''),
(241, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFFCZ', '2019', ''),
(242, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Asseiceira', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFM0X', '2019', ''),
(243, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B816K', '2019', ''),
(244, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFFFR', '2019', ''),
(245, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZEY', '2019', ''),
(246, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DG2BH', '2019', ''),
(247, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0G9PZL', '2019', ''),
(248, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E78R', '2019', ''),
(249, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B6TVY', '2019', ''),
(250, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFKEF', '2019', ''),
(251, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFL1B', '2019', ''),
(252, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E7RP', '2019', ''),
(253, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0BDL3A', '2019', ''),
(254, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B6TFZ', '2019', ''),
(255, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07E76P', '2019', ''),
(256, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DFKYA', '2019', ''),
(257, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Tablet', 'Samsung', 'TAB A', 'R52KA07CEKT', '2019', ''),
(258, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Desktop', 'HP', '8300SFF', '2UA3322HKJ', '2019', ''),
(259, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Desktop', 'HP', '8300SFF', '2UA2520TMW', '2019', ''),
(260, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Desktop', 'HP', '8300SFF', '2UA3322HKJ', '2019', ''),
(261, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Desktop', 'HP', '8300SFF', '2UA312280Y', '2019', ''),
(262, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Desktop', 'HP', '8300SFF', '2UA4080GCM', '2019', ''),
(263, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Teclado ', '', '', '', '', ''),
(264, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Teclado ', '', '', '', '', ''),
(265, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Teclado ', '', '', '', '', ''),
(266, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Teclado ', '', '', '', '', ''),
(267, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Teclado ', '', '', '', '', ''),
(268, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Rato', '', '', '', '', ''),
(269, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Rato', '', '', '', '', ''),
(270, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Rato', '', '', '', '', ''),
(271, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Rato', '', '', '', '', ''),
(272, 'Agrupamento Fernando Casimiro Pereira da Silva ', 'EB Poeta Ruy Belo', '', 'Rato', '', '', '', '', ''),
(273, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Port til', 'HP', '250 G6', 'CND8193FBM', '', ''),
(274, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Port til', 'HP', '251 G6', 'CND8193FCP', '', ''),
(275, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Port til', 'HP', '252 G6', 'CND8193F9Y', '', ''),
(276, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Port til', 'HP', '253 G6', 'CND8193F9L', '', ''),
(277, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Port til', 'HP', '254 G6', 'CND8193FBH', '', ''),
(278, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Port til', 'HP', '255 G6', 'CND8193FCZ', '', ''),
(279, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Impressora', 'HP', 'OfficeJet Pro 6970', 'TH75A6Q07N', '', ''),
(280, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV0142502YY', '', ''),
(281, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV014223DCB', '', ''),
(282, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV014246HYF', '', ''),
(283, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV0141738NC', '', ''),
(284, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV014182VRM', '', ''),
(285, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV0142344GJ', '', ''),
(286, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV014244XFD', '', ''),
(287, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV01452TG', '', ''),
(288, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV014175NBF', '', ''),
(289, 'Agrupamento Augusto C‚sar da Silva Ferreira', 'Escola Secund ria Augusto C‚sal da Silva Ferreira', '', 'Port til', 'Asus', 'P028 -Z301MF', 'H9NPCV0141917B7', '', ''),
(290, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Painel Interativo', 'Promethean', 'VTP-65', 'V65I-I73Z1A1490328', '2019', ''),
(291, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52K90XJNJL', '2019', ''),
(292, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52K90XJNBB', '2019', ''),
(293, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52K90XJN3P', '2019', ''),
(294, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52K90XJNRW', '2019', ''),
(295, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52K90JTEGM', '2019', ''),
(296, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52K90XJNPZ', '2019', ''),
(297, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7ZNX', '2019', ''),
(298, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B7W5Z', '2019', ''),
(299, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKFEF', '2019', ''),
(300, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKFDX', '2019', ''),
(301, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9Z6L', '2019', ''),
(302, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B72MA', '2019', ''),
(303, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZKT', '2019', ''),
(304, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0DKFGV', '2019', ''),
(305, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B9ZHH', '2019', ''),
(306, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Tablet', 'Samsung', 'TAB A', 'R52KA0B70SY', '2019', ''),
(307, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Centro de Artes e Of¡cios, Laborat¢rio do Conhecimento', 'Impressora', 'HP', 'OfficeJet Pro 6970', 'TH75A6Q059', '', ''),
(308, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Cineteatro', 'Port til', 'HP', 'ENVY x360 Convertibal', '8CG82154BD', '', ''),
(309, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Cineteatro', 'Port til', 'HP', 'ENVY x360', '8CG82154BD', '', ''),
(310, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Junta de Freguesia de Azambujeira e Malaqueijo', 'Desktop', 'HP', '8300SFF', '2UA3281FXX', '2019', ''),
(311, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Junta de Freguesia de Azambujeira e Malaqueijo', 'Desktop', 'HP', '8300SFF', '2UA337198P', '2019', ''),
(312, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'HP', '620', 'CNU0163YR4', '', 'Abate'),
(313, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'HP', '620', 'CNU0170CLP', '', 'Abate'),
(314, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'HP', '620', 'CNU0161X9F', '', 'OK'),
(315, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'Asus ', 'X551MA', 'E1N0CX106894058', '', 'OK'),
(316, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'Asus', 'X551MA', 'E1N0CX107013059', '', 'OK'),
(317, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'Asus', 'X551MA', 'E1N0CX10695505B', '', 'OK'),
(318, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'Asus', 'X551MA', 'E1N0CX106966059', '', 'OK'),
(319, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'Asus', 'X551MA', 'E1N0CX10692605C', '', 'Abate'),
(320, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'Acer', 'Extensa 5620G', 'LXTK20X0807480C3AE2000', '', 'OK'),
(321, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'Acer', 'Extensa 5620G', 'LXTK20X0807480C3AF2000', '', 'OK'),
(322, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'Acer', 'Extensa 5620G', 'LXEA20X1047480C3222000', '', 'OK'),
(323, 'Edif¡cio do Munic¡pio de Rio Maior', '', 'Munic¡pio de Rio Maior', 'Port til', 'Acer', 'Extensa 5630EZ', 'LXECW0Y0089082028D2000', '', 'Abate');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `marca_id` int(20) NOT NULL,
  `marca_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(1, 'filter.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `modelo_id` int(20) NOT NULL,
  `modelo_nome` varchar(255) NOT NULL,
  `modelo_marca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(1, 'Filtro de gasolina', '100', '5.00', '10.00', 1, 1, '2017-06-16 07:03:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `tipo_id` int(20) NOT NULL,
  `tipo_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Admin Users', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'pzg9wa7o1.jpg', 1, '2017-06-16 07:11:11'),
(2, 'Special User', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'no_image.jpg', 1, '2017-06-16 07:11:26'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.jpg', 1, '2017-06-16 07:11:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'Special', 2, 0),
(3, 'User', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administradores`
--
ALTER TABLE `administradores`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
