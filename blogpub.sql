-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 22 nov. 2022 à 15:14
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blogpub`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `IdArticle` varchar(50) NOT NULL,
  `nomArticle` varchar(100) NOT NULL,
  `urlImg` varchar(2000) DEFAULT NULL,
  `IdUser` varchar(50) DEFAULT NULL,
  `descArticle` varchar(500) DEFAULT NULL,
  `DatePub` date DEFAULT NULL,
  `IdCat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`IdArticle`, `nomArticle`, `urlImg`, `IdUser`, `descArticle`, `DatePub`, `IdCat`) VALUES
('A01', 'Les hommes et les femmes qui font avancer le Bénin', 'https://assoukamag.com/wp-content/uploads/2022/09/2-copieggggg-860x415.png', 'U08', 'Dans cette  République où tout bouge à la vitesse de la lumière, plusieurs personnalités crèvent l’écran à travers leurs actes, leurs discours et leurs parcours.', '2022-09-26', 'C1'),
('A02', 'SAIDOU A OSSENI : Administrateur Général SOGETEC', 'https://assoukamag.com/wp-content/uploads/2022/09/saidou-860x415.png', 'U08', 'Lentement et sûrement, Saïdou Adam Osseni a bâti une entreprise qui a pignon sur rue dans le secteur', '2022-09-22', 'C1'),
('A03', 'La Zone industrielle de GloDjigbé(GDIZ)', 'https://assoukamag.com/wp-content/uploads/2018/03/3333333-860x415.png', 'U08', 'La Zone industrielle de GloDjigbé(GDIZ) est le 3ème maillon important de la chaine de promotion du tissu industriel mis\r\nen place par le gouvernement du Président Patrice Talon.', '2022-10-28', 'C3'),
('A04', 'L’école doit s’adapter au monde tel qu’il est', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-qJ4Jf1aGWDpuNOIvqV9ylZbRk_7fJYHBkw&usqp=CAU', 'U08', 'L’éducation doit suivre les évolutions de son environnement. Elle est le socle sur lequel nous construisons le monde de demain. Elle est aussi la matière par laquelle un pays façonne et prépare ses fu', '2021-04-14', 'C2'),
('A05', 'Au Sénégal, des classes préparatoires pour lutter contre la fuite des cerveaux', 'https://img.lemde.fr/2022/11/10/0/0/1080/720/664/0/75/0/3782105_1668094647572-whatsapp-image-2022-11-08-at-19-36-33.jpeg', 'U09', 'Concentrée sur son cahier rempli de formules mathématiques, Sokhna Aissatou Mbacké termine un exercice avant de se rendre au cours de sport en fin de journée. « Mes semaines sont très chargées : je co', '2022-10-10', 'C6'),
('A06', ' Revalorisation des enseignants : les milieux et fins de carrière ont p', 'https://images.outbrainimg.com/transform/v3/eyJpdSI6IjE2NTc0NjJkNzAzMDNkZWU3MDAxNjRjYmQ4MzEzODEyNDE2MzVjNjdjODNiYWRlYjM1MTAyMGY1NzMwMGIwODQiLCJ3IjoyNTUsImgiOjE1MCwiZCI6MS41LCJjcyI6MCwiZiI6NH0.webp', 'U08', 'Le ministre de l’éducation nationale, Pap Ndiaye, a précisé que la promesse de revalorisation de 10 % des enseignants concernait les professeurs en première moitié de carrière. Mais l’attente est forte chez les plus expérimentés, qui ont été aux premières loges du décrochage salarial.', '2020-11-04', 'C2'),
('A07', '« Il faut un modèle de financement qui garantisse l’auto', 'https://img.lemde.fr/2022/11/10/0/0/3307/2205/1440/960/60/0/8951272_pppjer1002-israel-election-ben-gvir-1110-11.jpg', 'U08', 'Après dix ans de travaux qui ont conduit à la création d’une quinzaine de nouveaux établissements par le biais de regroupements, Jean-Claude Lehmann, président honoraire de l’Académie des technologies, dresse un bilan de son action dans une tribune au « Monde » et au nom du jury international IDEX-Isite.', '2022-09-23', 'C2'),
('A08', 'Crise des opiacés : Walmart annonce une perte de 1,8 milliard de dollars après avoir soldé les pours', 'https://img.lemde.fr/2020/12/22/0/0/5184/3456/664/0/75/0/b1c4e08_f051b079fe0143fdaafa387d3aedd45c-f051b079fe0143fdaafa387d3aedd45c-0.jpg', 'U09', 'L’entreprise américaine spécialisée dans la grande distribution était pointée du doigt dans la crise sanitaire liée aux antidouleurs.', '2022-11-21', 'C6'),
('A09', 'La drépanocytose, maladie génétique la plus fréquente parmi celles décelées à la naissance, sera bie', 'https://media.istockphoto.com/id/1334655757/fr/photo/m%C3%A9decin-p%C3%A9diatre-f%C3%A9minin-asiatique-examinant-son-petit-b%C3%A9b%C3%A9-patient-avec-st%C3%A9thoscope-dans-la.jpg?s=612x612&w=0&k=20&c=HuTCHGBNGhA0kYphYboW-DMEwfHvmostBUVh3xmE--I=', 'U09', 'Depuis dix ans, les appels d’associations de patients, de médecins et de chercheurs se multipliaient en faveur du dépistage néonatal systématique de la drépanocytose. Ils ont enfin été entendus. Dans un avis rendu mardi 15 novembre, la Haute Autorité de santé (HAS) recommande de le généraliser à tous les nouveau-nés au même titre que cinq autres maladies dont, notamment, la mucoviscidose ou encore l’hypothyroïdie congénitale.', '2022-11-02', 'C6'),
('A10', 'Article réservé à nos abonnés Le déclin de la fertilité masculine est mondial et s’accélère', 'https://media.istockphoto.com/id/175179757/fr/photo/sperme-et-%C5%93ufs.jpg?s=612x612&w=0&k=20&c=IoXrQMoKVSh65Xp5z-bZmJJDkfKlEm3Y13fa4BOnJMM=', 'U09', 'La pollution et les modes de vie sont à l’origine d’une chute accélérée de la concentration des spermatozoïdes chez l’homme. Ce déclin est désormais observé dans le monde entier, indique une méta-analyse publiée mardi 15 novembre.', '2022-04-05', 'C6'),
('A11', 'Article réservé à nos abonnés Sebastian Lelio, réalisateur de « The Wonder »  : « Mon film explore l', 'https://media.istockphoto.com/id/1397116176/fr/photo/deux-jeunes-couples-de-riyad-d%C3%A9jeunent-au-restaurant-de-lh%C3%B4tel.jpg?s=612x612&w=0&k=20&c=BYgamcIYdr1bpwms9Qr3M362O9cCbwtmlsbY0pBZt0w=', 'U08', 'Dans un entretien au « Monde », le cinéaste chilien, dont le film est disponible sur Netflix à partir du 16 novembre, explique le parallèle qu’il a créé entre les mécaniques de la croyance à l’œuvre au cinéma et en religion.', '2022-07-12', 'C3'),
('A12', 'ANALYSE\r\nArticle réservé à nos abonnés Cinéma : ce monde apocalyptique que décrivent les réalisateur', 'https://media.istockphoto.com/id/1378269637/fr/photo/il-y-a-des-r%C3%A8glements-auxquels-nous-devons-nous-conformer.jpg?s=612x612&w=0&k=20&c=NiDT7sAA4cod2cIN24-mPQ7ana_QXJU09bpBjc-uJfs=', 'U08', 'Chez les cinéastes de l’est de l’Europe, les crimes du passé, le plus souvent antisémites, parce qu’ils ont été tus, refont surface dans une explosion de haine de l’autre et laissent le présent exsangue.', '2020-11-19', 'C3'),
('A13', 'CRITIQUE\r\nArticle réservé à nos abonnés « A propos d’amour » : le best-seller de la penseuse afrofém', 'https://media.istockphoto.com/id/1385766529/fr/photo/femme-tenant-des-pancartes-lors-dune-manifestation-%C3%A0-lext%C3%A9rieur.jpg?s=612x612&w=0&k=20&c=k_44ACePK0BZF24wEv4LuEfvV1r3ACXticydj_4aD64=', 'U08', 'Sortie en 2000 aux Etats-Unis, le livre de l’essayiste américaine Gloria Jean Watkins propose la voie de « l’amour véritable » comme pratique féministe.', '2022-04-07', 'C1'),
('A14', 'Quiz : sept questions pour partir à la conquête de l’espace la MODE\r\n', 'https://th.bing.com/th/id/OIP.MdcqyNDKrvjUg2sgOlqH1wHaJl?w=185&h=240&c=7&r=0&o=5&pid=1.7', 'U09', 'Objectif Lune ! Le lancement de la mission américaine Artemis est programmé pour mercredi matin. Prenez place à bord de Mémorable et découvrez, avec ce test inspiré de l’application de culture générale du « Monde », quelques-uns des événements-clés qui ont jalonné la conquête spatiale.', '2021-03-16', 'C4'),
('A15', 'News mode ELLE : les dernières news et articles de mode - Elle\r\n', 'https://th.bing.com/th/id/OIP.1bUI9NvaDb98WA3SoDKOIgAAAA?w=185&h=252&c=7&r=0&o=5&pid=1.7', 'U09', 'Les news mode. En quête de news mode? Découvrez les dernières news mode en vêtements, lingerie, accessoires, ainsi que les actualités mode du côté des stars et des créateurs de mode.', '2022-11-19', 'C4'),
('A16', 'Tous les articles sur \"Mode\" - Le Temps\r\n', 'https://th.bing.com/th/id/OIP.APsR0USvBaf2NJtWweTLfwHaLL?w=185&h=280&c=7&r=0&o=5&pid=1.7', 'U09', '\r\n26/09/2022 · Le «no gender» casse les codes de la mode. Publié 26.09.2022 - 18:33Modifié 05.10.2022 - 09:24. La mode unisexe ou «gender neutral» fleurit sur les podiums. Si elle est en …', '2022-11-15', 'C4'),
('A17', 'Icône de Web mondiallejournal.cnrs.fr · Sep 04, 2017\r\nComprendre le sens de la musique | CNRS Le jou', 'https://www.bing.com/th?id=OIP.5cuien7P4N5Jm-XS35F9IwHaDj&w=200&h=150&c=8&rs=1&o=6&pid=5.1', 'U09', '« La musique est une création sonore d’espace, de temps et d’émotions, observe Sacha Chaban. Le compositeur peut utiliser les théories musicales, s’en inspirer ou encore les dépasser. Il contrôle également l’espace : les sons aigus semblent venir d’en haut, les graves d’en bas.', '2022-07-06', 'C5'),
('A18', '« Musique» : tous nos articles | Le Devoir\r\n', 'https://th.bing.com/th/id/OIP.q1N03uNygzQOwi2ffx4iNQHaKK?w=185&h=254&c=7&r=0&o=5&pid=1.7', 'U09', '« Musique » : tous nos articles Une école de jazz naît des cendres du Conservatoire de l’Université McGill L’Université McGill avait annoncé la fermeture de son conservatoire en juin....', '2022-06-07', 'C5'),
('A19', 'Pourquoi la musique nous fait du bien | Psychologies.com', 'https://th.bing.com/th/id/OIP.iyTh1urmE7rq43F0jXEo5QAAAA?w=185&h=297&c=7&r=0&o=5&pid=1.7', 'U09', 'Les résultats sont concluants puisque la musique joue un rôle positif sur la réussite des anesthésies et aide les enfants à mieux vivre le …\r\n\r\nTemps de Lecture Estimé: 6 min\r\n', '2021-06-14', 'C5'),
('A20', 'Le sport, miroir de nos sociétés | CNRS Le journal\r\n', 'https://th.bing.com/th/id/OIP.DxXx858s8SHs_4tA-UXUKQHaDs?w=349&h=174&c=7&r=0&o=5&pid=1.7', 'U10', 'Tout à la fois vecteur de bien-être, idiome mondial générateur d’émotions collectives, machine à fabriquer des héros, locomotive de croissance, outil du prestige national, …', '2022-08-17', 'C7'),
('A21', 'Le sport est bon pour la santé, c’est prouvé - CNRS Le ', 'https://th.bing.com/th/id/OIP.A8n45Z3oRfFy_ib8I4wUXgHaDe?w=345&h=164&c=7&r=0&o=5&pid=1.7', 'U10', ' « Désormais, l’enjeu est de sensibiliser les professionnels de santé et les patients sur la mise en place de programmes d’activité physique adaptée », ajoute François Carré, …', '2022-11-08', 'C7'),
('A22', 'Comment rédiger un article de recherche sur le sport?\r\n', 'https://th.bing.com/th/id/OIP.FYrCT3rujH2-1qckkrSelgHaEK?w=274&h=180&c=7&r=0&o=5&pid=1.7', 'U10', 'Rédiger un article de recherche sportive fort commence par le choix d’un sujet fort. Comme tout autre article de recherche, un article de recherche sur le sport doit avoir un énoncé de thèse …', '2022-06-20', 'C7'),
('A23', 'Articles - Loisirs et divertissements - Alibi Creations\r\n', 'https://th.bing.com/th/id/OIP.lSCDDeoaTz6TrixD1rPBDwHaEK?w=255&h=180&c=7&r=0&o=5&pid=1.7', 'U10', 'Rédaction d’articles optimisés SEO sur les loisirs et les divertissements. Pour lire un article, cliquez sur « publié ici » à côté du titre : 5 idées d’activités pour un enfant de 5 ans …\r\n\r\nTemps de Lecture Estimé: 30 secondes\r\n', '2022-05-16', 'C8'),
('A24', 'II : Impôt sur les spectacles, jeux et divertissements ', 'https://th.bing.com/th/id/OIP.XTjzZybTKd9GqRvIvG0dxgHaCo?w=277&h=124&c=7&r=0&o=5&pid=1.7', 'U10', ' Les spectacles, jeux et divertissements de toute nature sont soumis à un impôt dans les formes et selon les modalités déterminées par les articles 1560 à 1566. Toutefois, …', '2022-11-06', 'C8'),
('A25', 'Articles - Loisirs et divertissements - Alibi Creations\r\n', 'https://th.bing.com/th/id/OIP.HSqoNfmgHux-d7suHZJf_gHaEp?w=240&h=180&c=7&r=0&o=5&pid=1.7', 'U10', '26/04/2017 · Rédaction d’articles optimisés SEO sur les loisirs et les divertissements. Pour lire un article, cliquez sur « publié ici » à côté du titre : 5 idées d’activités pour un enfant de 5 ans …\r\n\r\nTemps de Lecture Estimé: 30 secondes\r\n', '2022-11-22', 'C8');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `IdCat` varchar(50) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`IdCat`, `libelle`) VALUES
('C1', 'A LA UNE'),
('C2', 'EDUCATION'),
('C3', 'CULTURE'),
('C4', 'MODE'),
('C5', 'MUSIQUE'),
('C6', 'SANTE'),
('C7', 'SPORT'),
('C8', 'DIVERTISSEMENT');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `IdCom` varchar(50) NOT NULL,
  `IdUser` varchar(50) DEFAULT NULL,
  `IdArticle` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `DatePublication` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`IdCom`, `IdUser`, `IdArticle`, `content`, `DatePublication`) VALUES
