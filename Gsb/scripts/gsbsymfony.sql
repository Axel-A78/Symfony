-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 18 mai 2021 à 11:49
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsbsymfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `delegue`
--

CREATE TABLE `delegue` (
  `id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `delegue`
--

INSERT INTO `delegue` (`id`, `password`, `username`) VALUES
(2, '$2y$13$akPjE63EFIyVno5Zom8KyuYhrLR1x8m6e67I0SV3AeTo6Ed0dahEO', 'aachy');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE `praticien` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coef_notoriete` double NOT NULL,
  `coef_confiance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `praticien`
--

INSERT INTO `praticien` (`id`, `type_id`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `coef_notoriete`, `coef_confiance`) VALUES
(1, 1, 'Alves', 'Tristan', '55, impasse Frédérique Pascal\n87 986 MeunierVille', '76534', 'Fabrenec', 2, 2),
(2, 2, 'Klein', 'Gabrielle', '4, chemin de Delmas\n45 609 Levy', '85 657', 'Laroche-sur-Mer', 3, 1),
(3, 3, 'Gaillard', 'Manon', 'chemin de Perrot\n36358 Costanec', '91 536', 'Brun', 1, 1),
(4, 1, 'Leleu', 'Laure', '77, chemin Christophe Adam\n61 684 Bonnet', '99099', 'Millet', 3, 2),
(5, 2, 'Boulanger', 'Aurore', '4, rue Agnès Meunier\n05649 Laine', '05534', 'Boulay', 3, 2),
(6, 3, 'Klein', 'Clémence', 'chemin Rodriguez\n81212 Lombardboeuf', '53622', 'Collin-sur-Turpin', 1, 1),
(7, 1, 'Courtois', 'Sébastien', 'avenue Timothée Samson\n32 090 Gerard', '07 263', 'Antoine', 1, 2),
(8, 2, 'Grenier', 'Christophe', '47, place Morin\n67 744 Loiseau', '08 924', 'Letelliernec', 2, 2),
(9, 3, 'Blin', 'Denis', '8, avenue Mahe\n60 316 Huet-sur-Parent', '37081', 'Guillet', 1, 3),
(10, 1, 'Baudry', 'Margaret', '951, chemin de Bigot\n63787 Millet', '23442', 'Da Costa-sur-Samson', 1, 1),
(11, 2, 'Ruiz', 'Sophie', '3, rue Barthelemy\n93 478 Pires', '16603', 'Bodin-sur-Clerc', 2, 2),
(12, 3, 'Boulanger', 'Isaac', '16, impasse de Delorme\n26517 Diaz-sur-Bouvier', '07 249', 'Vaillant-sur-Mer', 3, 2),
(13, 1, 'Besson', 'Christelle', '92, impasse Philippe Lemaitre\n32 172 Besson', '00551', 'Morin-sur-Bourgeois', 3, 1),
(14, 2, 'Guyon', 'Pierre', '5, rue de Adam\n65324 Weissnec', '31986', 'De Sousanec', 2, 2),
(15, 3, 'Thibault', 'Renée', 'avenue de Buisson\n32 314 Guerin', '22642', 'Nicolas', 1, 1),
(16, 1, 'Aubert', 'William', '70, avenue Wagner\n87314 Fouquetnec', '59939', 'Vincent', 1, 1),
(17, 2, 'Jacques', 'Henri', 'boulevard Théodore Guillaume\n98619 Joubert', '55836', 'Peron', 1, 3),
(18, 3, 'Marin', 'Raymond', '838, place de Fleury\n52 678 Ribeiro', '84848', 'Collindan', 2, 1),
(19, 1, 'Ollivier', 'Simone', '77, rue Bigot\n38693 Leroux', '42781', 'Gilles', 1, 1),
(20, 2, 'Denis', 'Philippe', '85, rue Gomes\n67 131 LegrandVille', '98195', 'Lacroix', 3, 3),
(21, 3, 'Costa', 'Sylvie', '44, impasse de Imbert\n20 439 Raymond', '41267', 'Petitjean-la-Forêt', 1, 2),
(22, 1, 'Robin', 'Marianne', '4, avenue Alice Poulain\n20 068 Chauveau', '17183', 'Vidalnec', 3, 1),
(23, 2, 'Francois', 'Jules', '54, rue François Merle\n22 573 LevyVille', '88 162', 'Mace', 3, 3),
(24, 3, 'Poirier', 'Lucie', '51, chemin Jérôme Vidal\n67 871 Boucherboeuf', '08 877', 'JosephBourg', 2, 3),
(25, 1, 'Dijoux', 'Thomas', '32, chemin Benoît Breton\n48 366 Traore-sur-Ramos', '75 870', 'Lecomte-la-Forêt', 1, 2),
(26, 2, 'Couturier', 'Margot', '30, rue Martin Rocher\n60 977 Lejeune', '84931', 'Torres-sur-Thierry', 2, 2),
(27, 3, 'Bouvet', 'Adrien', '60, impasse Alice Pons\n25833 Guyon-sur-Mer', '19311', 'Da CostaVille', 3, 3),
(28, 1, 'Hardy', 'Zoé', '2, chemin Schmitt\n76834 ChauveauVille', '78 238', 'Regnier', 3, 1),
(29, 2, 'Bouvier', 'Benoît', '25, boulevard Claire Dupont\n13143 Maillot', '73900', 'Roussetdan', 1, 3),
(30, 3, 'Valette', 'Anne', '75, boulevard Antoine Marques\n68097 Girarddan', '36 527', 'Guillon', 2, 1),
(31, 1, 'Turpin', 'Juliette', '9, avenue Timothée Navarro\n72 389 Poirier', '80124', 'Marion', 1, 3),
(32, 2, 'Voisin', 'Dominique', '16, boulevard Pineau\n21 353 Roger', '14 413', 'Dufour', 1, 2),
(33, 3, 'Lefevre', 'Alphonse', '17, place Juliette Hubert\n22840 Leroy', '29874', 'Daniel', 3, 2),
(34, 1, 'Perrin', 'Édith', '68, avenue Guibert\n95754 Maillard-sur-Remy', '83 075', 'Henrynec', 2, 3),
(35, 2, 'Loiseau', 'Marcel', '67, rue Madeleine Perez\n74 337 Besnard-sur-Marchand', '83120', 'Remy', 1, 1),
(36, 3, 'Fischer', 'Jeannine', '21, boulevard Christiane Weiss\n30 505 Faure', '51262', 'Laporte', 2, 2),
(37, 1, 'Rey', 'Hélène', '62, avenue de Gonzalez\n08188 Marechaldan', '85732', 'Jacquet', 3, 1),
(38, 2, 'Carlier', 'Tristan', '91, chemin Thibaut Rousset\n99900 Gimenez', '99547', 'Dufournec', 1, 2),
(39, 3, 'Marchand', 'Marianne', '39, avenue de Schmitt\n31206 Lopez', '94335', 'Levy-sur-Guilbert', 3, 3),
(40, 1, 'Mary', 'Adèle', '62, boulevard Vincent Moreau\n59564 Lamy', '90 360', 'Roche-la-Forêt', 1, 1),
(41, 2, 'Berger', 'Maryse', 'chemin Lelievre\n26020 Martinez-sur-Mer', '67029', 'Lefort', 1, 1),
(42, 3, 'Lecomte', 'Hortense', '36, boulevard de Hoareau\n86284 Gomeznec', '33 826', 'Monnier-sur-Mer', 2, 3),
(43, 1, 'Gauthier', 'Michel', '1, avenue Franck Collin\n11 177 JacobVille', '28977', 'Michel', 1, 1),
(44, 2, 'Turpin', 'Laetitia', '8, impasse Barbe\n58 738 Guerin-sur-Leleu', '08 422', 'Martineau-les-Bains', 2, 1),
(45, 3, 'Francois', 'Roger', 'place Pichon\n85 984 Morvan-sur-Mathieu', '34 523', 'Jourdandan', 3, 2),
(46, 1, 'Ollivier', 'Antoine', '6, rue de Dupuis\n74118 Delattre-sur-Salmon', '76 327', 'Levy-sur-Brunel', 1, 2),
(47, 2, 'Traore', 'Margot', '16, place Thomas Gilbert\n32 828 Etiennenec', '71 199', 'Blondel', 2, 3),
(48, 3, 'Perrot', 'Timothée', '850, impasse Amélie Blondel\n57206 Noel', '70353', 'Deschamps', 3, 3),
(49, 1, 'Renault', 'Pierre', '3, rue de Chretien\n75 116 DupreBourg', '67 740', 'Grondin-sur-Schmitt', 2, 3),
(50, 2, 'Boulay', 'Catherine', '105, impasse de Guichard\n36 651 Picard-sur-David', '12629', 'Gros-sur-Coulon', 2, 3),
(51, 3, 'Lemoine', 'Pénélope', '69, rue Clémence Seguin\n88270 Renard-la-Forêt', '50496', 'Teixeira', 1, 2),
(52, 1, 'Dos Santos', 'Timothée', '31, rue Nathalie Paris\n60260 Berthelot-sur-Mer', '67958', 'Rocheboeuf', 2, 1),
(53, 2, 'Cohen', 'Louis', '3, avenue Chauvet\n23 575 Mathieu-sur-Chartier', '83 195', 'Gauthier', 3, 3),
(54, 3, 'Becker', 'Roland', 'chemin Jean\n95 035 Dumont', '44626', 'Roger-sur-Mer', 1, 1),
(55, 1, 'Sanchez', 'Gilles', '90, chemin Daniel Millet\n42 813 Raynaud', '56966', 'Marty', 1, 2),
(56, 2, 'Loiseau', 'Christiane', '35, rue Lebreton\n05 412 Morvan', '80472', 'Diaz', 1, 3),
(57, 3, 'Boulanger', 'Madeleine', '38, avenue Ferreira\n69407 Hamelboeuf', '85981', 'Allard-sur-Blin', 3, 2),
(58, 1, 'Fontaine', 'Stéphane', 'chemin Paulette Lemoine\n47208 Hubert-sur-Ruiz', '86 066', 'Millet', 3, 1),
(59, 2, 'Roche', 'Alexandre', '38, chemin de Blanchet\n74464 Andre-sur-Riviere', '58 997', 'Besnard', 1, 3),
(60, 3, 'Pereira', 'Nathalie', '72, chemin de Munoz\n18834 Clement', '08594', 'Baudry', 3, 1),
(61, 1, 'Gaillard', 'Élisabeth', '310, chemin de Olivier\n16216 De Sousa', '64624', 'Hoareau', 2, 2),
(62, 2, 'Berger', 'Thérèse', 'rue de Pires\n34 536 Becker-les-Bains', '17 007', 'Laroche', 3, 3),
(63, 3, 'De Sousa', 'Charles', '5, chemin Blanc\n67 088 Fernandezdan', '66938', 'Leconte', 1, 2),
(64, 1, 'Prevost', 'Margaud', '8, avenue Cohen\n14 830 Valentin', '14280', 'Lopes-la-Forêt', 2, 2),
(65, 2, 'Bertrand', 'Paulette', '63, boulevard Richard\n01 859 Leclercq-la-Forêt', '28 433', 'Albert', 1, 2),
(66, 3, 'Benoit', 'David', '827, place de Gregoire\n81 618 Sauvagenec', '24 341', 'Pelletier-sur-Giraud', 3, 3),
(67, 1, 'Mallet', 'Yves', '3, place de Schneider\n15 851 Labbe', '46 475', 'Teixeira', 1, 1),
(68, 2, 'Devaux', 'Rémy', '48, rue de Lemoine\n87 811 Dupre', '84013', 'Leclercdan', 3, 2),
(69, 3, 'Traore', 'Arthur', '23, rue Benjamin David\n61662 Allainnec', '50888', 'Brunel-sur-Mer', 3, 2),
(70, 1, 'Jean', 'Joseph', '47, rue Bertrand Lombard\n92 612 Lemonnier', '84707', 'CosteVille', 3, 3),
(71, 2, 'Bruneau', 'Pierre', '87, avenue de Peltier\n24 146 Ribeiro-les-Bains', '71115', 'Charpentiernec', 2, 3),
(72, 3, 'Pasquier', 'Monique', '15, rue de Meyer\n57 647 Olivierdan', '66 471', 'Bailly', 3, 2),
(73, 1, 'Renault', 'Virginie', '99, rue Émile Gallet\n09647 Gimenez', '90429', 'Leveque', 3, 1),
(74, 2, 'Rousset', 'Claire', '955, avenue Marion\n26 577 Charrier', '83368', 'Jacques', 3, 1),
(75, 3, 'Joly', 'Éric', '269, chemin Antoine Dubois\n45252 Baudry', '24 239', 'Humbert', 3, 3),
(76, 1, 'Joly', 'Virginie', '17, chemin de Louis\n39 900 Delmas-sur-Traore', '72 931', 'Boulay-sur-Fouquet', 2, 1),
(77, 2, 'Tanguy', 'Frédéric', '49, place de Poirier\n49227 Collet-sur-Da Costa', '38695', 'Regnier', 1, 1),
(78, 3, 'Gregoire', 'Agnès', '31, avenue Mace\n35190 Legendre', '88 671', 'Mendes-sur-Mer', 1, 1),
(79, 1, 'Aubert', 'Sébastien', '96, rue de Cordier\n18921 Peltierdan', '77 827', 'Dupontnec', 2, 3),
(80, 2, 'Schneider', 'Josette', '53, chemin Pauline Mace\n38 875 Valette', '05 372', 'Weber-sur-Mer', 1, 2),
(81, 3, 'Perrot', 'Maggie', '3, rue de Perez\n77451 Roussel-les-Bains', '61 281', 'Besnard', 3, 1),
(82, 1, 'Potier', 'Brigitte', '56, rue Dias\n09 493 Weber', '93 067', 'Benard', 3, 3),
(83, 2, 'Lefebvre', 'Alexandre', '682, place de Le Roux\n49990 Techer', '22863', 'BeckerVille', 3, 1),
(84, 3, 'Costa', 'Léon', 'boulevard Millet\n24293 Vallet', '79778', 'Chevallier-la-Forêt', 3, 3),
(85, 1, 'Letellier', 'Yves', '40, rue de Dupuis\n51656 Bernard', '81 905', 'LeblancBourg', 3, 2),
(86, 2, 'Nicolas', 'Timothée', '5, place Louis\n12 603 Thomas-la-Forêt', '82664', 'Bazin', 3, 3),
(87, 3, 'Lacroix', 'Jérôme', 'place Colas\n42913 Giraud-la-Forêt', '95903', 'Gregoire-la-Forêt', 1, 3),
(88, 1, 'Da Costa', 'Robert', '79, rue Lorraine Gallet\n88401 BlondelBourg', '67976', 'Faure-les-Bains', 1, 1),
(89, 2, 'Bailly', 'Étienne', '77, rue Marianne Leclerc\n28038 LejeuneBourg', '20 325', 'Francois', 1, 2),
(90, 3, 'Gros', 'Odette', 'rue Laurent\n81 155 Joubert', '65507', 'CamusBourg', 3, 2),
(91, 1, 'Morel', 'René', '6, avenue Loiseau\n35 983 Baron', '99691', 'Garnier-sur-Guyot', 1, 2),
(92, 2, 'Lacombe', 'Nicole', '33, avenue de Guibert\n36664 MeyerVille', '18704', 'Gilbert-la-Forêt', 3, 1),
(93, 3, 'Leclerc', 'Noël', '41, impasse de Bouvier\n95778 Lombard-sur-Chauveau', '62605', 'Olivier', 3, 1),
(94, 1, 'Lenoir', 'Sylvie', 'place Ferreira\n26 903 Perret', '68336', 'Guerin-les-Bains', 2, 1),
(95, 2, 'Diallo', 'Raymond', '63, boulevard de Dufour\n72 396 Leduc', '94154', 'Gomes', 3, 1),
(96, 3, 'Vasseur', 'Philippe', '40, chemin Blot\n54586 Henry', '16 712', 'Vaillant', 2, 3),
(97, 1, 'Camus', 'Jeanne', '798, impasse Jean Merle\n45 324 LangloisVille', '61003', 'Pires', 3, 1),
(98, 2, 'Moreno', 'Christophe', 'rue de Nicolas\n37908 Auger-la-Forêt', '18 936', 'Godard-les-Bains', 1, 2),
(99, 3, 'Georges', 'Charles', '419, impasse de Ramos\n70672 Caron-les-Bains', '65 690', 'Allard', 3, 3),
(100, 1, 'Boulay', 'Dorothée', '435, avenue Thierry\n40 464 Marion-sur-Petitjean', '62285', 'Blot', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `rapport_visite`
--

CREATE TABLE `rapport_visite` (
  `id` int(11) NOT NULL,
  `visiteur_id` int(11) NOT NULL,
  `bilan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_visite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_rapport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rapport_visite`
--

INSERT INTO `rapport_visite` (`id`, `visiteur_id`, `bilan`, `date_visite`, `date_rapport`, `etat`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1997-12-03', '2011-06-10', 1),
(2, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2012-09-15', '1986-08-29', 0),
(3, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1970-11-30', '2009-05-04', 1),
(4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1988-11-17', '1999-04-20', 0),
(5, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1974-08-08', '1998-11-25', 1),
(6, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1993-05-15', '1985-04-20', 0),
(7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1977-07-30', '1987-01-18', 1),
(8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2002-04-15', '1994-06-02', 1),
(9, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2005-03-19', '1972-12-15', 1),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1989-04-29', '1999-12-22', 0),
(11, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1982-11-11', '2011-01-10', 0),
(12, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2013-10-08', '1982-06-17', 1),
(13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1982-06-03', '2018-11-08', 0),
(14, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2005-02-11', '1982-10-11', 1),
(15, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1976-02-29', '2019-06-17', 1),
(16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1993-04-07', '2017-09-10', 0),
(17, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2017-08-28', '1974-05-19', 0),
(18, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2015-03-23', '2010-03-28', 1),
(19, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1975-02-14', '2020-02-09', 0),
(20, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1991-09-06', '2010-09-14', 0),
(21, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1971-11-05', '1987-08-11', 1),
(22, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1999-02-08', '2003-06-24', 0),
(23, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2016-03-23', '1981-07-18', 0),
(24, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1976-04-24', '1990-02-26', 1),
(25, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2015-03-02', '2000-01-29', 1),
(26, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1974-09-11', '1991-09-23', 0),
(27, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2004-07-10', '2002-03-23', 0),
(28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2010-07-04', '1992-02-05', 1),
(29, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2007-07-30', '2008-07-16', 1),
(30, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2005-08-10', '2002-08-03', 0),
(31, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2011-02-01', '1990-07-06', 0),
(32, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1999-12-25', '2003-04-04', 0),
(33, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1982-05-28', '2015-01-20', 1),
(34, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2012-04-01', '1975-05-17', 1),
(35, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1977-11-19', '2007-01-05', 1),
(36, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2010-12-17', '2010-07-06', 1),
(37, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1987-09-09', '1973-12-12', 0),
(38, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1981-04-15', '1988-01-28', 0),
(39, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2010-07-15', '1979-10-13', 0),
(40, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2020-06-20', '1986-11-12', 1),
(41, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1993-11-17', '1982-07-13', 0),
(42, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1970-12-04', '1975-09-29', 0),
(43, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2001-11-09', '2018-10-13', 1),
(44, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1995-01-29', '2007-04-17', 0),
(45, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1984-07-07', '2006-09-07', 1),
(46, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1989-06-24', '1996-12-13', 0),
(47, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1991-09-12', '1977-06-09', 1),
(48, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1974-07-15', '2009-06-08', 1),
(49, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1991-12-10', '1979-12-11', 0),
(50, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1978-10-27', '1971-03-20', 1),
(51, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1982-01-06', '1971-03-12', 1),
(52, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1977-09-01', '2021-02-24', 0),
(53, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1994-10-17', '1992-05-01', 0),
(54, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2002-05-17', '1992-12-08', 1),
(55, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1983-03-16', '2017-01-26', 0),
(56, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2020-11-24', '2010-11-05', 1),
(57, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2021-02-17', '1995-07-09', 1),
(58, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1970-07-14', '1985-04-17', 0),
(59, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1996-01-23', '1990-02-17', 1),
(60, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1986-07-28', '2002-12-28', 1),
(61, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2018-02-27', '1979-06-20', 1),
(62, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1992-12-08', '1999-10-17', 0),
(63, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1977-03-07', '1988-08-26', 1),
(64, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2020-02-18', '1986-08-14', 0),
(65, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2006-07-05', '2011-09-02', 0),
(66, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1981-12-24', '1988-03-24', 0),
(67, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2016-10-22', '1993-01-03', 0),
(68, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2017-12-24', '2003-04-26', 1),
(69, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2008-06-09', '1981-03-19', 1),
(70, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1985-07-01', '2014-03-17', 0),
(71, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1979-10-17', '1995-04-20', 1),
(72, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2000-01-17', '2004-11-20', 1),
(73, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1986-12-04', '1978-07-09', 0),
(74, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1995-08-28', '1980-09-03', 1),
(75, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2003-12-26', '1983-12-21', 0),
(76, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1978-04-10', '1996-10-17', 1),
(77, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2000-09-05', '2008-12-24', 0),
(78, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2007-02-21', '1981-02-08', 1),
(79, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1983-11-07', '2006-12-15', 0),
(80, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1982-11-07', '2007-10-10', 1),
(81, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1993-06-29', '1976-10-07', 1),
(82, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2006-11-03', '2016-06-24', 1),
(83, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1989-03-24', '1993-02-28', 1),
(84, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1982-01-31', '2009-08-06', 0),
(85, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1994-10-30', '1971-04-12', 1),
(86, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2020-11-15', '1981-12-25', 0),
(87, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1983-11-14', '1996-08-01', 0),
(88, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1984-05-28', '1975-04-13', 1),
(89, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1977-09-27', '1974-05-15', 0),
(90, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1990-03-14', '1985-07-31', 1),
(91, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1990-08-03', '1979-06-14', 1),
(92, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1980-05-12', '2015-03-15', 1),
(93, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1992-05-30', '1983-03-20', 0),
(94, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1980-09-12', '2004-11-11', 0),
(95, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2004-12-22', '2005-02-19', 1),
(96, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1999-07-16', '1997-03-03', 1),
(97, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '2000-10-26', '2007-03-24', 1),
(98, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1972-11-21', '1995-08-16', 1),
(99, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1971-07-20', '2017-12-17', 1),
(100, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at enim ut magna congue consequat. Suspendisse mattis pulvinar volutpat.', '1988-06-22', '1981-10-03', 1),
(101, 6, 'Test', '2021-06-18', '2021-06-10', 1),
(102, 6, 'Test', '2021-06-18', '2021-06-10', 1);

-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

CREATE TABLE `type_praticien` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_praticien`
--

INSERT INTO `type_praticien` (`id`, `libelle`, `lieu`) VALUES
(1, 'aliquam', 'Lebreton'),
(2, 'eos', 'MaryVille'),
(3, 'ipsa', 'Etienne'),
(4, 'quis', 'SeguinBourg'),
(5, 'quae', 'Lefebvre-la-Forêt'),
(6, 'deserunt', 'Lamy'),
(7, 'inventore', 'Menard'),
(8, 'et', 'Bourdon-sur-Colin'),
(9, 'ea', 'BrunVille'),
(10, 'ratione', 'Jourdan-sur-Gregoire'),
(11, 'velit', 'Jacquot'),
(12, 'nihil', 'Guilbert-les-Bains'),
(13, 'nihil', 'Chretien'),
(14, 'odio', 'Wagner'),
(15, 'dolores', 'Fouquetnec'),
(16, 'deserunt', 'Perez'),
(17, 'est', 'Jacques-sur-Fernandez'),
(18, 'quasi', 'VerdierVille'),
(19, 'eius', 'Moreau'),
(20, 'aut', 'Rocher'),
(21, 'voluptatem', 'Garcia'),
(22, 'veniam', 'BriandBourg'),
(23, 'nisi', 'Gilbert-sur-Jacques'),
(24, 'voluptates', 'Ribeiro'),
(25, 'cum', 'Renault-sur-Remy'),
(26, 'quisquam', 'Meyernec'),
(27, 'ut', 'Leduc'),
(28, 'ut', 'Neveu'),
(29, 'aut', 'Bernier'),
(30, 'soluta', 'Lebrun'),
(31, 'quam', 'Vallet'),
(32, 'asperiores', 'Grosboeuf'),
(33, 'nulla', 'HuetBourg'),
(34, 'aspernatur', 'Simon'),
(35, 'maiores', 'Ribeiro'),
(36, 'dolorem', 'Tessier'),
(37, 'id', 'Martinez'),
(38, 'fugiat', 'Courtoisboeuf'),
(39, 'aut', 'Blancharddan'),
(40, 'omnis', 'Martins-sur-Mer'),
(41, 'et', 'Lejeune'),
(42, 'harum', 'Bodinnec'),
(43, 'id', 'Vaillant-les-Bains'),
(44, 'modi', 'CaronBourg'),
(45, 'aperiam', 'Pichonnec'),
(46, 'et', 'Maury'),
(47, 'quae', 'Rodrigues'),
(48, 'delectus', 'Lemonnier-la-Forêt'),
(49, 'facere', 'Georges'),
(50, 'deserunt', 'Carpentier'),
(51, 'nemo', 'Berthelot'),
(52, 'fugiat', 'Mathieu'),
(53, 'qui', 'Martel-sur-Pichon'),
(54, 'perspiciatis', 'Leleu'),
(55, 'ut', 'Tanguy'),
(56, 'veritatis', 'Ferreira'),
(57, 'eos', 'Thomas'),
(58, 'asperiores', 'Briand-les-Bains'),
(59, 'quia', 'MarionBourg'),
(60, 'id', 'Marie-la-Forêt'),
(61, 'harum', 'Bonneaunec'),
(62, 'officiis', 'Raynaud-sur-Henry'),
(63, 'eaque', 'Aubert'),
(64, 'quia', 'BegueVille'),
(65, 'eos', 'Brunet-sur-Mer'),
(66, 'laudantium', 'Carpentier'),
(67, 'quia', 'Auger'),
(68, 'et', 'DialloBourg'),
(69, 'omnis', 'Bernard'),
(70, 'magnam', 'Cohen-sur-Mer'),
(71, 'cum', 'Petit-sur-Pages'),
(72, 'deleniti', 'Barre'),
(73, 'est', 'Sauvage'),
(74, 'neque', 'Lefevre'),
(75, 'aut', 'Boyer'),
(76, 'explicabo', 'Payet'),
(77, 'sit', 'Morel-les-Bains'),
(78, 'molestias', 'Thomas'),
(79, 'sed', 'Joly-sur-Fouquet'),
(80, 'quisquam', 'Mary'),
(81, 'repellendus', 'Gros'),
(82, 'expedita', 'Schmitt'),
(83, 'sunt', 'Michelnec'),
(84, 'molestias', 'Ribeiro-sur-Mer'),
(85, 'eveniet', 'Peltierboeuf'),
(86, 'totam', 'Chevallier'),
(87, 'nam', 'Royer'),
(88, 'vel', 'Lagarde-sur-Lagarde'),
(89, 'voluptate', 'BertrandBourg'),
(90, 'porro', 'Leconte-sur-Mer'),
(91, 'repudiandae', 'Blondel'),
(92, 'non', 'Benoit'),
(93, 'rerum', 'Thomas'),
(94, 'dolore', 'Deschamps-les-Bains'),
(95, 'sint', 'Guyon-sur-Letellier'),
(96, 'inventore', 'Klein'),
(97, 'blanditiis', 'Hamel'),
(98, 'dicta', 'Rocherboeuf'),
(99, 'minima', 'Chevallierboeuf'),
(100, 'voluptas', 'Delorme');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `id` int(11) NOT NULL,
  `praticien_id` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mdp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `praticien_id`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `login`, `mdp`) VALUES
