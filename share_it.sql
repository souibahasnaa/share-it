-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 27 nov. 2020 à 17:33
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `share_it`
--

-- --------------------------------------------------------

--
-- Structure de la table `fichier`
--

CREATE TABLE `fichier` (
  `id` int(3) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `nom_original` varchar(255) NOT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `compteur` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fichier`
--

INSERT INTO `fichier` (`id`, `nom`, `nom_original`, `mime`, `compteur`) VALUES
(1, '2020112521074401fd1d809a4586d4.png', 'Capture d’écran de 2020-11-25 09-17-25.png', NULL, 0),
(2, '2020112521075611f0f8d863ba7cfa.jpg', 'hasnaa.jpg', NULL, 0),
(3, '20201125223230e9c0647cc7d94c0e.jpg', 'hasnaa.jpg', NULL, 0),
(4, '202011252232372901dcbb2adf98cc.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(5, '202011252246586fe1f5db53179046.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(6, '2020112522572720a1c8d2dd622da1.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(7, '2020112522592599d4aacda731fc93.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(8, '2020112523293458a0945e9dcef8df.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(9, '20201125234630961a63edca3b8e15.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(10, '20201125234735b4532dda596e3a4b.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(11, '202011252347530b5ed040e34b85d2.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(12, '20201126001056ea60f6b7a2a2c06f.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(13, '20201126001207ef5261d8cc4c8e44.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(14, '20201126093817904aac658e95b226.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(15, '20201126093851e9ba2e0dcbb0893e.png', 'Capture d’écran de 2020-11-25 09-21-54.png', NULL, 0),
(16, '20201126093900cfccb80b0e3239b8.png', 'Capture d’écran de 2020-09-14 14-36-27.png', NULL, 0),
(17, '20201126093913dacef098d6a62092.png', 'Capture d’écran de 2020-09-14 14-36-27.png', NULL, 0),
(18, '202011262307196bccd61d1d011954.png', 'Capture d’écran de 2020-09-14 14-36-27.png', NULL, 0),
(19, '20201126231847515ef084777830b0.png', 'Capture d’écran de 2020-09-14 14-36-27.png', NULL, 0),
(20, '202011262319190b9f401f3f8e1596.png', 'test.png', NULL, 0),
(21, '20201126232129a41a8bdeead43bee.png', 'test.png', NULL, 0),
(22, '20201126232927b9a12500131ce7dc.png', 'test.png', NULL, 0),
(23, '20201126233639f0357ce5d458e4c0.png', 'test.png', NULL, 0),
(24, '20201126234020fc61ab93dec6420a.png', 'test.png', NULL, 0),
(25, '20201126235511b988d90e60a34ae0.png', 'Capture d’écran de 2020-09-14 14-40-02.png', NULL, 0),
(26, '20201126235523faaacc9c1e8c853f.png', 'Capture d’écran de 2020-09-14 14-40-02.png', NULL, 0),
(27, '202011262356212e8bdcd1491e89f9.png', 'Capture d’écran de 2020-09-14 14-40-02.png', NULL, 0),
(28, '202011270009155bf449ece433f1bf.png', 'Capture d’écran de 2020-09-13 20-38-38.png', NULL, 0),
(29, '2020112700225873b3c0b7b39f41a7.png', 'Capture d’écran de 2020-09-14 14-40-02.png', NULL, 0),
(30, '202011270023224bd88d3e0b3f4497.png', 'Capture d’écran de 2020-09-14 14-40-02.png', NULL, 0),
(31, '2020112700525512c824685f7fda98.png', 'Capture d’écran de 2020-09-14 14-59-40.png', NULL, 0),
(32, '202011270904282983142220f24b78.png', 'Capture d’écran de 2020-09-14 14-55-15.png', NULL, 0),
(33, '20201127090509099dda6c6d441150.png', 'Capture d’écran de 2020-09-14 14-55-15.png', NULL, 0),
(34, '2020112709092110322edc1fcecc56.png', 'Capture d’écran de 2020-09-14 14-59-40.png', NULL, 0),
(35, '20201127091121aace5101bc82429f.png', 'Capture d’écran de 2020-09-14 16-53-08.png', NULL, 0),
(36, '20201127093514aeed3875c58fb325.png', 'Capture d’écran de 2020-09-14 16-53-08.png', NULL, 0),
(37, '2020112710560411293417aff2513f.png', 'test.png', NULL, 0),
(38, '20201127141530aba0b7dadf1d3bcb.pdf', 'compte-rendu.pdf', NULL, 0),
(39, '20201127141702dd630e4db4f95d48.pdf', 'compte-rendu.pdf', NULL, 0),
(40, '20201127141901752eb14103388fe5.pdf', 'compte-rendu.pdf', NULL, 0),
(41, '20201127142007a50d480737641648.jpg', 'slide.jpg', NULL, 0),
(42, '2020112714212432e74a15fb4cd521.xlsx', 'stock.move.line.xlsx', NULL, 0),
(43, '20201127142517c9a303182a4e661f.xlsx', 'stock.move.line.xlsx', NULL, 0),
(44, '202011271447261638d7526076f510.xlsx', 'stock.move.line.xlsx', NULL, 0),
(45, '20201127151201f1880ce588698e83.xlsx', 'stock.move.line.xlsx', NULL, 0),
(46, '20201127151422f842ffdd46dfbb46.xlsx', 'stock.move.line.xlsx', NULL, 0),
(47, '20201127153630a94cdcb4b7483629.txt', 'PROJET.txt', NULL, 0),
(48, '202011271540067f53ca102150c15a.txt', 'PROJET.txt', NULL, 0),
(49, '202011271542272d3610668a72fcf5.txt', 'PROJET.txt', NULL, 0),
(50, '202011271603168b9f65bc4258110f.jpg', 'slide.jpg', NULL, 0),
(51, '20201127160955ed13e8994e31c72c.pdf', 'Photoshop bannières.pdf', NULL, 0),
(52, '20201127163741fea3155da466b81b.pdf', 'ordonnance-de-medicaments.pdf', 'application/pdf', 0),
(53, '20201127164558f8b5eadaeb9bed7c.pdf', 'Photoshop bannières.pdf', 'application/pdf', 0),
(54, '202011271654206cfe793b58c9fa7f.css', 'style.css', 'text/plain', 0),
(55, '20201127171151af5669e790f558e3.css', 'style.css', 'text/plain', 0),
(56, '20201127172753b811e98af728308a.css', 'style.css', 'text/plain', 3),
(57, '20201127173007876e0d81885c3fb3.xlsx', 'stock.move.line.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheetapplication/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1),
(58, '2020112717315536d9948ade4836e9.pdf', 'Photoshop bannières(1).pdf', 'application/pdf', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fichier`
--
ALTER TABLE `fichier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fichier`
--
ALTER TABLE `fichier`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