('C01', 'U01', 'A01', 'Trop cool!!!', '2022-08-17'),
('C02', 'U01', 'A02', 'Je kiffe!!!!!!!!!', '2022-11-07'),
('C03', 'U01', 'A03', 'Du grand n\'importe quoi!!!!!!!!!', '2019-11-14'),
('C04', 'U01', 'A04', 'De ouffffffff!!!!!!!!!', '2021-11-08'),
('C05', 'U01', 'A05', 'Rien compris', '2022-08-23'),
('C06', 'U01', 'A06', 'Révolutionnaire l\'idéé', '2022-11-01'),
('C07', 'U02', 'A01', 'A revoir !!!!!!!!!', '2020-08-04'),
('C08', 'U02', 'A02', 'Gerard vient voir........', '2022-08-15'),
('C09', 'U02', 'A06', 'impossible.........', '2021-11-02'),
('C10', 'U02', 'A19', 'J\'adore...........', '2022-06-08'),
('C11', 'U03', 'A13', 'Le seule seigneur tout l\'honneur', '2022-11-02'),
('C12', 'U03', 'A11', 'C\'thor.............', '2022-11-14'),
('C13', 'U07', 'A16', 'Oui, ça commence pas très fort ce blog..', '2022-11-08'),
('C14', 'U08', 'A10', 'Excellente analyse de la situation !\r\nIl y arriver..', '2020-11-01');