(1, 1, 'Lebrun', 'Jérôme', 'boulevard Marie Diallo\n10 543 Roussel', '18768', 'BoyerVille', 'ad', '.!%}6c:0|&x'),
(2, 2, 'Leclercq', 'Nicole', 'rue Marchand\n07276 Gerard-sur-Bonnet', '69 298', 'Mahe-sur-Launay', 'aut', 'A~)VX.+u\'0zq8b#R:)$G'),
(3, 3, 'Morel', 'Émilie', '9, boulevard de Poulain\n03459 Schneider', '11 078', 'Vasseur-sur-Gilles', 'et', 'lfN)vtwjW'),
(4, 1, 'Dijoux', 'Monique', 'place Rémy Langlois\n31 915 Da Costa-sur-Pons', '00 193', 'Carre', 'eligendi', '^G^No'),
(5, 2, 'Boulay', 'Lorraine', 'boulevard Stéphanie Fernandes\n17504 LemaitreVille', '25 190', 'Chauvet', 'non', 'KC6jAo,B-\",krVt~D!'),
(6, 3, 'Allain', 'Grégoire', '37, place Joséphine Pinto\n67 828 Breton-la-Forêt', '96 941', 'Guyot-la-Forêt', 'laborum', 'SJYJ-l3>L7'),
(7, 1, 'Cordier', 'Adèle', '8, chemin Noémi Dupre\n88401 Chretien-sur-Mer', '91384', 'Blot', 'quia', ';@(1IpFv<ch@Q;CM'),
(8, 2, 'Pages', 'Bernard', '5, place Lemonnier\n09 283 MaillardBourg', '34 293', 'Rodrigues', 'id', 'tSnT5i.)=*4gL<'),
(9, 3, 'Gimenez', 'Eugène', '8, avenue de Laporte\n54518 Mariedan', '37891', 'Maillard', 'cupiditate', 'fNNf)=U'),
(10, 1, 'Arnaud', 'Éric', '835, place Benard\n64802 Joubert', '75745', 'Delattre-sur-Vallee', 'culpa', 'v>E%u|'),
(11, 2, 'Pineau', 'Dominique', '83, rue Lucas\n11140 Hernandez', '77 903', 'Etienne', 'aspernatur', 'I&&g7Wh>(|?%]^'),
(12, 3, 'Costa', 'Gilles', '18, place Collet\n63 799 MarquesBourg', '44 765', 'Labbe-les-Bains', 'ratione', '4VJngn%\'>hx$Pu'),
(13, 1, 'Grondin', 'Capucine', '2, place de Bertrand\n58735 Lemaitre', '07459', 'Moulin', 'consequatur', ',gW3]$}A4\\\'X9m,[e9'),
(14, 2, 'Leblanc', 'Noël', '4, avenue Mathilde Remy\n20223 Brunet', '16 667', 'Guibert-sur-Gomez', 'dolorem', ']x|:N}nT*an:<:k$]be'),
(15, 3, 'Labbe', 'Véronique', '55, impasse William Martin\n75034 BarreBourg', '21 652', 'Pichon', 'ut', '<*IHsG?jg)8uH{~y'),
(16, 1, 'Sanchez', 'Gilles', 'place Laure Pottier\n87129 Pinto', '18 293', 'Joubertnec', 'illo', 'SXjoody`JM.C4Z;JEl8|4#'),
(17, 2, 'Gomez', 'Marcelle', '41, rue Nicolas Carre\n44804 Gilbert-la-Forêt', '60 267', 'BouvetVille', 'eaque', 'i/vFV`y*Fq`'),
(18, 3, 'Bousquet', 'Alfred', '478, rue de Lebon\n97048 RoyVille', '75339', 'BarreBourg', 'eveniet', 'w#m~FyXyhzz>(Hs}'),
(19, 1, 'Delorme', 'Olivier', '466, rue de Barthelemy\n30349 Hubert', '36695', 'Leleu-sur-Julien', 'et', 'Y;m:$]=!Pa]?DJB+'),
(20, 2, 'Marty', 'Xavier', '168, impasse Timothée Vincent\n04 792 Evrard', '25248', 'Vallet', 'sed', 'i-@YV6ww/uy5.7y!,6+$Jfy'),
(21, 3, 'Gallet', 'Louis', '66, impasse de Raymond\n55634 Albert', '09 279', 'Mahe', 'corrupti', ',a(FJP=df8XdO4pf6DP`dG'),
(22, 1, 'Vallet', 'Suzanne', '88, avenue Labbe\n46 396 Sauvage-sur-Rodrigues', '26556', 'Chauvin', 'eos', '+e(BIXnu2\\X<F(ExA8zyAi0nP'),
(23, 2, 'Salmon', 'Noël', '90, avenue de Joly\n80 570 Fernandes-sur-Chauvin', '36 629', 'De OliveiraVille', 'et', '$6/=Jlxr3rH?d_d=4`&NYHR%v'),
(24, 3, 'Dubois', 'Anaïs', '12, rue Sabine Leduc\n60 118 Peron', '13620', 'MaheBourg', 'ut', '*?8;jB[N'),
(25, 1, 'Briand', 'Louise', 'chemin de Laine\n90 764 Texier', '64532', 'Chauvet', 'quo', '\\,Fh[[4ngLyFI|Rs'),
(26, 2, 'Descamps', 'David', '65, rue de Royer\n06 968 FoucherBourg', '12 453', 'Dupre', 'velit', 'hX+bVQ#4{b2g\\3Tc'),
(27, 3, 'Mary', 'Dominique', '32, impasse Bouchet\n02 528 Louisnec', '67619', 'Peltier', 'ab', '2SP7RUfdoK'),
(28, 1, 'Muller', 'Bernard', 'impasse Leroux\n98 333 Lacombe', '67 856', 'Bonnet', 'qui', 'JYaXi9\'%m\'\'znT'),
(29, 2, 'Garnier', 'Gabrielle', '71, rue Émilie Carpentier\n44475 Blanchard', '41 387', 'Delahayenec', 'suscipit', 'i{08p%P[npFV:TOj]6fI='),
(30, 3, 'Regnier', 'Olivie', '5, rue Mahe\n08 537 Valette', '06 488', 'Lacroixdan', 'consectetur', 'q4:?]yY]Qx@U\'<RG9\"7%\"5g'),
(31, 1, 'Bourdon', 'Grégoire', '93, boulevard de Antoine\n98 036 Langlois', '35065', 'Lacroixdan', 'odit', '_V~$sx\"y&?T\\A@zlR_?tOKWts'),
(32, 2, 'Gomez', 'Alix', '740, rue Roux\n82230 DuboisVille', '89078', 'Bazin', 'sed', 'nN>YyiL@6x#,/g!<P'),
(33, 3, 'Dias', 'Arnaude', '87, avenue de Ferreira\n78250 Roy', '76712', 'Faure', 'voluptatibus', 'MjgG'),
(34, 1, 'Jacquet', 'Valérie', 'avenue Vincent Boutin\n16951 Barbiernec', '91657', 'Carpentier-les-Bains', 'deserunt', 'z~?=\'ki%?EmC\\wvlh)'),
(35, 2, 'Thibault', 'Élodie', '149, impasse Catherine Camus\n91896 Vallee', '91262', 'Benardnec', 'quasi', '\'}i)B+%[5rp'),
(36, 3, 'Pires', 'Auguste', '67, place de Guillaume\n22891 Dumont-les-Bains', '97 760', 'Lombard-sur-Boucher', 'iste', ',(4\'d[F'),
(37, 1, 'Denis', 'Thomas', '89, boulevard de Chretien\n06374 FleuryVille', '60 440', 'Barbier-sur-Legrand', 'omnis', '-`GVV-'),
(38, 2, 'Lagarde', 'Aurélie', '93, place Antoine\n97845 Parentdan', '67 261', 'Daniel-sur-Mer', 'autem', '\"73zixwjmk#&K#\\C*YSBUp'),
(39, 3, 'Caron', 'Éric', '26, chemin Maryse Martin\n30848 Dufour', '50104', 'Hamel', 'repellendus', '256M&YWK<X.R!c|IXN2VU{'),
(40, 1, 'Gallet', 'Anastasie', '53, chemin Chartier\n75 706 Denis-sur-Bazin', '59 590', 'Blanchetnec', 'nemo', '3!FAD,}Kg>Y{|04vB![>*'),
(41, 2, 'Pottier', 'Marine', '35, impasse Colin\n57795 Joseph', '41358', 'Mercier-sur-Gillet', 'velit', 'k-{=(VxtZx'),
(42, 3, 'Ferreira', 'Nicolas', '5, avenue Legrand\n29 883 Turpin-la-Forêt', '67379', 'Lebreton', 'recusandae', '[J2\"7Uw;]xru.9kqDX(Ls'),
(43, 1, 'Didier', 'Denis', '36, place de Lamy\n16207 Guyon', '72131', 'Mahe', 'atque', 'JvX)'),
(44, 2, 'Bertrand', 'Guillaume', '12, rue de Vidal\n84883 Jean', '42663', 'Bailly', 'quidem', '1VBhwJVFGd=)9Lryc}'),
(45, 3, 'Barthelemy', 'Sabine', '23, boulevard Da Silva\n27 939 Etienne', '38207', 'Deschamps', 'reprehenderit', 'Knf4@-%I'),
(46, 1, 'Mace', 'Alain', '39, rue Muller\n42 984 Da Costa', '43275', 'Ferrand', 'dolorum', '!\'iEb4\'?h9.C*/Yh`'),
(47, 2, 'Barbe', 'Jérôme', 'boulevard Lemaitre\n98 968 Laporte', '98209', 'Petit', 'nulla', ')oVp#\"j55'),
(48, 3, 'Sauvage', 'Franck', '96, rue Guillet\n33 966 Turpin', '55620', 'Dupont-sur-Gallet', 'et', 'FX^-$s)ZboU'),
(49, 1, 'Lemaitre', 'Étienne', '740, rue Léon Wagner\n47 014 Renard-les-Bains', '57 053', 'Jacquet-sur-Pierre', 'repellat', ':%E1-$k~CmibOO'),
(50, 2, 'Pasquier', 'Hortense', 'avenue de Vaillant\n42432 Francois', '77 142', 'Gaudin', 'et', '8s%p@OQ%!zy),5#j\">ze4'),
(51, 3, 'Techer', 'Patricia', '37, boulevard Bernard Fernandes\n57714 Gilbert-sur-Mer', '79073', 'Baudry', 'ut', '!W2t{}oa6m2UXIM)QFLoJ+g>'),
(52, 1, 'Joly', 'André', '83, impasse Eugène Cohen\n55475 Weissnec', '04920', 'Duhamel', 'eum', 'Rl8.9EwEjuT)X%'),
(53, 2, 'Lambert', 'Théodore', 'impasse Agathe Hubert\n32234 Gaillard-sur-Loiseau', '23 017', 'Gomes-les-Bains', 'natus', '&uJx$\\:7Ur12%'),
(54, 3, 'Andre', 'Émilie', '47, boulevard Moulin\n12804 Riou-sur-Bonneau', '26 522', 'Robert', 'sed', '}<yi)ogVZV?Ik'),
(55, 1, 'Baron', 'Emmanuel', '66, rue de Launay\n54358 Chevallierdan', '17 185', 'Jacquet-sur-Mer', 'eligendi', 'B7OEc:RS]V\'r'),
(56, 2, 'Julien', 'Jacques', '39, chemin Gimenez\n00581 Micheldan', '39219', 'Launay', 'quibusdam', 'hvm]'),
(57, 3, 'Rousset', 'Hortense', '39, chemin Jean Bertin\n32 536 Carlier', '01 926', 'Gimenez', 'eius', 'E\"6\".zc\';Nu#Fk?G\"vl/A('),
(58, 1, 'Durand', 'Victoire', '58, impasse de Delaunay\n54466 Thierry', '97606', 'Coulon', 'et', '&}nxb*E.Y7!!i`blD>:8i]y'),
(59, 2, 'Delattre', 'Théophile', '1, impasse de Royer\n67 210 Alves-sur-Gaudin', '97789', 'Tessier', 'dignissimos', '$\"w!I5jH.OS{QNH@_W+Z'),
(60, 3, 'Hamel', 'Louis', '75, rue de Henry\n56 346 Vincent', '09 479', 'Coulon-les-Bains', 'molestiae', 'f?iPg-|sT^&k@'),
(61, 1, 'Lagarde', 'Arthur', '25, avenue Gomez\n21827 Bertin', '10 174', 'Rossi', 'modi', 'MP3iD?tdGb.-D-k6Z4!uZ'),
(62, 2, 'Perrier', 'Brigitte', '37, chemin Le Goff\n12 484 Chevalliernec', '57 045', 'Delattre', 'sunt', '|nyH'),
(63, 3, 'Leclercq', 'Christophe', '329, rue de Garcia\n17260 Duhamel', '74 675', 'Guillot-sur-Le Roux', 'velit', '*TFt\')N]CALWN.dU2{'),
(64, 1, 'Le Goff', 'Anne', '9, boulevard Zacharie Jean\n97019 Grondin', '54 700', 'Rolland', 'laborum', 'qZQTAUHeo0~iOZ6m'),
(65, 2, 'Vaillant', 'Marine', '8, chemin de Lejeune\n86748 SimonVille', '39 899', 'Guichard', 'autem', ']gVM,DKG-k9jHa{c'),
(66, 3, 'Fouquet', 'Franck', '750, avenue de Renaud\n73637 Durand', '90678', 'Poulain-sur-Boyer', 'voluptatibus', '9[cDSz;I_}4k'),
(67, 1, 'Dufour', 'Richard', '198, avenue Nicolas Barre\n73 949 Vasseur', '95817', 'Jacquet', 'cum', 'u.c7+}P_XOjBjFJ|%ycG&oM0u'),
(68, 2, 'Guerin', 'Margaux', 'impasse Marine Duhamel\n96 768 Lambert-la-Forêt', '72 010', 'RoussetVille', 'possimus', 'HrnN>d%_$U[B@'),
(69, 3, 'Rousset', 'Raymond', '572, rue Verdier\n93 538 Schmitt-les-Bains', '98 087', 'Rodriguez-les-Bains', 'nemo', 'VINK[!e[\'F>0~'),
(70, 1, 'Roy', 'Thérèse', '28, rue Humbert\n96 387 Seguin', '94651', 'Diaz-la-Forêt', 'laborum', 'wYE^SH?,Gv_D3.o(4<G'),
(71, 2, 'Dijoux', 'Julie', '35, place de Aubry\n32067 Millet', '26045', 'LejeuneBourg', 'omnis', '6xtT'),
(72, 3, 'Chevallier', 'Louis', '64, rue de Cordier\n38113 LefevreVille', '75414', 'Charpentier', 'rerum', '#{&ilrC\\*g_,+CLu8x]DY[G'),
(73, 1, 'Bodin', 'Valérie', '70, chemin Hélène Ramos\n25239 Leduc', '39 545', 'Simon', 'exercitationem', 'ZBe+kyH7^O5PS9RQFF1lvY'),
(74, 2, 'Dumas', 'Arthur', '54, chemin Gomes\n46568 Pasquier', '62961', 'Fleury', 'voluptatem', 'n9I&@`bDA_J!4@MTwd}'),
(75, 3, 'Besnard', 'Arthur', '53, rue Gosselin\n37038 Renaud', '23 623', 'Berniernec', 'qui', 'T@Y2opJAyS9ekA\\BrX[g1m@;'),
(76, 1, 'Godard', 'Patrick', '37, rue Patricia Morel\n90 998 Torres', '06268', 'Olivier', 'tempore', '\\w81afp\'.b,sL^Fy\\m0CgQ)u'),
(77, 2, 'Masse', 'Auguste', '409, place Margaud Couturier\n35 855 Collin', '35 483', 'Pierre', 'repudiandae', '.O^7<NR^dUP*EZ(%bni9MB'),
(78, 3, 'Gimenez', 'Jérôme', '91, rue Laetitia Leleu\n06112 Michaud', '72186', 'Ribeiro', 'incidunt', '?&,75t9|_7f(zD]KN'),
(79, 1, 'Lejeune', 'Édith', '59, impasse Renaud\n59 839 Dumas-sur-Mer', '66387', 'Besnard', 'voluptas', 'd*l>1qz.Z^4Y(b^,L);p4Vd}5'),
(80, 2, 'Bousquet', 'Isabelle', '33, boulevard Christine Blondel\n35557 Richard-la-Forêt', '43385', 'Samson', 'eligendi', 'HinLX#\'{B}j5'),
(81, 3, 'Renaud', 'Chantal', '60, avenue Gilles Delorme\n43294 Evrardboeuf', '99 165', 'Pasquier', 'veniam', 'CimxbTR#c\"YiQ7,{;,=7'),
(82, 1, 'Berthelot', 'Éléonore', '896, place Blin\n33 955 Gerardnec', '04036', 'MaceVille', 'sequi', 'n$`XBzc;0l'),
(83, 2, 'Rodrigues', 'Susan', '78, impasse Perez\n74 778 Denis', '59376', 'Michel', 'expedita', 'u+v]W+[f\\UN'),
(84, 3, 'Vallet', 'Alix', '84, boulevard Laurent\n55 711 Robertboeuf', '17916', 'Schmitt', 'est', 'ZMsR<@K\\'),
(85, 1, 'Prevost', 'Audrey', '2, rue de De Sousa\n00858 Schmitt', '24963', 'LopesBourg', 'sed', '^\\:TN`41JSt?$R/M'),
(86, 2, 'Cohen', 'Xavier', '36, rue André Aubry\n65 111 Vasseur', '28743', 'Albert', 'qui', 'Y*;<Od~RPuH'),
(87, 3, 'Lagarde', 'Antoine', '32, impasse Thibault Dubois\n91 833 Jacquet-la-Forêt', '93 581', 'Pascal', 'saepe', '75szP:^:G85T!;M]S'),
(88, 1, 'Mary', 'Grégoire', '65, avenue Georges Raynaud\n05467 Roussel-sur-Gilbert', '05292', 'Diaz-la-Forêt', 'distinctio', 'C>}pB5Mj==x]N?^d]x:85o'),
(89, 2, 'Delattre', 'Paulette', '30, rue Odette Didier\n56 780 Perret', '42310', 'CharpentierVille', 'perspiciatis', 'l~M#sg0A/V:m..5\'V\\=pXYs3o'),
(90, 3, 'Roche', 'Julie', '704, rue Maurice\n09098 Ruiz', '89041', 'Neveu', 'nobis', 'd;RQ'),
(91, 1, 'Colin', 'Édith', '28, boulevard de Charles\n42 156 Alexandre', '16 569', 'Moreno', 'provident', 'vo[MV^>TW/N$h8c9By,VS'),
(92, 2, 'Masse', 'Thérèse', 'avenue Alexandria Bernier\n71677 Bernard', '25192', 'Teixeiraboeuf', 'sit', '|(<.0rR^QBB5Y'),
(93, 3, 'Maillot', 'Augustin', '45, avenue de Ramos\n29989 Georges', '91124', 'Huet', 'cum', 'N\";<]EL'),
(94, 1, 'Ruiz', 'Théophile', '16, place Nicolas Bonnin\n42 303 Marques-sur-Rolland', '00321', 'Vallee', 'incidunt', '+\\}kQ@~L9L0>{lUzt2}'),
(95, 2, 'Marin', 'Andrée', '88, chemin de Dufour\n22323 Lacroix', '59 439', 'Renault-sur-Mer', 'dignissimos', '!M;UYD+X0TQh'),
(96, 3, 'Da Silva', 'Suzanne', '74, place de Thomas\n42 035 Deschampsdan', '48 811', 'Mercier', 'amet', 'f$h>ByJDD`=6L:~y=0lR'),
(97, 1, 'Legrand', 'Isabelle', '72, avenue Coulon\n76518 Martineau', '17879', 'Riou', 'rerum', 'wBK.3y'),
(98, 2, 'Lejeune', 'Andrée', '57, rue de Martins\n98 822 Mahe', '47 369', 'Cordier', 'eveniet', ')p(A7\'I}RBXdP.3I9KH|XV=\\i'),
(99, 3, 'Cohen', 'Philippe', '31, rue de Lagarde\n70603 Payet', '98961', 'Buisson-les-Bains', 'ratione', '(tGIIKf@x1Y)mX3;J\";8mQ'),
(100, 1, 'Arnaud', 'Alex', 'chemin Martine Chevalier\n18219 Delaunay-sur-Dijoux', '38633', 'Foucher', 'voluptas', 'Pu$l&\'|Q$F!/');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `delegue`
--
ALTER TABLE `delegue`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9A27D3C54C8C93` (`type_id`);

--
-- Index pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D1D741717F72333D` (`visiteur_id`);

--
-- Index pour la table `type_praticien`
--
ALTER TABLE `type_praticien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4EA587B82391866B` (`praticien_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `delegue`
--
ALTER TABLE `delegue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `praticien`
--
ALTER TABLE `praticien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT pour la table `type_praticien`
--
ALTER TABLE `type_praticien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD CONSTRAINT `FK_D9A27D3C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_praticien` (`id`);

--
-- Contraintes pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD CONSTRAINT `FK_D1D741717F72333D` FOREIGN KEY (`visiteur_id`) REFERENCES `visiteur` (`id`);

--
-- Contraintes pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD CONSTRAINT `FK_4EA587B82391866B` FOREIGN KEY (`praticien_id`) REFERENCES `praticien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
