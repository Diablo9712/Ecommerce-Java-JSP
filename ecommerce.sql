-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2020 at 04:51 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `commentaire` varchar(255) NOT NULL,
  `avis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `avis`
--

INSERT INTO `avis` (`id`, `id_produit`, `commentaire`, `avis`) VALUES
(1, 1, '22222', 3);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'electronique'),
(2, 'chemise'),
(4, 'Pantalon'),
(7, 'chaussure'),
(8, 'Spadrine'),
(9, 'Montre'),
(10, 'Lunette'),
(11, 'Smart Wach'),
(12, 'Smart Lunette'),
(13, '1236'),
(14, 'sjcksdbsidvlhsd ');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `livraison` int(11) NOT NULL,
  `etat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id`, `client_id`, `date_commande`, `livraison`, `etat`) VALUES
(1, 3, '2020-06-12', 6, 'Confirmed'),
(2, 4, '2020-06-11', 5, 'Not Confirmed'),
(3, 4, '2020-06-17', 8, 'Confirmed'),
(4, 6, '2020-06-17', 5, 'Not Confirmed'),
(5, 6, '2020-06-18', 4, 'Confirmed'),
(7, 4, '2020-06-18', 3, 'Not Confirmed'),
(8, 6, '2020-06-19', 6, 'Not Confirmed'),
(9, 6, '2020-06-21', 3, 'Not Confirmed'),
(10, 6, '2020-06-24', 5, 'Not Confirmed'),
(11, 5, '2020-06-30', 1, 'Not Confirmed'),
(12, 6, '2020-06-30', 2, 'Confirmed'),
(13, 6, '2020-07-02', 6, 'Not Confirmed'),
(14, 5, '2020-07-03', 3, 'Not Confirmed'),
(15, 6, '2020-07-03', 0, 'Not Confirmed'),
(16, 6, '2020-07-04', 4, 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `detail_commande`
--

CREATE TABLE `detail_commande` (
  `id` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `qte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detail_commande`
--

INSERT INTO `detail_commande` (`id`, `id_commande`, `id_produit`, `qte`) VALUES
(3, 1, 3, 21),
(5, 3, 7, 8),
(6, 3, 5, 10),
(7, 3, 5, 10),
(10, 3, 3, 3),
(11, 3, 7, 7),
(12, 4, 7, 4),
(13, 9, 3, 3),
(14, 9, 1, 6),
(15, 10, 7, 3),
(16, 12, 1, 6),
(18, 15, 1, 3),
(19, 15, 5, 5),
(20, 16, 4, 3),
(21, 16, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `qte` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id`, `libelle`, `description`, `prix`, `qte`, `image`, `id_cat`) VALUES
(1, 'LapTop', 'ekjebckjce', 5000, 15, '12039452_525963140912391_6353341236808813360_n.png', 1),
(3, 'test', 'kscjbjkdc\r\n\r\n\r\n', 250, 10, '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 2),
(4, 'ggg', '\r\ngggg', 100, 10, '6.png', 1),
(5, 'Tricot', '\r\nkuusudhj', 250, 50, '1572200005_1.0x0.jpg', 2),
(6, 'Chemise ', 'kjcbsdv hsdbshjd\r\n\r\n', 450, 15, 'gents-formal-250x250.jpg', 2),
(7, 'Pantalon', 'sdjjsdhj\r\n', 350, 14, 'kids-wear-for-boys-250x250.jpg', 4),
(8, 'dfbdf', 'ddgds\r\n', 50, 50, '1552670857_samsung galaxy s6.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reclamation`
--

INSERT INTO `reclamation` (`id`, `user`, `text`, `id_produit`) VALUES
(1, 4, 'sdcqsdvsdvqsdvqsdvqs', 1),
(3, 5, 'jshcvsgdcdbksdghv hsbckbsgdc sidcsd schcghsvcckisdnsd c', 5),
(4, 6, 'Was not compatible with me 123654789', 6),
(5, 6, '1236547892256266262', 1),
(6, 5, 'vvvv', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `cin` varchar(10) NOT NULL,
  `id_ville` int(11) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `permission` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ville`
--

INSERT INTO `ville` (`id`, `libelle`) VALUES
(2, 'OUJDA'),
(3, 'CASA'),
(4, 'RABAT'),
(5, 'FES'),
(7, 'TANGER'),
(9, 'BENI MELLAL'),
(10, 'wwww');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cvvbbbb` (`id_produit`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`,`client_id`,`date_commande`),
  ADD KEY `gfbfbffbbfbg` (`client_id`);

--
-- Indexes for table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aa` (`id_commande`),
  ADD KEY `bb` (`id_produit`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vvvvv` (`id_cat`);

--
-- Indexes for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cc` (`user`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aaa` (`id_ville`);

--
-- Indexes for table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `detail_commande`
--
ALTER TABLE `detail_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `cvvbbbb` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `gfbfbffbbfbg` FOREIGN KEY (`client_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD CONSTRAINT `aa` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bb` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `vvvvv` FOREIGN KEY (`id_cat`) REFERENCES `categorie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `cc` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reclamation_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `aaa` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
