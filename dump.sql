-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 30 Janvier 2017 à 11:21
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `mon-potager`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `token`, `full_name`) VALUES
(1, 'bob@gmail.com', 'secret', '1894240722', 'Bob'),
(2, 'alice@gmail.com', 'secret', 'secret2', 'Alice'),
(3, 'oscar@gmail.com', 'secret', 'secret3', 'Oscar'),
(11, 'AAAA@AAAA.AAAA', 'AAAA', 'ss', 'fweijfijw'),
(12, 'ijfwiejfijw@Jfeiwjf.fr', 'fekifjeirjfier', 'ssss', 'fjwioejfjwiejfijwi'),
(13, 'wfehfuhwuhe@hfwhe.fr', 'wjeifjw', '1569659610', 'dewjfijweijfi'),
(15, 'BBBB@BBBB.fr', 'BBBB', '520033858', 'BBBB');

-- --------------------------------------------------------

--
-- Structure de la table `vegetables`
--

CREATE TABLE `vegetables` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vegetables`
--

INSERT INTO `vegetables` (`id`, `name`, `description`, `user_id`) VALUES
(1, 'Pomme de terre', 'La pomme de terre est un légume facile à cultiver, à récolte précoce, à bon rendement, à longue période de conservation et aux qualités nutritives indéniables (riche en sucres lents, en vitamine C, en minéraux, en protéines).', 1),
(2, 'Carotte', 'La carotte est sans aucun doute l’un des légumes les plus cultivés et les plus gustatifs.\r\n\r\nL’entretien, du semis à la récolte, est facile.', 1),
(3, 'Fenouil', 'Le fenouil est une plante dont on consomme les racines et dont les vertus nutritives et aromatiques sont excellentes. C’est un très bon légume d’été.', 1),
(6, 'foo', 'bar', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Index pour la table `vegetables`
--
ALTER TABLE `vegetables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `vegetables`
--
ALTER TABLE `vegetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `vegetables`
--
ALTER TABLE `vegetables`
  ADD CONSTRAINT `vegetables_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
