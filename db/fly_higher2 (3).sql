-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 05 nov. 2023 à 14:02
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fly_higher2`
--

-- --------------------------------------------------------

--
-- Structure de la table `cantact`
--

CREATE TABLE `cantact` (
  `id_cantact` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fullname` varchar(20) DEFAULT NULL,
  `message` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cantact`
--


-- --------------------------------------------------------

--
-- Structure de la table `pedegree`
--

CREATE TABLE `pedegree` (
  `id` int(11) NOT NULL,
  `n_bage` varchar(50) NOT NULL,
  `nam_pig` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `strains` varchar(200) NOT NULL,
  `gender` enum('male','female','yaung') NOT NULL,
  `n_father` varchar(20) NOT NULL,
  `n_mother` varchar(20) NOT NULL,
  `loft_name` varchar(30) NOT NULL,
  `ad_info` varchar(250) NOT NULL,
  `img_dow` varchar(200) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `id_deux` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pedegree`
--


-- --------------------------------------------------------

--
-- Structure de la table `pigeon_squab`
--

CREATE TABLE `pigeon_squab` (
  `id_pig_sq` int(11) NOT NULL,
  `n_bage` varchar(30) NOT NULL,
  `date_naiss` date NOT NULL,
  `strains` varchar(100) NOT NULL,
  `pig_squab` enum('pigeon','squab') NOT NULL,
  `color` varchar(20) NOT NULL,
  `name_pig` varchar(20) NOT NULL,
  `gander` enum('male','female') NOT NULL,
  `n_father` varchar(30) NOT NULL,
  `n_mother` varchar(30) NOT NULL,
  `img_pig` varchar(200) NOT NULL,
  `ped_father` varchar(200) NOT NULL,
  `ped_mother` varchar(200) NOT NULL,
  `not_info` varchar(400) NOT NULL,
  `user_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pigeon_squab`
--


-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `genre` enum('male','female') NOT NULL,
  `type` enum('1','2') NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passwordd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--



--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cantact`
--
ALTER TABLE `cantact`
  ADD PRIMARY KEY (`id_cantact`);

--
-- Index pour la table `pedegree`
--
ALTER TABLE `pedegree`
  ADD PRIMARY KEY (`id`),
  ADD KEY `n_father` (`n_father`);

--
-- Index pour la table `pigeon_squab`
--
ALTER TABLE `pigeon_squab`
  ADD PRIMARY KEY (`id_pig_sq`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cantact`
--
ALTER TABLE `cantact`
  MODIFY `id_cantact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `pedegree`
--
ALTER TABLE `pedegree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT pour la table `pigeon_squab`
--
ALTER TABLE `pigeon_squab`
  MODIFY `id_pig_sq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
