-- phpMyAdmin SQL Dump
-- version 3.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2013 at 02:44 PM
-- Server version: 5.5.31
-- PHP Version: 5.3.10-1ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `costail_primaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnes`
--

CREATE TABLE IF NOT EXISTS `alumnes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `cognom1` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `cognom2` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `classe` int(11) NOT NULL DEFAULT '0',
  `nivellpers` text COLLATE latin1_spanish_ci NOT NULL,
  `informe` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `tutor` int(11) NOT NULL,
  `tutor2` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `arees`
--

CREATE TABLE IF NOT EXISTS `arees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `curs` int(11) NOT NULL,
  `id_mot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=55 ;

--
-- Dumping data for table `arees`
--

INSERT INTO `arees` (`id`, `nom`, `curs`, `id_mot`) VALUES
(1, 'LLENGUA CATALANA', 3, 4),
(2, 'LLENGUA CASTELLANA', 3, 5),
(3, 'LLENGUA ANGLESA', 3, 6),
(4, 'MATEMÀTICA', 3, 7),
(5, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 3, 8),
(6, 'EDUCACIÓ VISUAL I PLÀSTICA', 3, 9),
(7, 'EDUCACIÓ MUSICAL', 3, 10),
(8, 'EDUCACIÓ FÍSICA', 3, 11),
(9, 'LLENGUA CATALANA', 4, 4),
(10, 'LLENGUA CASTELLANA', 4, 5),
(11, 'LLENGUA ANGLESA', 4, 6),
(12, 'MATEMÀTICA', 4, 7),
(13, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 4, 8),
(14, 'EDUCACIÓ VISUAL I PLÀSTICA', 4, 9),
(15, 'EDUCACIÓ MUSICAL', 4, 10),
(16, 'EDUCACIÓ FÍSICA', 4, 11),
(17, 'LLENGUA CATALANA', 6, 4),
(18, 'LLENGUA CASTELLANA', 6, 5),
(19, 'LLENGUA ANGLESA', 6, 6),
(20, 'MATEMÀTICA', 6, 7),
(21, 'CONEIXEMENT DE L''ENTORN NATURAL', 6, 8),
(22, 'CONEIXEMENT DE L''ENTORN SOCIAL', 6, 8),
(23, 'EDUCACIÓ VISUAL I PLÀSTICA', 6, 9),
(24, 'EDUCACIÓ MUSICAL', 6, 10),
(25, 'EDUCACIÓ FÍSICA', 6, 11),
(26, 'LLENGUA CATALANA', 5, 4),
(27, 'LLENGUA CASTELLANA', 5, 5),
(28, 'LLENGUA ANGLESA', 5, 6),
(29, 'MATEMÀTICA', 5, 7),
(30, 'CONEIXEMENT DE L''ENTORN NATURAL', 5, 8),
(31, 'CONEIXEMENT DE L''ENTORN SOCIAL', 5, 8),
(32, 'EDUCACIÓ VISUAL I PLÀSTICA', 5, 9),
(33, 'EDUCACIÓ MUSICAL', 5, 10),
(34, 'EDUCACIÓ FÍSICA', 5, 11),
(35, 'LLENGUA CATALANA', 2, 4),
(37, 'LLENGUA ANGLESA', 2, 6),
(38, 'MATEMÀTICA', 2, 7),
(39, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 2, 8),
(40, 'EDUCACIÓ VISUAL I PLÀSTICA', 2, 9),
(41, 'EDUCACIÓ MUSICAL', 2, 10),
(42, 'EDUCACIÓ FÍSICA', 2, 11),
(43, 'LLENGUA CATALANA', 1, 4),
(45, 'LLENGUA ANGLESA', 1, 6),
(46, 'MATEMÀTICA', 1, 7),
(47, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 1, 8),
(48, 'EDUCACIÓ VISUAL I PLÀSTICA', 1, 9),
(49, 'EDUCACIÓ MUSICAL', 1, 10),
(50, 'EDUCACIÓ FÍSICA', 1, 11),
(54, 'LLENGUA CASTELLANA', 2, 5),
(53, 'LLENGUA CASTELLANA', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `curs` tinyint(4) NOT NULL,
  `classe` enum('A','B') COLLATE latin1_spanish_ci NOT NULL DEFAULT 'A',
  `id_mot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `nom`, `curs`, `classe`, `id_mot`) VALUES
(1, '1 A', 1, 'A', 12),
(2, '1 B', 1, 'B', 12),
(3, '2 A', 2, 'A', 13),
(4, '2 B', 2, 'B', 13),
(5, '3 A', 3, 'A', 14),
(6, '3 B', 3, 'B', 14),
(7, '4 A', 4, 'A', 15),
(8, '4 B', 4, 'B', 15),
(9, '5 A', 5, 'A', 16),
(10, '5 B', 5, 'B', 16),
(11, '6 A', 6, 'A', 17),
(12, '6 B', 6, 'B', 17);

-- --------------------------------------------------------

--
-- Table structure for table `informes`
--