-- --------------------------------------------------------

--
-- Structure de la table `liker`
--

CREATE TABLE `liker` (
  `IdArticle` varchar(50) NOT NULL,
  `IdUser` varchar(50) NOT NULL,
  `DateLike` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `IdUser` varchar(100) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `roleUser` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`IdUser`, `nom`, `prenom`, `email`, `roleUser`) VALUES
('U01', 'ABALO', 'Cephas', 'lolo@gmail.com', 0),
('U02', 'MEMEDE', 'loïc', 'meme@gmailcom', 0),
('U03', 'TOLLO', 'jack', 'jojo@gmail.com', 0),
('U04', 'MONTENEGRO', 'Maria', 'mom@gmail.com', 0),
('U05', 'AHANHANZO ', 'Beni', 'be@gmail.com', 0),
('U06', 'VIERRA', 'Paul', 'po@gmail.com', 0),
('U07', 'SANGO', 'Franc', 'fr@gmail.com', 0),
('U08', 'DEDO', 'Daniel', 'dan@gmail.com', 1),
('U09', 'OUENDO', 'Mika', 'miki@gmail.com', 1),
('U10', 'HAYA', 'Pierre', 'Pipi@gmail.com', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`IdArticle`),
  ADD KEY `IdUser` (`IdUser`),
  ADD KEY `IdCat` (`IdCat`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`IdCat`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`IdCom`),
  ADD KEY `IdUser` (`IdUser`),
  ADD KEY `IdArticle` (`IdArticle`);

--
-- Index pour la table `liker`
--
ALTER TABLE `liker`
  ADD PRIMARY KEY (`IdArticle`,`IdUser`),
  ADD KEY `IdUser` (`IdUser`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IdUser`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `user` (`IdUser`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`IdCat`) REFERENCES `categorie` (`IdCat`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `user` (`IdUser`),
  ADD CONSTRAINT `commentaire_ibfk_2` FOREIGN KEY (`IdArticle`) REFERENCES `article` (`IdArticle`);

--
-- Contraintes pour la table `liker`
--
ALTER TABLE `liker`
  ADD CONSTRAINT `liker_ibfk_1` FOREIGN KEY (`IdArticle`) REFERENCES `article` (`IdArticle`),
  ADD CONSTRAINT `liker_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `user` (`IdUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