CREATE TABLE IF NOT EXISTS `informes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alumne` int(10) unsigned NOT NULL DEFAULT '0',
  `area` int(10) unsigned NOT NULL DEFAULT '0',
  `actitud` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `obser` text COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alumne` int(11) NOT NULL,
  `tema` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `plantilles`
--

CREATE TABLE IF NOT EXISTS `plantilles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` int(11) NOT NULL DEFAULT '-1',
  `ordre` tinyint(4) NOT NULL DEFAULT '-1',
  `titol` text COLLATE latin1_spanish_ci NOT NULL,
  `text` text COLLATE latin1_spanish_ci NOT NULL,
  `buit` tinyint(4) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=342 ;

--
-- Dumping data for table `plantilles`
--

INSERT INTO `plantilles` (`id`, `area`, `ordre`, `titol`, `text`, `buit`) VALUES
(1, 16, 0, 'EDUCACIÓ FÍSICA', 'Cicle Mitjà', 0),
(2, 16, 1, 'Control i consciència corporal', 'Control muscular i de la respiració. Orientació en espai i en el temps referida a altres persones i a objectes. Coordinació de moviments amb estructures rítmiques.', 0),
(3, 16, 2, 'Execució d''habilitats coordinatives', 'Domini de les habilitats motrius bàsiques: desplaçaments, salts, girs, equilibris, llançaments i recepcions. Execució d''habilitats motrius específiques en esports individuals i d''equip.', 0),
(4, 16, 3, 'Utilització de les capacitats condicionals', 'Execució de moviments diversos amb el màxim nombre d''articulacions. Realització de curses llargues amb ritme constant. Realització de moviments que afavoreixen la flexibilitat.', 0),
(5, 16, 4, 'Expressió corporal i dramatització', 'Descobriment de recursos expressius del cos.', 0),
(6, 16, 5, 'Realització de jocs', 'Realització de jocs espontanis, reglats, tant col·lectius com individuals. Respecte per les normes.', 0),
(7, 16, 6, 'Hàbits de salut i higiene corporal', 'Cura del propi cos, del material i de les instal·lacions. Hàbits d''higiene: dutxa, roba de recanvi...', 0),
(8, 10, 0, 'LLENGUA CASTELLANA', 'Cicle Mitjà', 0),
(9, 10, 1, 'Llengua oral. Comprensió', 'Comprensió de relats, explicacions i argumentacions.', 0),
(10, 10, 2, 'Llengua oral. Expressió', 'Precisió i ampliació del vocabulari. Capacitat per fer-se entendre en diferents missatges orals. Dicció i entonació de la llengua. Articulació dels sons propis de la llengua.', 0),
(11, 10, 3, 'Llengua escrita. Comprensió', 'Comprensió de diferents tipus de textos: narracions, contes, textos instructius, notícies, ordres escrites. ', 0),
(13, 10, 4, 'Llengua escrita. Expressió', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coherència i la creativitat. Elaboració de textos de tipologia diversa.', 1),
(14, 10, 6, 'Treball sistemàtic. Lèxic', 'Ampliació de vocabulari i precisió en el seu ús. Ús de frases fetes i locucions (maneres de dir).', 0),
(15, 10, 5, 'Treball sistemàtic. Fonètica - ortografia', 'Correspondència so-grafia. Discriminació i producció dels sons distintius del castellà. Aplicació i memorització de les normes ( j, g, z, c ñ, ll, i terminacions aba...).', 0),
(16, 10, 7, 'Treball sistemàtic. Gramàtica', 'Identificació de nom, adjectiu i verb. Concordança de gènere, nombre i persona.', 0),
(17, 9, 0, 'LLENGUA CATALANA', 'Cicle Mitjà', 0),
(18, 9, 1, 'Llengua oral / Comprensió', 'Comprensió de relats, explicacions i argumentacions. Audició atenta en les explicacions.', 0),
(19, 9, 2, 'Llengua oral / Expressió', 'Expressió correcta i coherent en diferents situacions comunicatives. Situacions col·loquials i formals. Hàbits de conversa: escoltar, demanar paraula, saber esperar, to de veu.', 0),
(20, 9, 3, 'Llengua escrita. Comprensió', 'Comprensió de diferents tipus de textos: narracions, contes, textos instructius, notícies, ordres escrites. Distinció entre la idea principal i les idees secundàries.', 0),
(21, 9, 4, 'Llengua escrita / Lectura', 'Ús del mecanisme de la lectura: rapidesa, expressió, entonació i puntuació.', 0),
(22, 9, 5, 'Llengua escrita / Expressió', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coherència i la creativitat. Elaboració de textos de tipologia diversa.', 0),
(23, 9, 7, 'Treball sistemàtic / Lèxic', 'Coneixement de l''abecedari. Ús del diccionari. Ampliació del vocabulari.', 0),
(24, 9, 6, 'Treball sistemàtic / Fonètica - ortografia', 'Aplicació i memorització de les normes treballades a classe: plurals, apòstrof, dígrafs. Separació de síl·labes i diferenciació entre tòniques i àtones.', 0),
(25, 9, 8, 'Treball sistemàtic / Gramàtica', 'Inici en l''ús de la puntuació. Distinció d''algunes de les categories gramaticals: determinant, nom, verb, adjectiu i la seva concordança.', 0),
(26, 12, 0, 'MATEMÀTICA', 'Cicle Mitjà', 0),
(27, 12, 1, 'Nombres i operacions', 'Comprensió i ús del mecanisme de la sèrie numèrica.\nRapidesa en el càlcul mental.\nDomini de les operacions treballades:\nSumar, restar, multiplicar, dividir i inici de fraccions\nMemorització de la taula de multiplicar.', 0),
(28, 12, 2, 'Geometria', 'Reconeixement i classificació de figures planes i cossos geomètrics. Reconeixement d''aresta, vèrtex, angle i costat en diferents polígons i poliedres.\nReconeixement de la simetria de figures i cossos. Utilització del regle i l''escaire\nCàlcul del perímetre de diferents polígons', 0),
(29, 12, 3, 'Magnitud i mesura', 'Utilització de les unitats més freqüents de longitud, massa, temps i capacitat. Equivalència d''unitats. Ús i interpretació del rellotge.', 0),
(30, 12, 4, 'Estadística i probabilitat', 'Representació i interpretació de dades. Coneixement de diferents tipus de gràfics.', 0),
(31, 12, 5, 'Resolució de problemes', 'Comprensió del plantejament dels problemes. Utilització de les operacions adequades per la resolució de problemes.', 0),
(32, 15, 0, 'EDUCACIÓ MUSICAL', 'Cicle Mitjà', 0),
(33, 15, 1, 'Cançó i veu', 'Memorització de la lletra de les cançons. Afinació de la melodia.', 0),
(34, 15, 2, 'Música, moviment i dansa', 'Precisió i adequació del moviment a la música. Expressivitat a través del moviment corporal (individualment i col·lectiva). Memorització de la coreografia.', 0),
(35, 15, 3, 'Lectura i escriptura', 'Diferenciació de notes i ritmes treballats. Interpretació rítmica i melòdica.', 0),
(36, 15, 4, 'Instrumentació', 'Capacitat individual i en grup de seguir les pautes de la mestra, respectant el treball de grup i amb un control personal davant dels instruments.\nCura dels instruments.', 0),
(37, 15, 5, 'Audició', 'Discriminació gràfica i auditiva d''una melodia, uns instruments determinats, un conjunt instrumental... Capacitat d''atenció i concentració.', 0),
(38, 15, 6, 'Expressivitat i creativitat', 'Capacitat de comunicació a través de la música de forma expressiva i creativa.', 0),
(39, 13, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 'Cicle Mitjà', 0),
(40, 13, 1, 'Recollida d''informació', 'Obtenció d''informació adequada al plantejament del tema.', 0),
(41, 13, 2, 'Processament de la informació', 'Capacitat de relacionar la informació nova amb el que ja coneix.\nCapacitat d''extraure la informació pertinent del material utilitzat.\nOrganització i categorització de la informació treballada.', 0),
(42, 13, 3, 'Expressió de la informació', 'Comprensió i memorització dels conceptes treballats.\r\nCapacitat d''expressar la informació de manera oral i escrita.', 0),
(43, 13, 4, 'Treball en grup', 'Capacitat d''organització, participació i entesa en el treball de grup. Elaboració del treball conjunt.', 0),
(44, 13, 5, 'Relació amb l''entorn', 'Interès per la realitat natural i social que l''envolta.', 0),
(45, 3, 0, 'LLENGUA ANGLESA', 'Cicle Mitjà', 0),
(46, 3, 1, 'Llengua oral / Comprensió', 'Comprensió del lèxic bàsic.\nComprensió d''estructures treballades.\nComprensió global de missatges en contextos significatius, amb el suport d''estímuls lingüístics i no lingüístics.', 0),
(47, 3, 2, 'Llengua oral / Expressió', 'Discriminació i reproducció dels sons vocàlics i consonàntics bàsics.\nReproducció de sons, ritmes i entonacions (cançons, poemes, endevinalles, dramatitzacions...).\nComunicació en contextos significatius (salutacions, demandes, informacions...).', 0),
(48, 3, 3, 'Llengua escrita / Comprensió', 'Comprensió d''enunciats breus.\nComprensió de textos treballats.', 0),
(49, 3, 4, 'Llengua escrita / Expressió', 'Escriptura de frases senzilles i de petits textos a partir de models.\nUtilització del lèxic treballat.\nUtilizació de les categories gramaticals: determinants (articles i demostratius), formes verbals i adjectius.', 0),
(50, 14, 0, 'EDUCACIÓ VISUAL I PLÀSTICA', 'Cicle Mitjà', 0),
(51, 14, 1, 'Observació', 'Capacitat d''observar de forma precisa elements estàtics i canviants. Reproducció d''elements observats, de forma directa o de memòria.', 0),
(52, 14, 2, 'Experimentació', 'Habilitat per trobar diferents possibilitats plàstiques dels materials i de les eines a través de l''experimentació.', 0),
(53, 14, 3, 'Creació', 'Originalitat i creativitat en les produccions plàstiques. Capacitat de comunicació.', 0),
(54, 14, 4, 'Reflexió i diàleg', 'Reflexió crítica respecte a la pròpia obra i a la dels altres. Acceptació dels suggeriments respecte al seu treball.', 0),
(55, 14, 5, 'Tècniques', 'Utilització de les tècniques que permeten l''experimentació de la línea, la forma, el color i la creació de cossos estàtics i en moviment. Control del gest gràfic. Utilització correcta de les eines. Adequació a l''espai fixat. Presentació acurada.', 0),
(56, 11, 0, 'LLENGUA ANGLESA', 'Cicle Mitjà', 0),
(57, 11, 1, 'Llengua oral / Comprensió', 'Comprensió del lèxic bàsic.\nComprensió d''estructures treballades.\nComprensió global de missatges en contextos significatius, amb el suport d''estímuls lingüístics i no lingüístics.', 0),
(58, 11, 2, 'Llengua oral / Expressió', 'Discriminació i reproducció dels sons vocàlics i consonàntics bàsics.\nReproducció de sons, ritmes i entonacions (cançons, poemes, endevinalles, dramatitzacions...).\nComunicació en contextos significatius (salutacions, demandes, informacions...).', 0),
(59, 11, 3, 'Llengua escrita / Comprensió', 'Comprensió d''enunciats breus.\nComprensió de textos treballats.', 0),
(60, 11, 4, 'Llengua escrita / Expressió', 'Escriptura de frases senzilles i de petits textos a partir de models.\nUtilització del lèxic treballat.\nUtilizació de les categories gramaticals: determinants (articles i demostratius), formes verbals i adjectius.', 0),
(61, 2, 0, 'LLENGUA CASTELLANA', 'Cicle Mitjà', 0),
(62, 2, 1, 'Llengua oral / Comprensió', 'Comprensió de relats, explicacions i argumentacions.', 0),
(63, 2, 2, 'Llengua oral / Expressió', 'Precisió i ampliació del vocabulari. Capacitat per fer-se entendre en diferents missatges orals. Dicció i entonació de la llengua. Articulació dels sons propis de la llengua.', 0),
(64, 2, 3, 'Llengua escrita / Comprensió', 'Comprensió de diferents tipus de textos: narracions, contes, textos instructius, notícies, ordres escrites. ', 0),
(66, 2, 4, 'Llengua escrita / Expressió', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coherència i la creativitat. Elaboració de textos de tipologia diversa.', 1),
(67, 2, 6, 'Treball sistemàtic / Lèxic', 'Ampliació de vocabulari i precisió en el seu ús. Ús de frases fetes i locucions (maneres de dir).', 0),
(68, 2, 5, 'Treball sistemàtic / Fonètica - ortografia', 'Correspondència so-grafia. Discriminació i producció dels sons distintius del castellà. Aplicació i memorització de normes ortogràfiques (j, g, z, c ñ, ll, i terminacions en aba...).', 0),
(69, 2, 7, 'Treball sistemàtic / Gramàtica', 'Identificació de nom, adjectiu i verb. Concordança de gènere, nombre i persona.', 0),
(70, 1, 0, 'LLENGUA CATALANA', 'Cicle Mitjà', 0),
(71, 1, 1, 'Llengua oral / Comprensió', 'Comprensió de relats, explicacions i argumentacions. Audició atenta en les explicacions.', 0),
(72, 1, 2, 'Llengua oral / Expressió', 'Expressió correcta i coherent en diferents situacions comunicatives. Situacions col·loquials i formals. Hàbits de conversa: escoltar, demanar paraula, saber esperar, to de veu.', 0),
(73, 1, 3, 'Llengua escrita. Comprensió', 'Comprensió de diferents tipus de textos: narracions, contes, textos instructius, notícies, ordres escrites. Distinció entre la idea principal i les idees secundàries.', 0),
(74, 1, 4, 'Llengua escrita / Lectura', 'Ús del mecanisme de la lectura: rapidesa, expressió, entonació i puntuació.', 0),
(75, 1, 5, 'Llengua escrita / Expressió', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coherència i la creativitat. Elaboració de textos de tipologia diversa.', 0),
(76, 1, 7, 'Treball sistemàtic / Lèxic', 'Coneixement de l''abecedari. Ampliació del vocabulari.', 0),
(77, 1, 6, 'Treball sistemàtic / Fonètica - ortografia', 'Aplicació i memorització de les normes treballades a classe: plurals, apòstrof, dígrafs (que, qui, gue, gui, ig, ix, ss, rr...).', 0),
(78, 1, 8, 'Treball sistemàtic / Gramàtica', 'Inici en l''ús de la puntuació. Distinció d''algunes de les categories gramaticals: determinant, nom, verb, adjectiu i la seva concordança.', 0),
(79, 8, 0, 'EDUCACIÓ FÍSICA', 'Cicle Mitjà', 0),
(80, 8, 1, 'Control i consciència corporal', 'Control muscular i de la respiració. Orientació en espai i en el temps referida a altres persones i a objectes. Coordinació de moviments amb estructures rítmiques.', 0),
(81, 8, 2, 'Execució d''habilitats coordinatives', 'Domini de les habilitats motrius bàsiques: desplaçaments, salts, girs, equilibris, llançaments i recepcions. Execució d''habilitats motrius específiques en esports individuals i d''equip.', 0),
(82, 8, 3, 'Utilització de les capacitats condicionals', 'Execució de moviments diversos amb el màxim nombre d''articulacions. Realització de curses llargues amb ritme constant. Realització de moviments que afavoreixen la flexibilitat.', 0),
(83, 8, 4, 'Expressió corporal i dramatització', 'Descobriment de recursos expressius del cos.', 0),
(84, 8, 5, 'Realització de jocs', 'Realització de jocs espontanis, reglats, tant col·lectius com individuals. Respecte per les normes.', 0),
(85, 8, 6, 'Hàbits de salut i higiene corporal', 'Cura del propi cos, del material i de les instal·lacions. Hàbits d''higiene: dutxa, roba de recanvi...', 0),
(86, 4, 0, 'MATEMÀTICA', 'Cicle Mitjà', 0),
(87, 4, 1, 'Nombres i operacions', 'Comprensió i ús de la sèrie numèrica (fins a la centena de miler).\nRapidesa en el càlcul mental.\nDomini de les operacions treballades:\nSumar, restar, multiplicar i inici dividir.\nMemorització de la taula de multiplicar.', 0),
(88, 4, 2, 'Geometria', 'Reconeixement i classificació de figures planes i cossos geomètrics. Reconeixement d''aresta, vèrtex, angle i costat en diferents polígons i poliedres.\nReconeixement de la simetria de figures. Utilització del regle.\nCàlcul del perímetre de diferents polígons', 0),
(89, 4, 3, 'Magnitud i mesura', 'Utilització de les unitats més freqüents de longitud, massa, temps i capacitat. Equivalència d''unitats. Ús i interpretació del rellotge.', 0),
(90, 4, 4, 'Estadística i probabilitat', 'Representació i interpretació de dades. Coneixement de diferents tipus de gràfics.', 0),
(91, 4, 5, 'Resolució de problemes', 'Comprensió del plantejament dels problemes. Utilització de les operacions adequades per a la resolució de problemes.', 0),
(92, 7, 0, 'EDUCACIÓ MUSICAL', 'Cicle Mitjà', 0),
(93, 7, 1, 'Cançó i veu', 'Memorització de la lletra de les cançons. Afinació de la melodia.', 0),
(94, 7, 2, 'Música, moviment i dansa', 'Precisió i adequació del moviment a la música. Expressivitat a través del moviment corporal (individualment i col·lectiva). Memorització de la coreografia.', 0),
(95, 7, 3, 'Lectura i escriptura', 'Diferenciació de notes i ritmes treballats. Interpretació rítmica i melòdica.', 0),
(96, 7, 4, 'Instrumentació', 'Capacitat individual i en grup de seguir les pautes de la mestra, respectant el treball de grup i amb un control personal davant dels instruments.\nCura dels instruments.', 0),
(97, 7, 5, 'Audició', 'Discriminació gràfica i auditiva d''una melodia, uns instruments determinats, un conjunt instrumental... Capacitat d''atenció i concentració.', 0),
(98, 7, 6, 'Expressivitat i creativitat', 'Capacitat de comunicació a través de la música de forma expressiva i creativa.', 0),
(99, 5, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 'Cicle Mitjà', 0),
(100, 5, 1, 'Recollida d''informació', 'Obtenció d''informació adequada al plantejament del tema.', 0),
(101, 5, 2, 'Processament de la informació', 'Capacitat de relacionar la informació nova amb el que ja coneix.\nCapacitat d''extraure la informació pertinent del material utilitzat.\nOrganització i categorització de la informació treballada.', 0),
(102, 5, 3, 'Expressió de la informació', 'Comprensió i memorització dels conceptes treballats.\r\nCapacitat d''expressar la informació de manera oral i escrita.', 0),
(103, 5, 4, 'Treball en grup', 'Capacitat d''organització, participació i entesa en el treball de grup. Elaboració del treball conjunt.', 0),
(104, 5, 5, 'Relació amb l''entorn', 'Interès per la realitat natural i social que l''envolta.', 0),
(105, 6, 0, 'EDUCACIÓ VISUAL I PLÀSTICA', 'Cicle Mitjà', 0),
(106, 6, 1, 'Observació', 'Capacitat d''observar de forma precisa elements estàtics i canviants. Reproducció d''elements observats, de forma directa o de memòria.', 0),
(107, 6, 2, 'Experimentació', 'Habilitat per trobar diferents possibilitats plàstiques dels materials i de les eines a través de l''experimentació.', 0),
(108, 6, 3, 'Creació', 'Originalitat i creativitat en les produccions plàstiques. Capacitat de comunicació.', 0),
(109, 6, 4, 'Reflexió i diàleg', 'Reflexió crítica respecte a la pròpia obra i a la dels altres. Acceptació dels suggeriments respecte al seu treball.', 0),
(110, 6, 5, 'Tècniques', 'Utilització de les tècniques que permeten l''experimentació de la línea, la forma, el color i la creació de cossos estàtics i en moviment. Control del gest gràfic. Utilització correcta de les eines. Adequació a l''espai fixat. Presentació acurada.', 0),
(111, 28, 0, 'LLENGUA ANGLESA', 'Cicle Superior', 0),
(112, 28, 1, 'Llengua oral / Comprensió', 'Comprensió del vocabulari i de les estructures pròpies de la llengua i de l''edat. Comprensió de les explicacions. Audició atenta a les explicacions.', 0),
(113, 28, 2, 'Llengua oral / Expressió', 'Comunicació en contextos significatius: utilització del lèxic i de les expressions apreses. Intervencions adequades en el context d''una conversa. Utilització de la llengua com a vehicle de comunicació.', 0),
(114, 28, 3, 'Llengua escrita / Comprensió', 'Comprensió dels enunciats dels exercicis. Comprensió de textos de tipologia diversa: narracions, descripcions, científics, poètics, culinaris... Identificació d''idea principal i secundària. Saber fer un resum, un esquema, un mapa conceptual...', 0),
(115, 28, 4, 'Llengua escrita / Lectura', 'Domini del mecanisme lector: rapidesa, ritme, to, entonació...', 0),
(116, 28, 5, 'Llengua escrita / Expressió', 'Coherència, utilització de signes de puntuació, d''enllaços... Expressivitat, originalitat, riquesa de vocabulari. Capacitat d''expressar-se a través dels diferents tipus de textos: narració, descripció, text periodístic...', 0),
(117, 28, 6, 'Treball sistemàtic / Fonètica i ortografia', 'Articulació dels sons propis de la llengua. Memorització de les normes treballades. Escriptura correcta del vocabulari bàsic de l''edat.', 0),
(118, 28, 7, 'Treball sistemàtic / Lèxic', 'Utilització del vocabulari treballat. Derivació, sinònims, sentit figurat.', 0),
(119, 28, 8, 'Treball sistemàtic / Gramàtica', 'Categories gramaticals: nom, verb, adjectiu... Nuclis de la frase: subjecte, predicat, complements. Aplicació de les estructures gramaticals treballades en els redactats. Utilització del diccionari.', 0),
(120, 19, 0, 'LLENGUA ANGLESA', 'Cicle Superior', 0),
(121, 19, 1, 'Llengua oral / Comprensió', 'Comprensió del vocabulari i de les estructures pròpies de la llengua i de l''edat. Comprensió de les explicacions. Audició atenta a les explicacions.', 0),
(122, 19, 2, 'Llengua oral / Expressió', 'Comunicació en contextos significatius: utilització del lèxic i de les expressions apreses. Intervencions adequades en el context d''una conversa. Utilització de la llengua com a vehicle de comunicació.', 0),
(123, 19, 3, 'Llengua escrita / Comprensió', 'Comprensió dels enunciats dels exercicis. Comprensió de textos de tipologia diversa: narracions, descripcions, científics, poètics, culinaris... Identificació d''idea principal i secundària. Saber fer un resum, un esquema, un mapa conceptual...', 0),
(124, 19, 4, 'Llengua escrita / Lectura', 'Domini del mecanisme lector: rapidesa, ritme, to, entonació...', 0),
(125, 19, 5, 'Llengua escrita / Expressió', 'Coherència, utilització de signes de puntuació, d''enllaços... Expressivitat, originalitat, riquesa de vocabulari. Capacitat d''expressar-se a través dels diferents tipus de textos: narració, descripció, text periodístic...', 0),
(126, 19, 6, 'Treball sistemàtic / Fonètica i ortografia', 'Articulació dels sons propis de la llengua. Memorització de les normes treballades. Escriptura correcta del vocabulari bàsic de l''edat.', 0),
(127, 19, 7, 'Treball sistemàtic / Lèxic', 'Utilització del vocabulari treballat. Derivació, sinònims, sentit figurat.', 0),
(128, 19, 8, 'Treball sistemàtic / Gramàtica', 'Categories gramaticals: nom, verb, adjectiu... Nuclis de la frase: subjecte, predicat, complements. Aplicació de les estructures gramaticals treballades en els redactats. Utilització del diccionari.', 0),
(129, 27, 0, 'LLENGUA CASTELLANA', 'Cicle Superior', 0),
(130, 27, 1, 'Llengua oral / Comprensió', 'Comprensió del vocabulari i de les estructures pròpies de la llengua i de l''edat. Comprensió de les explicacions.', 0),
(131, 27, 2, 'Llengua oral / Expressió', 'Coherència  del discurs. Utilització del vocabulari i de les estructures pròpies de la llengua.', 0),
(132, 27, 3, 'Llengua escrita / Comprensió', 'Comprensió dels enunciats dels exercicis. Comprensió de textos de tipologia diversa.', 0),
(133, 27, 4, 'Llengua escrita / Expressió', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coherència i la creativitat. Elaboració de textos de tipologia diversa.', 0),
(134, 27, 5, 'Treball sistemàtic / Fonètica - ortografia', 'Discriminació i producció dels sons distintius d''aquesta llengua. Memorització de les normes treballades: grafies específiques, accentuació, b/v.', 0),
(135, 27, 6, 'Treball sistemàtic / Lèxic', 'Ús de frases fetes, locucions (maneres de dir). Derivació de paraules, sinònims, sentit figurat. Utilització del diccionari.', 0),
(136, 27, 7, 'Treball sistemàtic / Gramàtica', 'Categories gramaticals (nom, verb, adjectiu...). Aplicació de les estructures gramaticals treballades en els redactats', 0),
(137, 18, 0, 'LLENGUA CASTELLANA', 'Cicle Superior', 0),
(138, 18, 1, 'Llengua oral / Comprensió', 'Comprensió del vocabulari i de les estructures pròpies de la llengua i de l''edat. Comprensió de les explicacions.', 0),
(139, 18, 2, 'Llengua oral / Expressió', 'Coherència  del discurs. Utilització del vocabulari i de les estructures pròpies de la llengua.', 0),
(140, 18, 3, 'Llengua escrita / Comprensió', 'Comprensió dels enunciats dels exercicis. Comprensió de textos de tipologia diversa.', 0),
(141, 18, 4, 'Llengua escrita / Expressió', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coherència i la creativitat. Elaboració de textos de tipologia diversa.', 0),
(142, 18, 6, 'Treball sistemàtic / Lèxic', 'Ús de frases fetes, locucions (maneres de dir). Derivació de paraules, sinònims, sentit figurat. Utilització del diccionari.', 0),
(143, 18, 5, 'Treball sistemàtic / Fonètica - ortografia', 'Discriminació i producció dels sons distintius d''aquesta llengua. Memorització de les normes treballades: grafies específiques, accentuació, b/v.', 0),
(144, 18, 7, 'Treball sistemàtic / Gramàtica', 'Categories gramaticals (nom, verb, adjectiu...). Aplicació de les estructures gramaticals treballades en els redactats', 0),
(145, 26, 0, 'LLENGUA CATALANA', 'Cicle Superior', 0),
(146, 26, 1, 'Llengua oral / Comprensió', 'Comprensió del vocabulari i de les estructures pròpies de la llengua i de l''edat. Comprensió de les explicacions. Audició atenta a les explicacions.', 0),
(147, 26, 2, 'Llengua oral / Expressió', 'Coherència del discurs. Utilització de les estructures i del vocabulari propi de la llengua. Intervencions adequades en el context d''una conversa.', 0),
(148, 26, 3, 'Llengua escrita / Comprensió', 'Comprensió dels enunciats dels exercicis. Comprensió de textos de tipologia diversa (narratius, descriptius, científics, poètics, culinaris...). Identificació d''idea principal i secundària. Resums.', 0),
(149, 26, 4, 'Llengua escrita / Lectura', 'Domini del mecanisme lector (rapidesa, ritme, to, entonació...).', 0),
(150, 26, 5, 'Llengua escrita / Expressió', 'Coherència, utilització signes de puntuació, utilització d''enllaços. Originalitat, riquesa de vocabulari. Capacitat d''expressar-se a través de les diferents tipologies textuals (narració, descripció, text periodístic, poesia...).', 0),
(151, 26, 6, 'Treball sistemàtic / Fonètica - ortografia', 'Discriminació i producció de sons. Memorització de les normes ortogràfiques treballades (accentuació, diftongs...). Escriptura correcta del vocabulari bàsic de l''edat.', 0),
(152, 26, 7, 'Treball sistemàtic / Lèxic', 'Derivació de paraules, sinònims, sentit figurat. Utilització del vocabulari treballat. Interès per ampliar el vocabulari. Diccionari.', 0),
(153, 26, 8, 'Treball sistemàtic / Gramàtica', 'Utilització en els redactats de les estructures gramaticals treballades. Categories gramaticals: nom, verb, adjectiu, determinant i preposició. Subjecte, predicat, complements.', 0),
(154, 17, 0, 'LLENGUA CATALANA', 'Cicle Superior', 0),
(155, 17, 1, 'Llengua oral / Comprensió', 'Comprensió del vocabulari i de les estructures pròpies de la llengua i de l''edat. Comprensió de les explicacions. Audició atenta a les explicacions.', 0),
(156, 17, 2, 'Llengua oral / Expressió', 'Coherència del discurs. Utilització de les estructures i del vocabulari propi de la llengua. Intervencions adequades en el context d''una conversa.', 0),
(157, 17, 3, 'Llengua escrita / Comprensió', 'Comprensió dels enunciats dels exercicis. Comprensió de textos de tipologia diversa (narratius, descriptius, científics, poètics, culinaris...). Identificació d''idea principal i secundària. Resums.', 0),
(158, 17, 4, 'Llengua escrita / Lectura', 'Domini del mecanisme lector (rapidesa, ritme, to, entonació...).', 0),
(159, 17, 5, 'Llengua escrita / Expressió', 'Coherència, utilització signes de puntuació, utilització d''enllaços. Originalitat, riquesa de vocabulari. Capacitat d''expressar-se a través de les diferents tipologies textuals (narració, descripció, text periodístic, poesia...).', 0),
(160, 17, 6, 'Treball sistemàtic / Fonètica - ortografia', 'Discriminació i producció de sons. Memorització de les normes ortogràfiques treballades (accentuació, diftongs...). Escriptura correcta del vocabulari bàsic de l''edat.', 0),
(161, 17, 7, 'Treball sistemàtic / Lèxic', 'Derivació de paraules, sinònims, sentit figurat. Utilització del vocabulari treballat. Interès per ampliar el vocabulari. Diccionari.', 0),
(162, 17, 8, 'Treball sistemàtic / Gramàtica', 'Utilització en els redactats de les estructures gramaticals treballades. Categories gramaticals: nom, verb, adjectiu, determinant i preposició. Subjecte, predicat, complements.', 0),
(163, 34, 0, 'EDUCACIÓ FÍSICA', 'Cicle Superior', 0),
(164, 34, 1, 'Control i consciència corporal', 'Adequació del to muscular en funció de l''activitat física. Adopció de la postura equilibrada en repòs i en moviment. Control i ajust de la respiració. Sincronització del moviment amb estructures rítmiques.', 0),
(165, 34, 2, 'Execució d''habilitats coordinatives', 'Control corporal en les activitats gimnàstiques. Aplicació i combinació d''habilitats motrius bàsiques: salts, girs, colpeigs, recepcions i llançaments. Pràctica d''habilitats motrius específiques en la iniciació d''esports individuals, col·lectius, i danses.', 0),
(166, 34, 3, 'Utilització de les capacitats condicionals', 'Execució de curses a ritme constant. Ús del màxim nombre d''articulacions. Reacció motriu ràpida davant d''un estímul. Aplicació de la força contra una resistència donada.', 0),
(167, 34, 4, 'Expressió corporal i dramatització', 'Cerca de nous moviments amb estímuls musicals, visuals... Representació mitjançant tècniques de dramatització i de mim. Construcció de moviments a partir de gestos dels altres.', 0),
(168, 34, 5, 'Realització de jocs', 'Identificació del joc com a objecte recreatiu. Construcció i modificació de diferents jocs. Organització en situacions de joc. Anàlisi de situacions de joc col·lectiu.', 0),
(169, 34, 6, 'Hàbits de salut i higiene corporal', 'Cura del propi cos i de la seva higiene. Interès en les normes d''ús del material i de les instal·lacions.', 0),
(170, 25, 0, 'EDUCACIÓ FÍSICA', 'Cicle Superior', 0),
(171, 25, 1, 'Control i consciència corporal', 'Adequació del to muscular en funció de l''activitat física. Adopció de la postura equilibrada en repòs i en moviment. Control i ajust de la respiració. Sincronització del moviment amb estructures rítmiques.', 0),
(172, 25, 2, 'Execució d''habilitats coordinatives', 'Control corporal en les activitats gimnàstiques. Aplicació i combinació d''habilitats motrius bàsiques: salts, girs, colpeigs, recepcions i llançaments. Pràctica d''habilitats motrius específiques en la iniciació d''esports individuals, col·lectius, i danses.', 0),
(173, 25, 3, 'Utilització de les capacitats condicionals', 'Execució de curses a ritme constant. Ús del màxim nombre d''articulacions. Reacció motriu ràpida davant d''un estímul. Aplicació de la força contra una resistència donada.', 0),
(174, 25, 4, 'Expressió corporal i dramatització', 'Cerca de nous moviments amb estímuls musicals, visuals... Representació mitjançant tècniques de dramatització i de mim. Construcció de moviments a partir de gestos dels altres.', 0),
(175, 25, 5, 'Realització de jocs', 'Identificació del joc com a objecte recreatiu. Construcció i modificació de diferents jocs. Organització en situacions de joc. Anàlisi de situacions de joc col·lectiu.', 0),
(176, 25, 6, 'Hàbits de salut i higiene corporal', 'Cura del propi cos i de la seva higiene. Interès en les normes d''ús del material i de les instal·lacions.', 0),
(177, 29, 0, 'MATEMÀTICA', 'Cicle Superior', 0),
(178, 29, 1, 'Nombres naturals i operacions', 'Descomposició d''un nombre en factors primers. Comprensió del concepte de nombre primer. Comprensió del valor posicional d''un nombre.\nDomini de la mecànica de les operacions. Comprensió del concepte de divisió. Domini de les taules de multiplicar', 0),
(179, 29, 2, 'Nombres fraccionaris i decimals', 'Comprensió del concepte de fracció. Comprensió del concepte d''equivalència de fraccions. Conversió de nombres fraccionaris en decimals. Càlcul de la fracció d''un nombre. Resolució d''operacions amb fraccions.', 0),
(180, 29, 3, 'Magnitud i mesura', 'Comprensió del funcionament del sistema mètric decimal. Conversió d''unitats.', 0),
(181, 29, 4, 'Geometria', 'Reconeixement de figures planes. Reconeixement i mesura d''angles. Càlcul de perímetres. Utilització dels estris de geometria: compàs, escaire... Precisió en l''execució dels exercicis geomètrics.', 0),
(182, 29, 5, 'Estadística', 'Comprensió de la funcionalitat de l''estadística. Reconeixement, elaboració i interpretació dels diferents models de representació de dades.', 0),
(183, 29, 6, 'Resolució de problemes', 'Resolució mental d''operacions i problemes. Comprovació lògica dels resultats obtinguts. Utilització de les operacions a l''hora de resoldre problemes.', 0),
(184, 20, 0, 'MATEMÀTICA', 'Cicle Superior', 0),
(185, 20, 1, 'Nombres naturals i operacions', 'Descomposició d''un nombre en factors primers. Comprensió del concepte de nombre primer. Comprensió del valor posicional d''un nombre.\nDomini de la mecànica de les operacions. Comprensió del concepte de divisió. Domini de les taules de multiplicar', 0),
(186, 20, 2, 'Nombres fraccionaris i decimals', 'Comprensió del concepte de fracció. Comprensió del concepte d''equivalència de fraccions. Conversió de nombres fraccionaris en decimals. Càlcul de la fracció d''un nombre. Resolució d''operacions amb fraccions.', 0),
(187, 20, 3, 'Magnitud i mesura', 'Comprensió del funcionament del sistema mètric decimal. Conversió d''unitats.', 0),
(188, 20, 4, 'Geometria', 'Reconeixement de figures planes. Reconeixement i mesura d''angles. Càlcul de perímetres. Utilització dels estris de geometria: compàs, escaire... Precisió en l''execució dels exercicis geomètrics.', 0),
(189, 20, 5, 'Estadística', 'Comprensió de la funcionalitat de l''estadística. Reconeixement, elaboració i interpretació dels diferents models de representació de dades.', 0),
(190, 20, 6, 'Resolució de problemes', 'Resolució mental d''operacions i problemes. Comprovació lògica dels resultats obtinguts. Utilització de les operacions a l''hora de resoldre problemes.', 0),
(191, 33, 0, 'EDUCACIÓ MUSICAL', 'Cicle Superior', 0),
(192, 33, 1, 'Cançó i veu', 'Memorització de la lletra de les cançons. Afinació de la melodia.', 0),
(193, 33, 2, 'Música, moviment i dansa', 'Precisió i adequació del moviment a la música. Expressivitat a través del moviment corporal (individualment i col·lectiva). Realització dels diferents passos i coreografies treballades.', 0),
(194, 33, 3, 'Lectura i escriptura', 'Diferenciació de notes i ritmes treballats. Interpretació rítmica i melòdica.', 0),
(195, 33, 4, 'Instrumentació', 'Capacitat individual i en grup de seguir les pautes de la mestra, respectant el treball de grup i amb un control personal davant dels instruments.\nCura dels instruments.', 0),
(196, 33, 5, 'Audició', 'Discriminació gràfica i auditiva d''una melodia, uns instruments determinats, un conjunt instrumental... Anàlisi d''una melodia. Capacitat d''atenció i concentració.', 0),
(197, 33, 6, 'Expressivitat i creativitat', 'Capacitat de comunicació a través de la música de forma expressiva i creativa.', 0),
(198, 24, 0, 'EDUCACIÓ MUSICAL', 'Cicle Superior', 0),
(199, 24, 1, 'Cançó i veu', 'Memorització de la lletra de les cançons. Afinació de la melodia.', 0),
(200, 24, 2, 'Música, moviment i dansa', 'Precisió i adequació del moviment a la música. Expressivitat a través del moviment corporal (individualment i col·lectiva). Realització dels diferents passos i coreografies treballades.', 0),
(201, 24, 3, 'Lectura i escriptura', 'Diferenciació de notes i ritmes treballats. Interpretació rítmica i melòdica.', 0),
(202, 24, 4, 'Instrumentació', 'Capacitat individual i en grup de seguir les pautes de la mestra, respectant el treball de grup i amb un control personal davant dels instruments.\nCura dels instruments.\nInterpretació i treball amb la flauta de bec.', 0),
(203, 24, 5, 'Audició', 'Discriminació gràfica i auditiva d''una melodia, uns instruments determinats, un conjunt instrumental... Anàlisi d''una melodia. Capacitat d''atenció i concentració.', 0),
(204, 24, 6, 'Expressivitat i creativitat', 'Capacitat de comunicació a través de la música de forma expressiva i creativa.', 0),
(205, 30, 0, 'CONEIXEMENT DE L''ENTORN NATURAL', 'Cicle Superior', 0),
(206, 30, 1, 'Recollida d''informació', 'Obtenció d''informació a partir d''una explicació, d''un text escrit i de mitjans audiovisuals.', 0),
(207, 30, 2, 'Processament de la informació', 'Organització de les informacions obtingudes. Capacitat per sintetitzar les informacions. Capacitat d''observació sistemàtica. Manipulació de materials. Registre de dades experimentals.', 0),
(208, 30, 3, 'Expressió de la informació', 'Expressió, per escrit, del resultat del treball. Organització del temps disponible per a fer un treball. Construcció de resums, esquemes, gràfics, quadres... Capacitat per a treure conclusions de les observacions. Presentació dels treballs de forma adequada.', 0),
(209, 30, 4, 'Treball en grup', 'Capacitat per organitzar-se i treballar dins del grup. Capacitat per assimilar els continguts treballats en grup: mural, conferència...', 0),
(210, 30, 5, 'Relació amb l''entorn', 'Interès pel bon ús de l''entorn natural.', 0),
(211, 21, 0, 'CONEIXEMENT DE L''ENTORN NATURAL', 'Cicle Superior', 0),
(212, 21, 1, 'Recollida d''informació', 'Obtenció d''informació a partir d''una explicació, d''un text escrit i de mitjans audiovisuals.', 0),
(213, 21, 2, 'Processament de la informació', 'Organització de les informacions obtingudes. Capacitat per sintetitzar les informacions. Capacitat d''observació sistemàtica. Manipulació de materials. Registre de dades experimentals.', 0),
(214, 21, 3, 'Expressió de la informació', 'Expressió, per escrit, del resultat del treball. Organització del temps disponible per a fer un treball. Construcció de resums, esquemes, gràfics, quadres... Capacitat per a treure conclusions de les observacions. Presentació dels treballs de forma adequada.', 0),
(215, 21, 4, 'Treball en grup', 'Capacitat per organitzar-se i treballar dins del grup. Capacitat per assimilar els continguts treballats en grup: mural, conferència...', 0),
(216, 21, 5, 'Relació amb l''entorn', 'Interès pel bon ús de l''entorn natural.', 0),
(217, 31, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL', 'Cicle Superior', 0),
(218, 31, 1, 'Recollida d''informació', 'Obtenció d''informació a partir d''una explicació, d''un text escrit i de mitjans audiovisuals.', 0),
(219, 31, 2, 'Processament de la informació', 'Organització de les informacions obtingudes. Capacitat per sintetitzar les informacions. Ús i interpretació de mapes.', 0),
(220, 31, 3, 'Expressió de la informació', 'Expressió, per escrit, del resultat del treball. Organització del temps disponible per a fer un treball. Construcció de resums, esquemes, gràfics, quadres... Retolació de mapes. Presentació dels treballs de forma adequada.', 0),
(221, 31, 4, 'Treball en grup', 'Capacitat per organitzar-se i treballar dins del grup. Capacitat per assimilar els continguts treballats en grup: mural, conferència... ', 0),
(222, 31, 5, 'Relació amb l''entorn', 'Interès per la realitat social que l''envolta.', 0),
(223, 22, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL', 'Cicle Superior', 0),
(224, 22, 1, 'Recollida d''informació', 'Obtenció d''informació a partir d''una explicació, d''un text escrit i de mitjans audiovisuals.', 0),
(225, 22, 2, 'Processament de la informació', 'Organització de les informacions obtingudes. Capacitat per sintetitzar les informacions. Ús i interpretació de mapes.', 0),
(226, 22, 3, 'Expressió de la informació', 'Expressió, per escrit, del resultat del treball. Organització del temps disponible per a fer un treball. Construcció de resums, esquemes, gràfics, quadres... Retolació de mapes. Presentació dels treballs de forma adequada.', 0),
(227, 22, 4, 'Treball en grup', 'Capacitat per organitzar-se i treballar dins del grup. Capacitat per assimilar els continguts treballats en grup: mural, conferència... ', 0),
(228, 22, 5, 'Relació amb l''entorn', 'Interès per la realitat social que l''envolta.', 0),
(229, 32, 0, 'EDUCACIÓ VISUAL I PLÀSTICA', 'Cicle Superior', 0),
(230, 32, 1, 'Observació', 'Capacitat d''observació directa d''elements visuals(forma, mesura, color, textura) i d''elements plàstics (mesura, proporció, equilibri, ritme, simetria). Reproducció d''elements observats de forma directa o de memòria.', 0),
(231, 32, 2, 'Experimentació', 'Recerca de noves possibilitats en la utilització de les eines i dels materials. Sistematització de les experimentacions. Recerca de noves formes expressives', 0),
(232, 32, 3, 'Creació', 'Realisme. Creativitat.\nAplicació de les experimentacions i de les tècniques treballades. Utilització de noves tecnologies.\nCapacitat de comunicació.', 0),
(233, 32, 4, 'Reflexió / Diàleg', 'Anàlisi d''imatges pròpies i dels altres: elements visuals i plàstics, intencionalitat. Comentari d''obres d''art.', 0),
(234, 32, 5, 'Tècniques', 'Utilització adequada de tècniques i d''estris. Control del gest gràfic. Adequació a l''espai fixat. Presentació acurada.', 0),
(235, 23, 0, 'EDUCACIÓ VISUAL I PLÀSTICA', 'Cicle Superior', 0),
(236, 23, 1, 'Observació', 'Capacitat d''observació directa d''elements visuals(forma, mesura, color, textura) i d''elements plàstics (mesura, proporció, equilibri, ritme, simetria). Reproducció d''elements observats de forma directa o de memòria.', 0),
(237, 23, 2, 'Experimentació', 'Recerca de noves possibilitats en la utilització de les eines i dels materials. Sistematització de les experimentacions. Recerca de noves formes expressives', 0),
(238, 23, 3, 'Creació', 'Realisme. Creativitat.\nAplicació de les experimentacions i de les tècniques treballades. Utilització de noves tecnologies.\nCapacitat de comunicació.', 0),
(239, 23, 4, 'Reflexió / Diàleg', 'Anàlisi d''imatges pròpies i dels altres: elements visuals i plàstics, intencionalitat. Comentari d''obres d''art.', 0),
(240, 23, 5, 'Tècniques', 'Utilització adequada de tècniques i d''estris. Control del gest gràfic. Adequació a l''espai fixat. Presentació acurada.', 0),
(241, 45, 0, 'LLENGUA ANGLESA', 'Cicle Inicial', 0),
(242, 45, 1, 'Llengua oral / Comprensió', 'Comprensió i capacitat de resposta  a les instruccions de treball de l''aula.\r\nComprensió i capacitat de resposta als missatges d''intercanvi social.\r\nComprensió global de narracions i descripcions curtes i de situacions pròximes (amb el suport de mitjans diversos i d''estímuls no lingüístics).\r\nComprensió del lèxic bàsic i d''expressions específiques.\r\nConeixement dels aspectes culturals i costums dels països on es parla la llengua.', 0),
(243, 45, 2, 'Llengua oral / Expressió', 'Reproducció de sons, ritmes i entonacions (cançons, poemes, dramatitzacions...).\nUtilització del lèxic i de les expressions senzilles apreses, en contextos significatius.\nMemorització del lèxic treballat. \nDisposició per expressar-se en aquesta llengua.', 0),
(244, 37, 0, 'LLENGUA ANGLESA', 'Cicle Inicial', 0),
(245, 37, 1, 'Llengua oral / Comprensió', 'Comprensió i capacitat de resposta  a les instruccions de treball de l''aula.\r\nComprensió i capacitat de resposta als missatges d''intercanvi social.\r\nComprensió global de narracions i descripcions curtes i de situacions pròximes (amb el suport de mitjans diversos i d''estímuls no lingüístics).\r\nComprensió del lèxic bàsic i d''expressions específiques.\r\nConeixement dels aspectes culturals i costums dels països on es parla la llengua.', 0),
(246, 37, 2, 'Llengua oral / Expressió', 'Reproducció de sons, ritmes i entonacions (cançons, poemes, dramatitzacions...).\nUtilització del lèxic i de les expressions senzilles apreses, en contextos significatius.\nMemorització del lèxic treballat. \nDisposició per expressar-se en aquesta llengua.', 0),
(247, 37, 3, 'Llengua escrita / Comprensió', 'Identificació de la forma escrita de paraules i d''expressions orals, d''ús habitual a l''aula.', 0),
(248, 37, 4, 'Llengua escrita / Expressió', 'Escriptura de paraules i d''expressions senzilles a partir de models.', 0),
(249, 43, 0, 'LLENGUA CATALANA', 'Cicle Inicial', 0),
(250, 43, 1, 'Llengua oral / Comprensió', 'Comprensió d''ordres o missatges de complexitat diversa. Audició atenta en les explicacions.', 0),
(251, 43, 2, 'Llengua oral / Expressió', 'Hàbits de comunicació i conversa: to de veu, torn de paraula, escoltar, saber esperar, ser capaç de mantenir una conversa coherent, formules de salutació i comiat.', 0),
(252, 43, 3, 'Llengua escrita. Comprensió', 'Comprensió de missatges, frases o ordres. Reconeixement de la idea global d''un text.', 0),
(253, 43, 4, 'Llengua escrita / Lectura', 'Coneixement del mecanisme de la lectura. Identificar les grafies amb el so corresponent. Adquisició progressiva de seguretat i fluïdesa en la lectura.', 0),
(254, 43, 5, 'Llengua escrita / Expressió', 'Elaboració de textos amb frases coherents i ben estructurades. Espontaneïtat i creativitat.', 0),
(255, 43, 6, 'Treball sistemàtic / Fonètica - ortografia', 'Aplicació de la correspondència so-grafia. Treball específic de l''ortografia natural: assegurar la correspondència so-grafia i la separació de paraules.', 0),
(256, 43, 7, 'Treball sistemàtic / Lèxic', 'Coneixement i utilització del vocabulari d''ús. Memorització de frases fetes i locucions (maneres de dir).', 0),
(257, 43, 8, 'Treball sistemàtic / Gramàtica', 'Utilització de diferents frases simples amb l''entonació i la puntuació adequades. Utilització adequada  dels temps verbals.', 0),
(258, 43, 9, 'Grafisme', 'Domini del traç. Escriptura correcta de les grafies.', 0),
(259, 35, 0, 'LLENGUA CATALANA', 'Cicle Inicial', 0),
(260, 35, 1, 'Llengua oral / Comprensió', 'Comprensió d''ordres o missatges de complexitat diversa. Audició atenta en les explicacions.', 0),
(261, 35, 2, 'Llengua oral / Expressió', 'Hàbits de comunicació i conversa: to de veu, torn de paraula, escoltar, saber esperar, ser capaç de mantenir una conversa coherent, formules de salutació i comiat.', 0),
(262, 35, 3, 'Llengua escrita. Comprensió', 'Comprensió de missatges, frases o ordres. Reconeixement de la idea global d''un text.', 0),
(263, 35, 4, 'Llengua escrita / Lectura', 'Coneixement del mecanisme de la lectura. Identificar les grafies amb el so corresponent. Adquisició progressiva de seguretat i fluïdesa en la lectura.', 0),
(264, 35, 5, 'Llengua escrita / Expressió', 'Elaboració de textos amb frases coherents i ben estructurades. Espontaneïtat i creativitat. Treball del text escrit. Tipologia del text: nota, carta, narració.', 0),
(329, 53, 0, 'LLENGUA CASTELLANA', 'Cicle Inicial', 0),
(265, 35, 6, 'Treball sistemàtic / Fonètica - ortografia', 'Aplicació de la correspondència so-grafia. Treball específic de l''ortografia natural: assegurar la correspondència so-grafia i la separació de paraules. Inici en l''ús de les normes ortogràfiques: majúscules, plurals amb -es, dígrafs, rr, ss, qu, gu, ny, ll.', 0),
(266, 35, 7, 'Treball sistemàtic / Lèxic', 'Coneixement i utilització del vocabulari d''ús. Memorització de frases fetes i locucions (maneres de dir).', 0),
(267, 35, 8, 'Treball sistemàtic / Gramàtica', 'Utilització de diferents frases simples amb l''entonació i la puntuació adequades. Utilització adequada  dels temps verbals.', 0),
(268, 35, 9, 'Grafisme', 'Domini del traç. Escriptura correcta de les grafies.', 0),
(269, 50, 0, 'EDUCACIÓ FÍSICA', 'Cicle Inicial', 0),
(270, 50, 1, 'Control i consciència corporal', 'Coneixement del propi cos i la seva lateralitat. Nocions d''organització espacial: entre el propi cos, els objectes i l''espai exterior.', 0),
(271, 50, 2, 'Execució d''habilitats coordinatives', 'Pràctica de les habilitats motrius bàsiques: desplaçaments, equilibris,salts, girs... Execució de diverses coordinacions del cos amb objectes, i amb l''entorn.', 0),
(272, 50, 3, 'Expressió corporal i dramatització', 'Experimentació de la creativitat motriu a través d''imitacions i de gestos.', 0),
(273, 50, 4, 'Realització de jocs', 'Realització de jocs tradicionals, simbòlics, sensorials... Respecte per les normes.', 0),
(274, 50, 5, 'Hàbits de salut i higiene corporal', 'Cura del propi cos, del material i de les instal·lacions. Hàbits d''higiene: roba de recanvi...', 0),
(275, 42, 0, 'EDUCACIÓ FÍSICA', 'Cicle Inicial', 0),
(276, 42, 1, 'Control i consciència corporal', 'Coneixement del propi cos i la seva lateralitat. Nocions d''organització espacial: entre el propi cos, els objectes i l''espai exterior.', 0),
(277, 42, 2, 'Execució d''habilitats coordinatives', 'Pràctica de les habilitats motrius bàsiques: desplaçaments, equilibris,salts, girs... Execució de diverses coordinacions del cos amb objectes, i amb l''entorn.', 0),
(278, 42, 3, 'Expressió corporal i dramatització', 'Experimentació de la creativitat motriu a través d''imitacions i de gestos.', 0),
(279, 42, 4, 'Realització de jocs', 'Realització de jocs tradicionals, simbòlics, sensorials... Respecte per les normes.', 0),
(280, 42, 5, 'Hàbits de salut i higiene corporal', 'Cura del propi cos, del material i de les instal·lacions. Hàbits d''higiene: roba de recanvi...', 0),
(281, 46, 0, 'MATEMÀTICA', 'Cicle Inicial', 0),
(282, 46, 1, 'Nombres i operacions', 'Comprensió i ús de la sèrie numèrica.\r\nConcepte d''unitat i desena.\r\nDescomposició de nombres.\r\nDomini del mecanisme de les operacions treballades (suma i resta).\r\nCàlcul mental.', 0),
(283, 46, 2, 'Magnitud i mesura', 'Coneixement de les unitats de mesura: temps (dies de la setmana i mesos de l''any), longitud (unitats naturals del cos: pams i peus).', 0),
(284, 46, 3, 'Geometria', 'Reconeixement de figures i de cossos geomètrics. Nocions bàsiques de geometria plana: línia i superfície.\nOrientació espacial.', 0),
(285, 46, 4, 'Estadística i probabilitat', 'Recollida de dades a partir de situacions reals. Quantificació, classificació i ordenació de dades i resultats.\nAnticipació i comparació de resultats.', 0),
(286, 46, 5, 'Resolució de problemes', 'Interpretació de l''enunciat dels problemes.\nResolució de problemes aritmètics amb les operacions adients.', 0),
(287, 38, 0, 'MATEMÀTICA', 'Cicle Inicial', 0),
(288, 38, 1, 'Nombres i operacions', 'Comprensió i ús de la sèrie numèrica.\r\nConcepte d''unitat, desena i centena.\r\nDescomposició de nombres.\r\nDomini del mecanisme de les operacions treballades (suma i resta).\r\nCàlcul mental.', 0),
(289, 38, 2, 'Magnitud i mesura', 'Coneixement de les unitats de mesura: temps (dies de la setmana i mesos de l''any), longitud (unitats naturals del cos: pams i peus).\nConeixement de les unitats convencionals de longitud, massa i temps.', 0),
(290, 38, 3, 'Geometria', 'Reconeixement de figures i de cossos geomètrics. Nocions bàsiques de geometria plana: línia i superfície.\nOrientació espacial.', 0);
INSERT INTO `plantilles` (`id`, `area`, `ordre`, `titol`, `text`, `buit`) VALUES
(291, 38, 4, 'Estadística i probabilitat', 'Recollida de dades a partir de situacions reals. Quantificació, classificació i ordenació de dades i resultats.\nAnticipació i comparació de resultats.', 0),
(292, 38, 5, 'Resolució de problemes', 'Interpretació de l''enunciat dels problemes.\nResolució de problemes aritmètics amb les operacions adients.', 0),
(293, 49, 0, 'EDUCACIÓ MUSICAL', 'Cicle Inicial', 0),
(294, 49, 1, 'Cançó i veu', 'Memorització de la lletra de les cançons. Afinació de la melodia.', 0),
(295, 49, 2, 'Música, moviment i dansa', 'Precisió i adequació del moviment a la música. Realització dels diferents passos treballats. Memorització de la coreografia.', 0),
(296, 49, 3, 'Lectura i escriptura', 'Interiorització de la pulsació. Reconeixement de les notes i ritmes treballats.', 0),
(297, 49, 4, 'Audició', 'Diferenciació d''una melodia, un instrument determinat, o una qualitat del so.\nCapacitat d''atenció i concentració.', 0),
(298, 49, 5, 'Expressivitat i creativitat', 'Capacitat de comunicació a través de la música de forma expressiva i creativa.', 0),
(299, 41, 0, 'EDUCACIÓ MUSICAL', 'Cicle Inicial', 0),
(300, 41, 1, 'Cançó i veu', 'Memorització de la lletra de les cançons. Afinació de la melodia.', 0),
(301, 41, 2, 'Música, moviment i dansa', 'Precisió i adequació del moviment a la música. Realització dels diferents passos treballats. Memorització de la coreografia.', 0),
(302, 41, 3, 'Lectura i escriptura', 'Interiorització de la pulsació. Reconeixement de les notes i ritmes treballats.', 0),
(303, 41, 4, 'Audició', 'Diferenciació d''una melodia, un instrument determinat, o una qualitat del so.\nCapacitat d''atenció i concentració.', 0),
(304, 41, 5, 'Expressivitat i creativitat', 'Capacitat de comunicació a través de la música de forma expressiva i creativa.', 0),
(305, 47, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 'Cicle Inicial', 0),
(306, 47, 1, 'Recollida d''informació', 'Obtenció de la informació mitjançant l''observació i l''experimentació amb diferents recursos com: la imatge, el text...', 0),
(307, 47, 2, 'Processament de la informació', 'Capacitat de relacionar la nova informació amb la que ja coneix.\nOrganització i categorització de la informació treballada.', 0),
(308, 47, 3, 'Expressió de la informació', 'Capacitat d''explicar el que ha aprés del tema, utilitzant el vocabulari específic.', 0),
(309, 47, 4, 'Treball en grup', 'Capacitat de treballar en grup: organització, participació i presa de decisions.', 0),
(310, 47, 5, 'Relació amb l''entorn', 'Interès per la realitat natural i social que l''envolta.', 0),
(311, 39, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 'Cicle Inicial', 0),
(312, 39, 1, 'Recollida d''informació', 'Obtenció de la informació mitjançant l''observació i l''experimentació amb diferents recursos com: la imatge, el text...', 0),
(313, 39, 2, 'Processament de la informació', 'Capacitat de relacionar la nova informació amb la que ja coneix.\nOrganització i categorització de la informació treballada.', 0),
(314, 39, 3, 'Expressió de la informació', 'Capacitat d''explicar el que ha aprés del tema, utilitzant el vocabulari específic.', 0),
(315, 39, 4, 'Treball en grup', 'Capacitat de treballar en grup: organització, participació i presa de decisions.', 0),
(316, 39, 5, 'Relació amb l''entorn', 'Interès per la realitat natural i social que l''envolta.', 0),
(317, 48, 0, 'EDUCACIÓ VISUAL I PLÀSTICA', 'Cicle Inicial', 0),
(318, 48, 1, 'Observació', 'Capacitat d''observació de l''entorn a través dels sentits i dels elements que caracteritzen un objecte: forma, color, textura i mida.\r\nReproducció d''allò que s''ha observat.', 0),
(319, 48, 2, 'Experimentació', 'Experimentació amb tècniques plàstiques bàsiques: dibuix, pintura, modelatge...', 0),
(320, 48, 3, 'Creació', 'Originalitat i creativitat en les produccions plàstiques.\nCapacitat per expressar-se plàsticament.', 0),
(321, 48, 4, 'Reflexió i diàleg', 'Reflexió crítica respecte les pròpies produccions i les dels altres.', 0),
(322, 48, 5, 'Tècniques', 'Aplicació de les diferents tècniques treballades.\nUtilització del material i dels estris adequats a cada tècnica: dibuix, pintura, modelatge, col·lage, construccions en l''espai.\nControl del gest gràfic.\nPresentació acurada.', 0),
(323, 40, 0, 'EDUCACIÓ VISUAL I PLÀSTICA', 'Cicle Inicial', 0),
(324, 40, 1, 'Observació', 'Capacitat d''observació de l''entorn a través dels sentits i dels elements que caracteritzen un objecte: forma, color, textura i mida.\r\nReproducció d''allò que s''ha observat.', 0),
(325, 40, 2, 'Experimentació', 'Experimentació amb tècniques plàstiques bàsiques: dibuix, pintura, modelatge...', 0),
(326, 40, 3, 'Creació', 'Originalitat i creativitat en les produccions plàstiques.\nCapacitat per expressar-se plàsticament.', 0),
(327, 40, 4, 'Reflexió i diàleg', 'Reflexió crítica respecte les pròpies produccions i les dels altres.', 0),
(328, 40, 5, 'Tècniques', 'Aplicació de les diferents tècniques treballades.\nUtilització del material i dels estris adequats a cada tècnica: dibuix, pintura, modelatge, col·lage, construccions en l''espai.\nControl del gest gràfic.\nPresentació acurada.', 0),
(330, 53, 1, 'Llengua oral / Comprensió', 'Comprensió de relats, explicacions i argumentacions.', 0),
(331, 53, 2, 'Llengua oral / Expressió', 'Capacitat per fer-se entendre en diferents missatges orals. Dicció i entonació de la llengua.', 0),
(333, 53, 3, 'Treball sistemàtic / Fonètica - ortografia', 'Identificació i articulació de sons propis del castellà (j, g, z, c ). Escriptura de les grafies (ñ, y, ch).', 0),
(334, 53, 4, 'Treball sistemàtic / Lèxic', 'Ampliació de vocabulari i precisió en el seu ús. Ús de frases fetes i locucions (maneres de dir).', 0),
(335, 54, 0, 'LLENGUA CASTELLANA', 'Cicle Inicial', 0),
(336, 54, 1, 'Llengua oral / Comprensió', 'Comprensió de relats, explicacions i argumentacions.', 0),
(337, 54, 2, 'Llengua oral / Expressió', 'Capacitat per fer-se entendre en diferents missatges orals. Dicció i entonació de la llengua.', 0),
(338, 54, 3, 'Llengua escrita / Comprensió', 'Comprensió de diferents tipus de textos: contes, cançons, endevinalles, refranys.', 0),
(339, 54, 4, 'Treball sistemàtic / Fonètica - ortografia', 'Identificació i articulació de sons propis del castellà (j, g, z, c ). Escriptura de les grafies (ñ, y, ch).', 0),
(340, 54, 5, 'Treball sistemàtic / Lèxic', 'Ampliació de vocabulari i precisió en el seu ús. Ús de frases fetes i locucions (maneres de dir).', 0),
(341, 54, 6, 'Treball sistemàtic / Gramàtica', 'Concordança de gènere, nombre i persona.', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
