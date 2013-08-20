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
(4, 'MATEM�TICA', 3, 7),
(5, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 3, 8),
(6, 'EDUCACI� VISUAL I PL�STICA', 3, 9),
(7, 'EDUCACI� MUSICAL', 3, 10),
(8, 'EDUCACI� F�SICA', 3, 11),
(9, 'LLENGUA CATALANA', 4, 4),
(10, 'LLENGUA CASTELLANA', 4, 5),
(11, 'LLENGUA ANGLESA', 4, 6),
(12, 'MATEM�TICA', 4, 7),
(13, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 4, 8),
(14, 'EDUCACI� VISUAL I PL�STICA', 4, 9),
(15, 'EDUCACI� MUSICAL', 4, 10),
(16, 'EDUCACI� F�SICA', 4, 11),
(17, 'LLENGUA CATALANA', 6, 4),
(18, 'LLENGUA CASTELLANA', 6, 5),
(19, 'LLENGUA ANGLESA', 6, 6),
(20, 'MATEM�TICA', 6, 7),
(21, 'CONEIXEMENT DE L''ENTORN NATURAL', 6, 8),
(22, 'CONEIXEMENT DE L''ENTORN SOCIAL', 6, 8),
(23, 'EDUCACI� VISUAL I PL�STICA', 6, 9),
(24, 'EDUCACI� MUSICAL', 6, 10),
(25, 'EDUCACI� F�SICA', 6, 11),
(26, 'LLENGUA CATALANA', 5, 4),
(27, 'LLENGUA CASTELLANA', 5, 5),
(28, 'LLENGUA ANGLESA', 5, 6),
(29, 'MATEM�TICA', 5, 7),
(30, 'CONEIXEMENT DE L''ENTORN NATURAL', 5, 8),
(31, 'CONEIXEMENT DE L''ENTORN SOCIAL', 5, 8),
(32, 'EDUCACI� VISUAL I PL�STICA', 5, 9),
(33, 'EDUCACI� MUSICAL', 5, 10),
(34, 'EDUCACI� F�SICA', 5, 11),
(35, 'LLENGUA CATALANA', 2, 4),
(37, 'LLENGUA ANGLESA', 2, 6),
(38, 'MATEM�TICA', 2, 7),
(39, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 2, 8),
(40, 'EDUCACI� VISUAL I PL�STICA', 2, 9),
(41, 'EDUCACI� MUSICAL', 2, 10),
(42, 'EDUCACI� F�SICA', 2, 11),
(43, 'LLENGUA CATALANA', 1, 4),
(45, 'LLENGUA ANGLESA', 1, 6),
(46, 'MATEM�TICA', 1, 7),
(47, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 1, 8),
(48, 'EDUCACI� VISUAL I PL�STICA', 1, 9),
(49, 'EDUCACI� MUSICAL', 1, 10),
(50, 'EDUCACI� F�SICA', 1, 11),
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
(1, 16, 0, 'EDUCACI� F�SICA', 'Cicle Mitj�', 0),
(2, 16, 1, 'Control i consci�ncia corporal', 'Control muscular i de la respiraci�. Orientaci� en espai i en el temps referida a altres persones i a objectes. Coordinaci� de moviments amb estructures r�tmiques.', 0),
(3, 16, 2, 'Execuci� d''habilitats coordinatives', 'Domini de les habilitats motrius b�siques: despla�aments, salts, girs, equilibris, llan�aments i recepcions. Execuci� d''habilitats motrius espec�fiques en esports individuals i d''equip.', 0),
(4, 16, 3, 'Utilitzaci� de les capacitats condicionals', 'Execuci� de moviments diversos amb el m�xim nombre d''articulacions. Realitzaci� de curses llargues amb ritme constant. Realitzaci� de moviments que afavoreixen la flexibilitat.', 0),
(5, 16, 4, 'Expressi� corporal i dramatitzaci�', 'Descobriment de recursos expressius del cos.', 0),
(6, 16, 5, 'Realitzaci� de jocs', 'Realitzaci� de jocs espontanis, reglats, tant col�lectius com individuals. Respecte per les normes.', 0),
(7, 16, 6, 'H�bits de salut i higiene corporal', 'Cura del propi cos, del material i de les instal�lacions. H�bits d''higiene: dutxa, roba de recanvi...', 0),
(8, 10, 0, 'LLENGUA CASTELLANA', 'Cicle Mitj�', 0),
(9, 10, 1, 'Llengua oral. Comprensi�', 'Comprensi� de relats, explicacions i argumentacions.', 0),
(10, 10, 2, 'Llengua oral. Expressi�', 'Precisi� i ampliaci� del vocabulari. Capacitat per fer-se entendre en diferents missatges orals. Dicci� i entonaci� de la llengua. Articulaci� dels sons propis de la llengua.', 0),
(11, 10, 3, 'Llengua escrita. Comprensi�', 'Comprensi� de diferents tipus de textos: narracions, contes, textos instructius, not�cies, ordres escrites. ', 0),
(13, 10, 4, 'Llengua escrita. Expressi�', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coher�ncia i la creativitat. Elaboraci� de textos de tipologia diversa.', 1),
(14, 10, 6, 'Treball sistem�tic. L�xic', 'Ampliaci� de vocabulari i precisi� en el seu �s. �s de frases fetes i locucions (maneres de dir).', 0),
(15, 10, 5, 'Treball sistem�tic. Fon�tica - ortografia', 'Correspond�ncia so-grafia. Discriminaci� i producci� dels sons distintius del castell�. Aplicaci� i memoritzaci� de les normes ( j, g, z, c �, ll, i terminacions aba...).', 0),
(16, 10, 7, 'Treball sistem�tic. Gram�tica', 'Identificaci� de nom, adjectiu i verb. Concordan�a de g�nere, nombre i persona.', 0),
(17, 9, 0, 'LLENGUA CATALANA', 'Cicle Mitj�', 0),
(18, 9, 1, 'Llengua oral / Comprensi�', 'Comprensi� de relats, explicacions i argumentacions. Audici� atenta en les explicacions.', 0),
(19, 9, 2, 'Llengua oral / Expressi�', 'Expressi� correcta i coherent en diferents situacions comunicatives. Situacions col�loquials i formals. H�bits de conversa: escoltar, demanar paraula, saber esperar, to de veu.', 0),
(20, 9, 3, 'Llengua escrita. Comprensi�', 'Comprensi� de diferents tipus de textos: narracions, contes, textos instructius, not�cies, ordres escrites. Distinci� entre la idea principal i les idees secund�ries.', 0),
(21, 9, 4, 'Llengua escrita / Lectura', '�s del mecanisme de la lectura: rapidesa, expressi�, entonaci� i puntuaci�.', 0),
(22, 9, 5, 'Llengua escrita / Expressi�', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coher�ncia i la creativitat. Elaboraci� de textos de tipologia diversa.', 0),
(23, 9, 7, 'Treball sistem�tic / L�xic', 'Coneixement de l''abecedari. �s del diccionari. Ampliaci� del vocabulari.', 0),
(24, 9, 6, 'Treball sistem�tic / Fon�tica - ortografia', 'Aplicaci� i memoritzaci� de les normes treballades a classe: plurals, ap�strof, d�grafs. Separaci� de s�l�labes i diferenciaci� entre t�niques i �tones.', 0),
(25, 9, 8, 'Treball sistem�tic / Gram�tica', 'Inici en l''�s de la puntuaci�. Distinci� d''algunes de les categories gramaticals: determinant, nom, verb, adjectiu i la seva concordan�a.', 0),
(26, 12, 0, 'MATEM�TICA', 'Cicle Mitj�', 0),
(27, 12, 1, 'Nombres i operacions', 'Comprensi� i �s del mecanisme de la s�rie num�rica.\nRapidesa en el c�lcul mental.\nDomini de les operacions treballades:\nSumar, restar, multiplicar, dividir i inici de fraccions\nMemoritzaci� de la taula de multiplicar.', 0),
(28, 12, 2, 'Geometria', 'Reconeixement i classificaci� de figures planes i cossos geom�trics. Reconeixement d''aresta, v�rtex, angle i costat en diferents pol�gons i poliedres.\nReconeixement de la simetria de figures i cossos. Utilitzaci� del regle i l''escaire\nC�lcul del per�metre de diferents pol�gons', 0),
(29, 12, 3, 'Magnitud i mesura', 'Utilitzaci� de les unitats m�s freq�ents de longitud, massa, temps i capacitat. Equival�ncia d''unitats. �s i interpretaci� del rellotge.', 0),
(30, 12, 4, 'Estad�stica i probabilitat', 'Representaci� i interpretaci� de dades. Coneixement de diferents tipus de gr�fics.', 0),
(31, 12, 5, 'Resoluci� de problemes', 'Comprensi� del plantejament dels problemes. Utilitzaci� de les operacions adequades per la resoluci� de problemes.', 0),
(32, 15, 0, 'EDUCACI� MUSICAL', 'Cicle Mitj�', 0),
(33, 15, 1, 'Can�� i veu', 'Memoritzaci� de la lletra de les can�ons. Afinaci� de la melodia.', 0),
(34, 15, 2, 'M�sica, moviment i dansa', 'Precisi� i adequaci� del moviment a la m�sica. Expressivitat a trav�s del moviment corporal (individualment i col�lectiva). Memoritzaci� de la coreografia.', 0),
(35, 15, 3, 'Lectura i escriptura', 'Diferenciaci� de notes i ritmes treballats. Interpretaci� r�tmica i mel�dica.', 0),
(36, 15, 4, 'Instrumentaci�', 'Capacitat individual i en grup de seguir les pautes de la mestra, respectant el treball de grup i amb un control personal davant dels instruments.\nCura dels instruments.', 0),
(37, 15, 5, 'Audici�', 'Discriminaci� gr�fica i auditiva d''una melodia, uns instruments determinats, un conjunt instrumental... Capacitat d''atenci� i concentraci�.', 0),
(38, 15, 6, 'Expressivitat i creativitat', 'Capacitat de comunicaci� a trav�s de la m�sica de forma expressiva i creativa.', 0),
(39, 13, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 'Cicle Mitj�', 0),
(40, 13, 1, 'Recollida d''informaci�', 'Obtenci� d''informaci� adequada al plantejament del tema.', 0),
(41, 13, 2, 'Processament de la informaci�', 'Capacitat de relacionar la informaci� nova amb el que ja coneix.\nCapacitat d''extraure la informaci� pertinent del material utilitzat.\nOrganitzaci� i categoritzaci� de la informaci� treballada.', 0),
(42, 13, 3, 'Expressi� de la informaci�', 'Comprensi� i memoritzaci� dels conceptes treballats.\r\nCapacitat d''expressar la informaci� de manera oral i escrita.', 0),
(43, 13, 4, 'Treball en grup', 'Capacitat d''organitzaci�, participaci� i entesa en el treball de grup. Elaboraci� del treball conjunt.', 0),
(44, 13, 5, 'Relaci� amb l''entorn', 'Inter�s per la realitat natural i social que l''envolta.', 0),
(45, 3, 0, 'LLENGUA ANGLESA', 'Cicle Mitj�', 0),
(46, 3, 1, 'Llengua oral / Comprensi�', 'Comprensi� del l�xic b�sic.\nComprensi� d''estructures treballades.\nComprensi� global de missatges en contextos significatius, amb el suport d''est�muls ling��stics i no ling��stics.', 0),
(47, 3, 2, 'Llengua oral / Expressi�', 'Discriminaci� i reproducci� dels sons voc�lics i conson�ntics b�sics.\nReproducci� de sons, ritmes i entonacions (can�ons, poemes, endevinalles, dramatitzacions...).\nComunicaci� en contextos significatius (salutacions, demandes, informacions...).', 0),
(48, 3, 3, 'Llengua escrita / Comprensi�', 'Comprensi� d''enunciats breus.\nComprensi� de textos treballats.', 0),
(49, 3, 4, 'Llengua escrita / Expressi�', 'Escriptura de frases senzilles i de petits textos a partir de models.\nUtilitzaci� del l�xic treballat.\nUtilizaci� de les categories gramaticals: determinants (articles i demostratius), formes verbals i adjectius.', 0),
(50, 14, 0, 'EDUCACI� VISUAL I PL�STICA', 'Cicle Mitj�', 0),
(51, 14, 1, 'Observaci�', 'Capacitat d''observar de forma precisa elements est�tics i canviants. Reproducci� d''elements observats, de forma directa o de mem�ria.', 0),
(52, 14, 2, 'Experimentaci�', 'Habilitat per trobar diferents possibilitats pl�stiques dels materials i de les eines a trav�s de l''experimentaci�.', 0),
(53, 14, 3, 'Creaci�', 'Originalitat i creativitat en les produccions pl�stiques. Capacitat de comunicaci�.', 0),
(54, 14, 4, 'Reflexi� i di�leg', 'Reflexi� cr�tica respecte a la pr�pia obra i a la dels altres. Acceptaci� dels suggeriments respecte al seu treball.', 0),
(55, 14, 5, 'T�cniques', 'Utilitzaci� de les t�cniques que permeten l''experimentaci� de la l�nea, la forma, el color i la creaci� de cossos est�tics i en moviment. Control del gest gr�fic. Utilitzaci� correcta de les eines. Adequaci� a l''espai fixat. Presentaci� acurada.', 0),
(56, 11, 0, 'LLENGUA ANGLESA', 'Cicle Mitj�', 0),
(57, 11, 1, 'Llengua oral / Comprensi�', 'Comprensi� del l�xic b�sic.\nComprensi� d''estructures treballades.\nComprensi� global de missatges en contextos significatius, amb el suport d''est�muls ling��stics i no ling��stics.', 0),
(58, 11, 2, 'Llengua oral / Expressi�', 'Discriminaci� i reproducci� dels sons voc�lics i conson�ntics b�sics.\nReproducci� de sons, ritmes i entonacions (can�ons, poemes, endevinalles, dramatitzacions...).\nComunicaci� en contextos significatius (salutacions, demandes, informacions...).', 0),
(59, 11, 3, 'Llengua escrita / Comprensi�', 'Comprensi� d''enunciats breus.\nComprensi� de textos treballats.', 0),
(60, 11, 4, 'Llengua escrita / Expressi�', 'Escriptura de frases senzilles i de petits textos a partir de models.\nUtilitzaci� del l�xic treballat.\nUtilizaci� de les categories gramaticals: determinants (articles i demostratius), formes verbals i adjectius.', 0),
(61, 2, 0, 'LLENGUA CASTELLANA', 'Cicle Mitj�', 0),
(62, 2, 1, 'Llengua oral / Comprensi�', 'Comprensi� de relats, explicacions i argumentacions.', 0),
(63, 2, 2, 'Llengua oral / Expressi�', 'Precisi� i ampliaci� del vocabulari. Capacitat per fer-se entendre en diferents missatges orals. Dicci� i entonaci� de la llengua. Articulaci� dels sons propis de la llengua.', 0),
(64, 2, 3, 'Llengua escrita / Comprensi�', 'Comprensi� de diferents tipus de textos: narracions, contes, textos instructius, not�cies, ordres escrites. ', 0),
(66, 2, 4, 'Llengua escrita / Expressi�', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coher�ncia i la creativitat. Elaboraci� de textos de tipologia diversa.', 1),
(67, 2, 6, 'Treball sistem�tic / L�xic', 'Ampliaci� de vocabulari i precisi� en el seu �s. �s de frases fetes i locucions (maneres de dir).', 0),
(68, 2, 5, 'Treball sistem�tic / Fon�tica - ortografia', 'Correspond�ncia so-grafia. Discriminaci� i producci� dels sons distintius del castell�. Aplicaci� i memoritzaci� de normes ortogr�fiques (j, g, z, c �, ll, i terminacions en aba...).', 0),
(69, 2, 7, 'Treball sistem�tic / Gram�tica', 'Identificaci� de nom, adjectiu i verb. Concordan�a de g�nere, nombre i persona.', 0),
(70, 1, 0, 'LLENGUA CATALANA', 'Cicle Mitj�', 0),
(71, 1, 1, 'Llengua oral / Comprensi�', 'Comprensi� de relats, explicacions i argumentacions. Audici� atenta en les explicacions.', 0),
(72, 1, 2, 'Llengua oral / Expressi�', 'Expressi� correcta i coherent en diferents situacions comunicatives. Situacions col�loquials i formals. H�bits de conversa: escoltar, demanar paraula, saber esperar, to de veu.', 0),
(73, 1, 3, 'Llengua escrita. Comprensi�', 'Comprensi� de diferents tipus de textos: narracions, contes, textos instructius, not�cies, ordres escrites. Distinci� entre la idea principal i les idees secund�ries.', 0),
(74, 1, 4, 'Llengua escrita / Lectura', '�s del mecanisme de la lectura: rapidesa, expressi�, entonaci� i puntuaci�.', 0),
(75, 1, 5, 'Llengua escrita / Expressi�', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coher�ncia i la creativitat. Elaboraci� de textos de tipologia diversa.', 0),
(76, 1, 7, 'Treball sistem�tic / L�xic', 'Coneixement de l''abecedari. Ampliaci� del vocabulari.', 0),
(77, 1, 6, 'Treball sistem�tic / Fon�tica - ortografia', 'Aplicaci� i memoritzaci� de les normes treballades a classe: plurals, ap�strof, d�grafs (que, qui, gue, gui, ig, ix, ss, rr...).', 0),
(78, 1, 8, 'Treball sistem�tic / Gram�tica', 'Inici en l''�s de la puntuaci�. Distinci� d''algunes de les categories gramaticals: determinant, nom, verb, adjectiu i la seva concordan�a.', 0),
(79, 8, 0, 'EDUCACI� F�SICA', 'Cicle Mitj�', 0),
(80, 8, 1, 'Control i consci�ncia corporal', 'Control muscular i de la respiraci�. Orientaci� en espai i en el temps referida a altres persones i a objectes. Coordinaci� de moviments amb estructures r�tmiques.', 0),
(81, 8, 2, 'Execuci� d''habilitats coordinatives', 'Domini de les habilitats motrius b�siques: despla�aments, salts, girs, equilibris, llan�aments i recepcions. Execuci� d''habilitats motrius espec�fiques en esports individuals i d''equip.', 0),
(82, 8, 3, 'Utilitzaci� de les capacitats condicionals', 'Execuci� de moviments diversos amb el m�xim nombre d''articulacions. Realitzaci� de curses llargues amb ritme constant. Realitzaci� de moviments que afavoreixen la flexibilitat.', 0),
(83, 8, 4, 'Expressi� corporal i dramatitzaci�', 'Descobriment de recursos expressius del cos.', 0),
(84, 8, 5, 'Realitzaci� de jocs', 'Realitzaci� de jocs espontanis, reglats, tant col�lectius com individuals. Respecte per les normes.', 0),
(85, 8, 6, 'H�bits de salut i higiene corporal', 'Cura del propi cos, del material i de les instal�lacions. H�bits d''higiene: dutxa, roba de recanvi...', 0),
(86, 4, 0, 'MATEM�TICA', 'Cicle Mitj�', 0),
(87, 4, 1, 'Nombres i operacions', 'Comprensi� i �s de la s�rie num�rica (fins a la centena de miler).\nRapidesa en el c�lcul mental.\nDomini de les operacions treballades:\nSumar, restar, multiplicar i inici dividir.\nMemoritzaci� de la taula de multiplicar.', 0),
(88, 4, 2, 'Geometria', 'Reconeixement i classificaci� de figures planes i cossos geom�trics. Reconeixement d''aresta, v�rtex, angle i costat en diferents pol�gons i poliedres.\nReconeixement de la simetria de figures. Utilitzaci� del regle.\nC�lcul del per�metre de diferents pol�gons', 0),
(89, 4, 3, 'Magnitud i mesura', 'Utilitzaci� de les unitats m�s freq�ents de longitud, massa, temps i capacitat. Equival�ncia d''unitats. �s i interpretaci� del rellotge.', 0),
(90, 4, 4, 'Estad�stica i probabilitat', 'Representaci� i interpretaci� de dades. Coneixement de diferents tipus de gr�fics.', 0),
(91, 4, 5, 'Resoluci� de problemes', 'Comprensi� del plantejament dels problemes. Utilitzaci� de les operacions adequades per a la resoluci� de problemes.', 0),
(92, 7, 0, 'EDUCACI� MUSICAL', 'Cicle Mitj�', 0),
(93, 7, 1, 'Can�� i veu', 'Memoritzaci� de la lletra de les can�ons. Afinaci� de la melodia.', 0),
(94, 7, 2, 'M�sica, moviment i dansa', 'Precisi� i adequaci� del moviment a la m�sica. Expressivitat a trav�s del moviment corporal (individualment i col�lectiva). Memoritzaci� de la coreografia.', 0),
(95, 7, 3, 'Lectura i escriptura', 'Diferenciaci� de notes i ritmes treballats. Interpretaci� r�tmica i mel�dica.', 0),
(96, 7, 4, 'Instrumentaci�', 'Capacitat individual i en grup de seguir les pautes de la mestra, respectant el treball de grup i amb un control personal davant dels instruments.\nCura dels instruments.', 0),
(97, 7, 5, 'Audici�', 'Discriminaci� gr�fica i auditiva d''una melodia, uns instruments determinats, un conjunt instrumental... Capacitat d''atenci� i concentraci�.', 0),
(98, 7, 6, 'Expressivitat i creativitat', 'Capacitat de comunicaci� a trav�s de la m�sica de forma expressiva i creativa.', 0),
(99, 5, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 'Cicle Mitj�', 0),
(100, 5, 1, 'Recollida d''informaci�', 'Obtenci� d''informaci� adequada al plantejament del tema.', 0),
(101, 5, 2, 'Processament de la informaci�', 'Capacitat de relacionar la informaci� nova amb el que ja coneix.\nCapacitat d''extraure la informaci� pertinent del material utilitzat.\nOrganitzaci� i categoritzaci� de la informaci� treballada.', 0),
(102, 5, 3, 'Expressi� de la informaci�', 'Comprensi� i memoritzaci� dels conceptes treballats.\r\nCapacitat d''expressar la informaci� de manera oral i escrita.', 0),
(103, 5, 4, 'Treball en grup', 'Capacitat d''organitzaci�, participaci� i entesa en el treball de grup. Elaboraci� del treball conjunt.', 0),
(104, 5, 5, 'Relaci� amb l''entorn', 'Inter�s per la realitat natural i social que l''envolta.', 0),
(105, 6, 0, 'EDUCACI� VISUAL I PL�STICA', 'Cicle Mitj�', 0),
(106, 6, 1, 'Observaci�', 'Capacitat d''observar de forma precisa elements est�tics i canviants. Reproducci� d''elements observats, de forma directa o de mem�ria.', 0),
(107, 6, 2, 'Experimentaci�', 'Habilitat per trobar diferents possibilitats pl�stiques dels materials i de les eines a trav�s de l''experimentaci�.', 0),
(108, 6, 3, 'Creaci�', 'Originalitat i creativitat en les produccions pl�stiques. Capacitat de comunicaci�.', 0),
(109, 6, 4, 'Reflexi� i di�leg', 'Reflexi� cr�tica respecte a la pr�pia obra i a la dels altres. Acceptaci� dels suggeriments respecte al seu treball.', 0),
(110, 6, 5, 'T�cniques', 'Utilitzaci� de les t�cniques que permeten l''experimentaci� de la l�nea, la forma, el color i la creaci� de cossos est�tics i en moviment. Control del gest gr�fic. Utilitzaci� correcta de les eines. Adequaci� a l''espai fixat. Presentaci� acurada.', 0),
(111, 28, 0, 'LLENGUA ANGLESA', 'Cicle Superior', 0),
(112, 28, 1, 'Llengua oral / Comprensi�', 'Comprensi� del vocabulari i de les estructures pr�pies de la llengua i de l''edat. Comprensi� de les explicacions. Audici� atenta a les explicacions.', 0),
(113, 28, 2, 'Llengua oral / Expressi�', 'Comunicaci� en contextos significatius: utilitzaci� del l�xic i de les expressions apreses. Intervencions adequades en el context d''una conversa. Utilitzaci� de la llengua com a vehicle de comunicaci�.', 0),
(114, 28, 3, 'Llengua escrita / Comprensi�', 'Comprensi� dels enunciats dels exercicis. Comprensi� de textos de tipologia diversa: narracions, descripcions, cient�fics, po�tics, culinaris... Identificaci� d''idea principal i secund�ria. Saber fer un resum, un esquema, un mapa conceptual...', 0),
(115, 28, 4, 'Llengua escrita / Lectura', 'Domini del mecanisme lector: rapidesa, ritme, to, entonaci�...', 0),
(116, 28, 5, 'Llengua escrita / Expressi�', 'Coher�ncia, utilitzaci� de signes de puntuaci�, d''enlla�os... Expressivitat, originalitat, riquesa de vocabulari. Capacitat d''expressar-se a trav�s dels diferents tipus de textos: narraci�, descripci�, text period�stic...', 0),
(117, 28, 6, 'Treball sistem�tic / Fon�tica i ortografia', 'Articulaci� dels sons propis de la llengua. Memoritzaci� de les normes treballades. Escriptura correcta del vocabulari b�sic de l''edat.', 0),
(118, 28, 7, 'Treball sistem�tic / L�xic', 'Utilitzaci� del vocabulari treballat. Derivaci�, sin�nims, sentit figurat.', 0),
(119, 28, 8, 'Treball sistem�tic / Gram�tica', 'Categories gramaticals: nom, verb, adjectiu... Nuclis de la frase: subjecte, predicat, complements. Aplicaci� de les estructures gramaticals treballades en els redactats. Utilitzaci� del diccionari.', 0),
(120, 19, 0, 'LLENGUA ANGLESA', 'Cicle Superior', 0),
(121, 19, 1, 'Llengua oral / Comprensi�', 'Comprensi� del vocabulari i de les estructures pr�pies de la llengua i de l''edat. Comprensi� de les explicacions. Audici� atenta a les explicacions.', 0),
(122, 19, 2, 'Llengua oral / Expressi�', 'Comunicaci� en contextos significatius: utilitzaci� del l�xic i de les expressions apreses. Intervencions adequades en el context d''una conversa. Utilitzaci� de la llengua com a vehicle de comunicaci�.', 0),
(123, 19, 3, 'Llengua escrita / Comprensi�', 'Comprensi� dels enunciats dels exercicis. Comprensi� de textos de tipologia diversa: narracions, descripcions, cient�fics, po�tics, culinaris... Identificaci� d''idea principal i secund�ria. Saber fer un resum, un esquema, un mapa conceptual...', 0),
(124, 19, 4, 'Llengua escrita / Lectura', 'Domini del mecanisme lector: rapidesa, ritme, to, entonaci�...', 0),
(125, 19, 5, 'Llengua escrita / Expressi�', 'Coher�ncia, utilitzaci� de signes de puntuaci�, d''enlla�os... Expressivitat, originalitat, riquesa de vocabulari. Capacitat d''expressar-se a trav�s dels diferents tipus de textos: narraci�, descripci�, text period�stic...', 0),
(126, 19, 6, 'Treball sistem�tic / Fon�tica i ortografia', 'Articulaci� dels sons propis de la llengua. Memoritzaci� de les normes treballades. Escriptura correcta del vocabulari b�sic de l''edat.', 0),
(127, 19, 7, 'Treball sistem�tic / L�xic', 'Utilitzaci� del vocabulari treballat. Derivaci�, sin�nims, sentit figurat.', 0),
(128, 19, 8, 'Treball sistem�tic / Gram�tica', 'Categories gramaticals: nom, verb, adjectiu... Nuclis de la frase: subjecte, predicat, complements. Aplicaci� de les estructures gramaticals treballades en els redactats. Utilitzaci� del diccionari.', 0),
(129, 27, 0, 'LLENGUA CASTELLANA', 'Cicle Superior', 0),
(130, 27, 1, 'Llengua oral / Comprensi�', 'Comprensi� del vocabulari i de les estructures pr�pies de la llengua i de l''edat. Comprensi� de les explicacions.', 0),
(131, 27, 2, 'Llengua oral / Expressi�', 'Coher�ncia  del discurs. Utilitzaci� del vocabulari i de les estructures pr�pies de la llengua.', 0),
(132, 27, 3, 'Llengua escrita / Comprensi�', 'Comprensi� dels enunciats dels exercicis. Comprensi� de textos de tipologia diversa.', 0),
(133, 27, 4, 'Llengua escrita / Expressi�', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coher�ncia i la creativitat. Elaboraci� de textos de tipologia diversa.', 0),
(134, 27, 5, 'Treball sistem�tic / Fon�tica - ortografia', 'Discriminaci� i producci� dels sons distintius d''aquesta llengua. Memoritzaci� de les normes treballades: grafies espec�fiques, accentuaci�, b/v.', 0),
(135, 27, 6, 'Treball sistem�tic / L�xic', '�s de frases fetes, locucions (maneres de dir). Derivaci� de paraules, sin�nims, sentit figurat. Utilitzaci� del diccionari.', 0),
(136, 27, 7, 'Treball sistem�tic / Gram�tica', 'Categories gramaticals (nom, verb, adjectiu...). Aplicaci� de les estructures gramaticals treballades en els redactats', 0),
(137, 18, 0, 'LLENGUA CASTELLANA', 'Cicle Superior', 0),
(138, 18, 1, 'Llengua oral / Comprensi�', 'Comprensi� del vocabulari i de les estructures pr�pies de la llengua i de l''edat. Comprensi� de les explicacions.', 0),
(139, 18, 2, 'Llengua oral / Expressi�', 'Coher�ncia  del discurs. Utilitzaci� del vocabulari i de les estructures pr�pies de la llengua.', 0),
(140, 18, 3, 'Llengua escrita / Comprensi�', 'Comprensi� dels enunciats dels exercicis. Comprensi� de textos de tipologia diversa.', 0),
(141, 18, 4, 'Llengua escrita / Expressi�', 'Capacitat d''elaborar textos, tenint en compte l''estructura, la coher�ncia i la creativitat. Elaboraci� de textos de tipologia diversa.', 0),
(142, 18, 6, 'Treball sistem�tic / L�xic', '�s de frases fetes, locucions (maneres de dir). Derivaci� de paraules, sin�nims, sentit figurat. Utilitzaci� del diccionari.', 0),
(143, 18, 5, 'Treball sistem�tic / Fon�tica - ortografia', 'Discriminaci� i producci� dels sons distintius d''aquesta llengua. Memoritzaci� de les normes treballades: grafies espec�fiques, accentuaci�, b/v.', 0),
(144, 18, 7, 'Treball sistem�tic / Gram�tica', 'Categories gramaticals (nom, verb, adjectiu...). Aplicaci� de les estructures gramaticals treballades en els redactats', 0),
(145, 26, 0, 'LLENGUA CATALANA', 'Cicle Superior', 0),
(146, 26, 1, 'Llengua oral / Comprensi�', 'Comprensi� del vocabulari i de les estructures pr�pies de la llengua i de l''edat. Comprensi� de les explicacions. Audici� atenta a les explicacions.', 0),
(147, 26, 2, 'Llengua oral / Expressi�', 'Coher�ncia del discurs. Utilitzaci� de les estructures i del vocabulari propi de la llengua. Intervencions adequades en el context d''una conversa.', 0),
(148, 26, 3, 'Llengua escrita / Comprensi�', 'Comprensi� dels enunciats dels exercicis. Comprensi� de textos de tipologia diversa (narratius, descriptius, cient�fics, po�tics, culinaris...). Identificaci� d''idea principal i secund�ria. Resums.', 0),
(149, 26, 4, 'Llengua escrita / Lectura', 'Domini del mecanisme lector (rapidesa, ritme, to, entonaci�...).', 0),
(150, 26, 5, 'Llengua escrita / Expressi�', 'Coher�ncia, utilitzaci� signes de puntuaci�, utilitzaci� d''enlla�os. Originalitat, riquesa de vocabulari. Capacitat d''expressar-se a trav�s de les diferents tipologies textuals (narraci�, descripci�, text period�stic, poesia...).', 0),
(151, 26, 6, 'Treball sistem�tic / Fon�tica - ortografia', 'Discriminaci� i producci� de sons. Memoritzaci� de les normes ortogr�fiques treballades (accentuaci�, diftongs...). Escriptura correcta del vocabulari b�sic de l''edat.', 0),
(152, 26, 7, 'Treball sistem�tic / L�xic', 'Derivaci� de paraules, sin�nims, sentit figurat. Utilitzaci� del vocabulari treballat. Inter�s per ampliar el vocabulari. Diccionari.', 0),
(153, 26, 8, 'Treball sistem�tic / Gram�tica', 'Utilitzaci� en els redactats de les estructures gramaticals treballades. Categories gramaticals: nom, verb, adjectiu, determinant i preposici�. Subjecte, predicat, complements.', 0),
(154, 17, 0, 'LLENGUA CATALANA', 'Cicle Superior', 0),
(155, 17, 1, 'Llengua oral / Comprensi�', 'Comprensi� del vocabulari i de les estructures pr�pies de la llengua i de l''edat. Comprensi� de les explicacions. Audici� atenta a les explicacions.', 0),
(156, 17, 2, 'Llengua oral / Expressi�', 'Coher�ncia del discurs. Utilitzaci� de les estructures i del vocabulari propi de la llengua. Intervencions adequades en el context d''una conversa.', 0),
(157, 17, 3, 'Llengua escrita / Comprensi�', 'Comprensi� dels enunciats dels exercicis. Comprensi� de textos de tipologia diversa (narratius, descriptius, cient�fics, po�tics, culinaris...). Identificaci� d''idea principal i secund�ria. Resums.', 0),
(158, 17, 4, 'Llengua escrita / Lectura', 'Domini del mecanisme lector (rapidesa, ritme, to, entonaci�...).', 0),
(159, 17, 5, 'Llengua escrita / Expressi�', 'Coher�ncia, utilitzaci� signes de puntuaci�, utilitzaci� d''enlla�os. Originalitat, riquesa de vocabulari. Capacitat d''expressar-se a trav�s de les diferents tipologies textuals (narraci�, descripci�, text period�stic, poesia...).', 0),
(160, 17, 6, 'Treball sistem�tic / Fon�tica - ortografia', 'Discriminaci� i producci� de sons. Memoritzaci� de les normes ortogr�fiques treballades (accentuaci�, diftongs...). Escriptura correcta del vocabulari b�sic de l''edat.', 0),
(161, 17, 7, 'Treball sistem�tic / L�xic', 'Derivaci� de paraules, sin�nims, sentit figurat. Utilitzaci� del vocabulari treballat. Inter�s per ampliar el vocabulari. Diccionari.', 0),
(162, 17, 8, 'Treball sistem�tic / Gram�tica', 'Utilitzaci� en els redactats de les estructures gramaticals treballades. Categories gramaticals: nom, verb, adjectiu, determinant i preposici�. Subjecte, predicat, complements.', 0),
(163, 34, 0, 'EDUCACI� F�SICA', 'Cicle Superior', 0),
(164, 34, 1, 'Control i consci�ncia corporal', 'Adequaci� del to muscular en funci� de l''activitat f�sica. Adopci� de la postura equilibrada en rep�s i en moviment. Control i ajust de la respiraci�. Sincronitzaci� del moviment amb estructures r�tmiques.', 0),
(165, 34, 2, 'Execuci� d''habilitats coordinatives', 'Control corporal en les activitats gimn�stiques. Aplicaci� i combinaci� d''habilitats motrius b�siques: salts, girs, colpeigs, recepcions i llan�aments. Pr�ctica d''habilitats motrius espec�fiques en la iniciaci� d''esports individuals, col�lectius, i danses.', 0),
(166, 34, 3, 'Utilitzaci� de les capacitats condicionals', 'Execuci� de curses a ritme constant. �s del m�xim nombre d''articulacions. Reacci� motriu r�pida davant d''un est�mul. Aplicaci� de la for�a contra una resist�ncia donada.', 0),
(167, 34, 4, 'Expressi� corporal i dramatitzaci�', 'Cerca de nous moviments amb est�muls musicals, visuals... Representaci� mitjan�ant t�cniques de dramatitzaci� i de mim. Construcci� de moviments a partir de gestos dels altres.', 0),
(168, 34, 5, 'Realitzaci� de jocs', 'Identificaci� del joc com a objecte recreatiu. Construcci� i modificaci� de diferents jocs. Organitzaci� en situacions de joc. An�lisi de situacions de joc col�lectiu.', 0),
(169, 34, 6, 'H�bits de salut i higiene corporal', 'Cura del propi cos i de la seva higiene. Inter�s en les normes d''�s del material i de les instal�lacions.', 0),
(170, 25, 0, 'EDUCACI� F�SICA', 'Cicle Superior', 0),
(171, 25, 1, 'Control i consci�ncia corporal', 'Adequaci� del to muscular en funci� de l''activitat f�sica. Adopci� de la postura equilibrada en rep�s i en moviment. Control i ajust de la respiraci�. Sincronitzaci� del moviment amb estructures r�tmiques.', 0),
(172, 25, 2, 'Execuci� d''habilitats coordinatives', 'Control corporal en les activitats gimn�stiques. Aplicaci� i combinaci� d''habilitats motrius b�siques: salts, girs, colpeigs, recepcions i llan�aments. Pr�ctica d''habilitats motrius espec�fiques en la iniciaci� d''esports individuals, col�lectius, i danses.', 0),
(173, 25, 3, 'Utilitzaci� de les capacitats condicionals', 'Execuci� de curses a ritme constant. �s del m�xim nombre d''articulacions. Reacci� motriu r�pida davant d''un est�mul. Aplicaci� de la for�a contra una resist�ncia donada.', 0),
(174, 25, 4, 'Expressi� corporal i dramatitzaci�', 'Cerca de nous moviments amb est�muls musicals, visuals... Representaci� mitjan�ant t�cniques de dramatitzaci� i de mim. Construcci� de moviments a partir de gestos dels altres.', 0),
(175, 25, 5, 'Realitzaci� de jocs', 'Identificaci� del joc com a objecte recreatiu. Construcci� i modificaci� de diferents jocs. Organitzaci� en situacions de joc. An�lisi de situacions de joc col�lectiu.', 0),
(176, 25, 6, 'H�bits de salut i higiene corporal', 'Cura del propi cos i de la seva higiene. Inter�s en les normes d''�s del material i de les instal�lacions.', 0),
(177, 29, 0, 'MATEM�TICA', 'Cicle Superior', 0),
(178, 29, 1, 'Nombres naturals i operacions', 'Descomposici� d''un nombre en factors primers. Comprensi� del concepte de nombre primer. Comprensi� del valor posicional d''un nombre.\nDomini de la mec�nica de les operacions. Comprensi� del concepte de divisi�. Domini de les taules de multiplicar', 0),
(179, 29, 2, 'Nombres fraccionaris i decimals', 'Comprensi� del concepte de fracci�. Comprensi� del concepte d''equival�ncia de fraccions. Conversi� de nombres fraccionaris en decimals. C�lcul de la fracci� d''un nombre. Resoluci� d''operacions amb fraccions.', 0),
(180, 29, 3, 'Magnitud i mesura', 'Comprensi� del funcionament del sistema m�tric decimal. Conversi� d''unitats.', 0),
(181, 29, 4, 'Geometria', 'Reconeixement de figures planes. Reconeixement i mesura d''angles. C�lcul de per�metres. Utilitzaci� dels estris de geometria: comp�s, escaire... Precisi� en l''execuci� dels exercicis geom�trics.', 0),
(182, 29, 5, 'Estad�stica', 'Comprensi� de la funcionalitat de l''estad�stica. Reconeixement, elaboraci� i interpretaci� dels diferents models de representaci� de dades.', 0),
(183, 29, 6, 'Resoluci� de problemes', 'Resoluci� mental d''operacions i problemes. Comprovaci� l�gica dels resultats obtinguts. Utilitzaci� de les operacions a l''hora de resoldre problemes.', 0),
(184, 20, 0, 'MATEM�TICA', 'Cicle Superior', 0),
(185, 20, 1, 'Nombres naturals i operacions', 'Descomposici� d''un nombre en factors primers. Comprensi� del concepte de nombre primer. Comprensi� del valor posicional d''un nombre.\nDomini de la mec�nica de les operacions. Comprensi� del concepte de divisi�. Domini de les taules de multiplicar', 0),
(186, 20, 2, 'Nombres fraccionaris i decimals', 'Comprensi� del concepte de fracci�. Comprensi� del concepte d''equival�ncia de fraccions. Conversi� de nombres fraccionaris en decimals. C�lcul de la fracci� d''un nombre. Resoluci� d''operacions amb fraccions.', 0),
(187, 20, 3, 'Magnitud i mesura', 'Comprensi� del funcionament del sistema m�tric decimal. Conversi� d''unitats.', 0),
(188, 20, 4, 'Geometria', 'Reconeixement de figures planes. Reconeixement i mesura d''angles. C�lcul de per�metres. Utilitzaci� dels estris de geometria: comp�s, escaire... Precisi� en l''execuci� dels exercicis geom�trics.', 0),
(189, 20, 5, 'Estad�stica', 'Comprensi� de la funcionalitat de l''estad�stica. Reconeixement, elaboraci� i interpretaci� dels diferents models de representaci� de dades.', 0),
(190, 20, 6, 'Resoluci� de problemes', 'Resoluci� mental d''operacions i problemes. Comprovaci� l�gica dels resultats obtinguts. Utilitzaci� de les operacions a l''hora de resoldre problemes.', 0),
(191, 33, 0, 'EDUCACI� MUSICAL', 'Cicle Superior', 0),
(192, 33, 1, 'Can�� i veu', 'Memoritzaci� de la lletra de les can�ons. Afinaci� de la melodia.', 0),
(193, 33, 2, 'M�sica, moviment i dansa', 'Precisi� i adequaci� del moviment a la m�sica. Expressivitat a trav�s del moviment corporal (individualment i col�lectiva). Realitzaci� dels diferents passos i coreografies treballades.', 0),
(194, 33, 3, 'Lectura i escriptura', 'Diferenciaci� de notes i ritmes treballats. Interpretaci� r�tmica i mel�dica.', 0),
(195, 33, 4, 'Instrumentaci�', 'Capacitat individual i en grup de seguir les pautes de la mestra, respectant el treball de grup i amb un control personal davant dels instruments.\nCura dels instruments.', 0),
(196, 33, 5, 'Audici�', 'Discriminaci� gr�fica i auditiva d''una melodia, uns instruments determinats, un conjunt instrumental... An�lisi d''una melodia. Capacitat d''atenci� i concentraci�.', 0),
(197, 33, 6, 'Expressivitat i creativitat', 'Capacitat de comunicaci� a trav�s de la m�sica de forma expressiva i creativa.', 0),
(198, 24, 0, 'EDUCACI� MUSICAL', 'Cicle Superior', 0),
(199, 24, 1, 'Can�� i veu', 'Memoritzaci� de la lletra de les can�ons. Afinaci� de la melodia.', 0),
(200, 24, 2, 'M�sica, moviment i dansa', 'Precisi� i adequaci� del moviment a la m�sica. Expressivitat a trav�s del moviment corporal (individualment i col�lectiva). Realitzaci� dels diferents passos i coreografies treballades.', 0),
(201, 24, 3, 'Lectura i escriptura', 'Diferenciaci� de notes i ritmes treballats. Interpretaci� r�tmica i mel�dica.', 0),
(202, 24, 4, 'Instrumentaci�', 'Capacitat individual i en grup de seguir les pautes de la mestra, respectant el treball de grup i amb un control personal davant dels instruments.\nCura dels instruments.\nInterpretaci� i treball amb la flauta de bec.', 0),
(203, 24, 5, 'Audici�', 'Discriminaci� gr�fica i auditiva d''una melodia, uns instruments determinats, un conjunt instrumental... An�lisi d''una melodia. Capacitat d''atenci� i concentraci�.', 0),
(204, 24, 6, 'Expressivitat i creativitat', 'Capacitat de comunicaci� a trav�s de la m�sica de forma expressiva i creativa.', 0),
(205, 30, 0, 'CONEIXEMENT DE L''ENTORN NATURAL', 'Cicle Superior', 0),
(206, 30, 1, 'Recollida d''informaci�', 'Obtenci� d''informaci� a partir d''una explicaci�, d''un text escrit i de mitjans audiovisuals.', 0),
(207, 30, 2, 'Processament de la informaci�', 'Organitzaci� de les informacions obtingudes. Capacitat per sintetitzar les informacions. Capacitat d''observaci� sistem�tica. Manipulaci� de materials. Registre de dades experimentals.', 0),
(208, 30, 3, 'Expressi� de la informaci�', 'Expressi�, per escrit, del resultat del treball. Organitzaci� del temps disponible per a fer un treball. Construcci� de resums, esquemes, gr�fics, quadres... Capacitat per a treure conclusions de les observacions. Presentaci� dels treballs de forma adequada.', 0),
(209, 30, 4, 'Treball en grup', 'Capacitat per organitzar-se i treballar dins del grup. Capacitat per assimilar els continguts treballats en grup: mural, confer�ncia...', 0),
(210, 30, 5, 'Relaci� amb l''entorn', 'Inter�s pel bon �s de l''entorn natural.', 0),
(211, 21, 0, 'CONEIXEMENT DE L''ENTORN NATURAL', 'Cicle Superior', 0),
(212, 21, 1, 'Recollida d''informaci�', 'Obtenci� d''informaci� a partir d''una explicaci�, d''un text escrit i de mitjans audiovisuals.', 0),
(213, 21, 2, 'Processament de la informaci�', 'Organitzaci� de les informacions obtingudes. Capacitat per sintetitzar les informacions. Capacitat d''observaci� sistem�tica. Manipulaci� de materials. Registre de dades experimentals.', 0),
(214, 21, 3, 'Expressi� de la informaci�', 'Expressi�, per escrit, del resultat del treball. Organitzaci� del temps disponible per a fer un treball. Construcci� de resums, esquemes, gr�fics, quadres... Capacitat per a treure conclusions de les observacions. Presentaci� dels treballs de forma adequada.', 0),
(215, 21, 4, 'Treball en grup', 'Capacitat per organitzar-se i treballar dins del grup. Capacitat per assimilar els continguts treballats en grup: mural, confer�ncia...', 0),
(216, 21, 5, 'Relaci� amb l''entorn', 'Inter�s pel bon �s de l''entorn natural.', 0),
(217, 31, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL', 'Cicle Superior', 0),
(218, 31, 1, 'Recollida d''informaci�', 'Obtenci� d''informaci� a partir d''una explicaci�, d''un text escrit i de mitjans audiovisuals.', 0),
(219, 31, 2, 'Processament de la informaci�', 'Organitzaci� de les informacions obtingudes. Capacitat per sintetitzar les informacions. �s i interpretaci� de mapes.', 0),
(220, 31, 3, 'Expressi� de la informaci�', 'Expressi�, per escrit, del resultat del treball. Organitzaci� del temps disponible per a fer un treball. Construcci� de resums, esquemes, gr�fics, quadres... Retolaci� de mapes. Presentaci� dels treballs de forma adequada.', 0),
(221, 31, 4, 'Treball en grup', 'Capacitat per organitzar-se i treballar dins del grup. Capacitat per assimilar els continguts treballats en grup: mural, confer�ncia... ', 0),
(222, 31, 5, 'Relaci� amb l''entorn', 'Inter�s per la realitat social que l''envolta.', 0),
(223, 22, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL', 'Cicle Superior', 0),
(224, 22, 1, 'Recollida d''informaci�', 'Obtenci� d''informaci� a partir d''una explicaci�, d''un text escrit i de mitjans audiovisuals.', 0),
(225, 22, 2, 'Processament de la informaci�', 'Organitzaci� de les informacions obtingudes. Capacitat per sintetitzar les informacions. �s i interpretaci� de mapes.', 0),
(226, 22, 3, 'Expressi� de la informaci�', 'Expressi�, per escrit, del resultat del treball. Organitzaci� del temps disponible per a fer un treball. Construcci� de resums, esquemes, gr�fics, quadres... Retolaci� de mapes. Presentaci� dels treballs de forma adequada.', 0),
(227, 22, 4, 'Treball en grup', 'Capacitat per organitzar-se i treballar dins del grup. Capacitat per assimilar els continguts treballats en grup: mural, confer�ncia... ', 0),
(228, 22, 5, 'Relaci� amb l''entorn', 'Inter�s per la realitat social que l''envolta.', 0),
(229, 32, 0, 'EDUCACI� VISUAL I PL�STICA', 'Cicle Superior', 0),
(230, 32, 1, 'Observaci�', 'Capacitat d''observaci� directa d''elements visuals(forma, mesura, color, textura) i d''elements pl�stics (mesura, proporci�, equilibri, ritme, simetria). Reproducci� d''elements observats de forma directa o de mem�ria.', 0),
(231, 32, 2, 'Experimentaci�', 'Recerca de noves possibilitats en la utilitzaci� de les eines i dels materials. Sistematitzaci� de les experimentacions. Recerca de noves formes expressives', 0),
(232, 32, 3, 'Creaci�', 'Realisme. Creativitat.\nAplicaci� de les experimentacions i de les t�cniques treballades. Utilitzaci� de noves tecnologies.\nCapacitat de comunicaci�.', 0),
(233, 32, 4, 'Reflexi� / Di�leg', 'An�lisi d''imatges pr�pies i dels altres: elements visuals i pl�stics, intencionalitat. Comentari d''obres d''art.', 0),
(234, 32, 5, 'T�cniques', 'Utilitzaci� adequada de t�cniques i d''estris. Control del gest gr�fic. Adequaci� a l''espai fixat. Presentaci� acurada.', 0),
(235, 23, 0, 'EDUCACI� VISUAL I PL�STICA', 'Cicle Superior', 0),
(236, 23, 1, 'Observaci�', 'Capacitat d''observaci� directa d''elements visuals(forma, mesura, color, textura) i d''elements pl�stics (mesura, proporci�, equilibri, ritme, simetria). Reproducci� d''elements observats de forma directa o de mem�ria.', 0),
(237, 23, 2, 'Experimentaci�', 'Recerca de noves possibilitats en la utilitzaci� de les eines i dels materials. Sistematitzaci� de les experimentacions. Recerca de noves formes expressives', 0),
(238, 23, 3, 'Creaci�', 'Realisme. Creativitat.\nAplicaci� de les experimentacions i de les t�cniques treballades. Utilitzaci� de noves tecnologies.\nCapacitat de comunicaci�.', 0),
(239, 23, 4, 'Reflexi� / Di�leg', 'An�lisi d''imatges pr�pies i dels altres: elements visuals i pl�stics, intencionalitat. Comentari d''obres d''art.', 0),
(240, 23, 5, 'T�cniques', 'Utilitzaci� adequada de t�cniques i d''estris. Control del gest gr�fic. Adequaci� a l''espai fixat. Presentaci� acurada.', 0),
(241, 45, 0, 'LLENGUA ANGLESA', 'Cicle Inicial', 0),
(242, 45, 1, 'Llengua oral / Comprensi�', 'Comprensi� i capacitat de resposta  a les instruccions de treball de l''aula.\r\nComprensi� i capacitat de resposta als missatges d''intercanvi social.\r\nComprensi� global de narracions i descripcions curtes i de situacions pr�ximes (amb el suport de mitjans diversos i d''est�muls no ling��stics).\r\nComprensi� del l�xic b�sic i d''expressions espec�fiques.\r\nConeixement dels aspectes culturals i costums dels pa�sos on es parla la llengua.', 0),
(243, 45, 2, 'Llengua oral / Expressi�', 'Reproducci� de sons, ritmes i entonacions (can�ons, poemes, dramatitzacions...).\nUtilitzaci� del l�xic i de les expressions senzilles apreses, en contextos significatius.\nMemoritzaci� del l�xic treballat. \nDisposici� per expressar-se en aquesta llengua.', 0),
(244, 37, 0, 'LLENGUA ANGLESA', 'Cicle Inicial', 0),
(245, 37, 1, 'Llengua oral / Comprensi�', 'Comprensi� i capacitat de resposta  a les instruccions de treball de l''aula.\r\nComprensi� i capacitat de resposta als missatges d''intercanvi social.\r\nComprensi� global de narracions i descripcions curtes i de situacions pr�ximes (amb el suport de mitjans diversos i d''est�muls no ling��stics).\r\nComprensi� del l�xic b�sic i d''expressions espec�fiques.\r\nConeixement dels aspectes culturals i costums dels pa�sos on es parla la llengua.', 0),
(246, 37, 2, 'Llengua oral / Expressi�', 'Reproducci� de sons, ritmes i entonacions (can�ons, poemes, dramatitzacions...).\nUtilitzaci� del l�xic i de les expressions senzilles apreses, en contextos significatius.\nMemoritzaci� del l�xic treballat. \nDisposici� per expressar-se en aquesta llengua.', 0),
(247, 37, 3, 'Llengua escrita / Comprensi�', 'Identificaci� de la forma escrita de paraules i d''expressions orals, d''�s habitual a l''aula.', 0),
(248, 37, 4, 'Llengua escrita / Expressi�', 'Escriptura de paraules i d''expressions senzilles a partir de models.', 0),
(249, 43, 0, 'LLENGUA CATALANA', 'Cicle Inicial', 0),
(250, 43, 1, 'Llengua oral / Comprensi�', 'Comprensi� d''ordres o missatges de complexitat diversa. Audici� atenta en les explicacions.', 0),
(251, 43, 2, 'Llengua oral / Expressi�', 'H�bits de comunicaci� i conversa: to de veu, torn de paraula, escoltar, saber esperar, ser capa� de mantenir una conversa coherent, formules de salutaci� i comiat.', 0),
(252, 43, 3, 'Llengua escrita. Comprensi�', 'Comprensi� de missatges, frases o ordres. Reconeixement de la idea global d''un text.', 0),
(253, 43, 4, 'Llengua escrita / Lectura', 'Coneixement del mecanisme de la lectura. Identificar les grafies amb el so corresponent. Adquisici� progressiva de seguretat i flu�desa en la lectura.', 0),
(254, 43, 5, 'Llengua escrita / Expressi�', 'Elaboraci� de textos amb frases coherents i ben estructurades. Espontane�tat i creativitat.', 0),
(255, 43, 6, 'Treball sistem�tic / Fon�tica - ortografia', 'Aplicaci� de la correspond�ncia so-grafia. Treball espec�fic de l''ortografia natural: assegurar la correspond�ncia so-grafia i la separaci� de paraules.', 0),
(256, 43, 7, 'Treball sistem�tic / L�xic', 'Coneixement i utilitzaci� del vocabulari d''�s. Memoritzaci� de frases fetes i locucions (maneres de dir).', 0),
(257, 43, 8, 'Treball sistem�tic / Gram�tica', 'Utilitzaci� de diferents frases simples amb l''entonaci� i la puntuaci� adequades. Utilitzaci� adequada  dels temps verbals.', 0),
(258, 43, 9, 'Grafisme', 'Domini del tra�. Escriptura correcta de les grafies.', 0),
(259, 35, 0, 'LLENGUA CATALANA', 'Cicle Inicial', 0),
(260, 35, 1, 'Llengua oral / Comprensi�', 'Comprensi� d''ordres o missatges de complexitat diversa. Audici� atenta en les explicacions.', 0),
(261, 35, 2, 'Llengua oral / Expressi�', 'H�bits de comunicaci� i conversa: to de veu, torn de paraula, escoltar, saber esperar, ser capa� de mantenir una conversa coherent, formules de salutaci� i comiat.', 0),
(262, 35, 3, 'Llengua escrita. Comprensi�', 'Comprensi� de missatges, frases o ordres. Reconeixement de la idea global d''un text.', 0),
(263, 35, 4, 'Llengua escrita / Lectura', 'Coneixement del mecanisme de la lectura. Identificar les grafies amb el so corresponent. Adquisici� progressiva de seguretat i flu�desa en la lectura.', 0),
(264, 35, 5, 'Llengua escrita / Expressi�', 'Elaboraci� de textos amb frases coherents i ben estructurades. Espontane�tat i creativitat. Treball del text escrit. Tipologia del text: nota, carta, narraci�.', 0),
(329, 53, 0, 'LLENGUA CASTELLANA', 'Cicle Inicial', 0),
(265, 35, 6, 'Treball sistem�tic / Fon�tica - ortografia', 'Aplicaci� de la correspond�ncia so-grafia. Treball espec�fic de l''ortografia natural: assegurar la correspond�ncia so-grafia i la separaci� de paraules. Inici en l''�s de les normes ortogr�fiques: maj�scules, plurals amb -es, d�grafs, rr, ss, qu, gu, ny, ll.', 0),
(266, 35, 7, 'Treball sistem�tic / L�xic', 'Coneixement i utilitzaci� del vocabulari d''�s. Memoritzaci� de frases fetes i locucions (maneres de dir).', 0),
(267, 35, 8, 'Treball sistem�tic / Gram�tica', 'Utilitzaci� de diferents frases simples amb l''entonaci� i la puntuaci� adequades. Utilitzaci� adequada  dels temps verbals.', 0),
(268, 35, 9, 'Grafisme', 'Domini del tra�. Escriptura correcta de les grafies.', 0),
(269, 50, 0, 'EDUCACI� F�SICA', 'Cicle Inicial', 0),
(270, 50, 1, 'Control i consci�ncia corporal', 'Coneixement del propi cos i la seva lateralitat. Nocions d''organitzaci� espacial: entre el propi cos, els objectes i l''espai exterior.', 0),
(271, 50, 2, 'Execuci� d''habilitats coordinatives', 'Pr�ctica de les habilitats motrius b�siques: despla�aments, equilibris,salts, girs... Execuci� de diverses coordinacions del cos amb objectes, i amb l''entorn.', 0),
(272, 50, 3, 'Expressi� corporal i dramatitzaci�', 'Experimentaci� de la creativitat motriu a trav�s d''imitacions i de gestos.', 0),
(273, 50, 4, 'Realitzaci� de jocs', 'Realitzaci� de jocs tradicionals, simb�lics, sensorials... Respecte per les normes.', 0),
(274, 50, 5, 'H�bits de salut i higiene corporal', 'Cura del propi cos, del material i de les instal�lacions. H�bits d''higiene: roba de recanvi...', 0),
(275, 42, 0, 'EDUCACI� F�SICA', 'Cicle Inicial', 0),
(276, 42, 1, 'Control i consci�ncia corporal', 'Coneixement del propi cos i la seva lateralitat. Nocions d''organitzaci� espacial: entre el propi cos, els objectes i l''espai exterior.', 0),
(277, 42, 2, 'Execuci� d''habilitats coordinatives', 'Pr�ctica de les habilitats motrius b�siques: despla�aments, equilibris,salts, girs... Execuci� de diverses coordinacions del cos amb objectes, i amb l''entorn.', 0),
(278, 42, 3, 'Expressi� corporal i dramatitzaci�', 'Experimentaci� de la creativitat motriu a trav�s d''imitacions i de gestos.', 0),
(279, 42, 4, 'Realitzaci� de jocs', 'Realitzaci� de jocs tradicionals, simb�lics, sensorials... Respecte per les normes.', 0),
(280, 42, 5, 'H�bits de salut i higiene corporal', 'Cura del propi cos, del material i de les instal�lacions. H�bits d''higiene: roba de recanvi...', 0),
(281, 46, 0, 'MATEM�TICA', 'Cicle Inicial', 0),
(282, 46, 1, 'Nombres i operacions', 'Comprensi� i �s de la s�rie num�rica.\r\nConcepte d''unitat i desena.\r\nDescomposici� de nombres.\r\nDomini del mecanisme de les operacions treballades (suma i resta).\r\nC�lcul mental.', 0),
(283, 46, 2, 'Magnitud i mesura', 'Coneixement de les unitats de mesura: temps (dies de la setmana i mesos de l''any), longitud (unitats naturals del cos: pams i peus).', 0),
(284, 46, 3, 'Geometria', 'Reconeixement de figures i de cossos geom�trics. Nocions b�siques de geometria plana: l�nia i superf�cie.\nOrientaci� espacial.', 0),
(285, 46, 4, 'Estad�stica i probabilitat', 'Recollida de dades a partir de situacions reals. Quantificaci�, classificaci� i ordenaci� de dades i resultats.\nAnticipaci� i comparaci� de resultats.', 0),
(286, 46, 5, 'Resoluci� de problemes', 'Interpretaci� de l''enunciat dels problemes.\nResoluci� de problemes aritm�tics amb les operacions adients.', 0),
(287, 38, 0, 'MATEM�TICA', 'Cicle Inicial', 0),
(288, 38, 1, 'Nombres i operacions', 'Comprensi� i �s de la s�rie num�rica.\r\nConcepte d''unitat, desena i centena.\r\nDescomposici� de nombres.\r\nDomini del mecanisme de les operacions treballades (suma i resta).\r\nC�lcul mental.', 0),
(289, 38, 2, 'Magnitud i mesura', 'Coneixement de les unitats de mesura: temps (dies de la setmana i mesos de l''any), longitud (unitats naturals del cos: pams i peus).\nConeixement de les unitats convencionals de longitud, massa i temps.', 0),
(290, 38, 3, 'Geometria', 'Reconeixement de figures i de cossos geom�trics. Nocions b�siques de geometria plana: l�nia i superf�cie.\nOrientaci� espacial.', 0);
INSERT INTO `plantilles` (`id`, `area`, `ordre`, `titol`, `text`, `buit`) VALUES
(291, 38, 4, 'Estad�stica i probabilitat', 'Recollida de dades a partir de situacions reals. Quantificaci�, classificaci� i ordenaci� de dades i resultats.\nAnticipaci� i comparaci� de resultats.', 0),
(292, 38, 5, 'Resoluci� de problemes', 'Interpretaci� de l''enunciat dels problemes.\nResoluci� de problemes aritm�tics amb les operacions adients.', 0),
(293, 49, 0, 'EDUCACI� MUSICAL', 'Cicle Inicial', 0),
(294, 49, 1, 'Can�� i veu', 'Memoritzaci� de la lletra de les can�ons. Afinaci� de la melodia.', 0),
(295, 49, 2, 'M�sica, moviment i dansa', 'Precisi� i adequaci� del moviment a la m�sica. Realitzaci� dels diferents passos treballats. Memoritzaci� de la coreografia.', 0),
(296, 49, 3, 'Lectura i escriptura', 'Interioritzaci� de la pulsaci�. Reconeixement de les notes i ritmes treballats.', 0),
(297, 49, 4, 'Audici�', 'Diferenciaci� d''una melodia, un instrument determinat, o una qualitat del so.\nCapacitat d''atenci� i concentraci�.', 0),
(298, 49, 5, 'Expressivitat i creativitat', 'Capacitat de comunicaci� a trav�s de la m�sica de forma expressiva i creativa.', 0),
(299, 41, 0, 'EDUCACI� MUSICAL', 'Cicle Inicial', 0),
(300, 41, 1, 'Can�� i veu', 'Memoritzaci� de la lletra de les can�ons. Afinaci� de la melodia.', 0),
(301, 41, 2, 'M�sica, moviment i dansa', 'Precisi� i adequaci� del moviment a la m�sica. Realitzaci� dels diferents passos treballats. Memoritzaci� de la coreografia.', 0),
(302, 41, 3, 'Lectura i escriptura', 'Interioritzaci� de la pulsaci�. Reconeixement de les notes i ritmes treballats.', 0),
(303, 41, 4, 'Audici�', 'Diferenciaci� d''una melodia, un instrument determinat, o una qualitat del so.\nCapacitat d''atenci� i concentraci�.', 0),
(304, 41, 5, 'Expressivitat i creativitat', 'Capacitat de comunicaci� a trav�s de la m�sica de forma expressiva i creativa.', 0),
(305, 47, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 'Cicle Inicial', 0),
(306, 47, 1, 'Recollida d''informaci�', 'Obtenci� de la informaci� mitjan�ant l''observaci� i l''experimentaci� amb diferents recursos com: la imatge, el text...', 0),
(307, 47, 2, 'Processament de la informaci�', 'Capacitat de relacionar la nova informaci� amb la que ja coneix.\nOrganitzaci� i categoritzaci� de la informaci� treballada.', 0),
(308, 47, 3, 'Expressi� de la informaci�', 'Capacitat d''explicar el que ha apr�s del tema, utilitzant el vocabulari espec�fic.', 0),
(309, 47, 4, 'Treball en grup', 'Capacitat de treballar en grup: organitzaci�, participaci� i presa de decisions.', 0),
(310, 47, 5, 'Relaci� amb l''entorn', 'Inter�s per la realitat natural i social que l''envolta.', 0),
(311, 39, 0, 'CONEIXEMENT DE L''ENTORN SOCIAL I NATURAL', 'Cicle Inicial', 0),
(312, 39, 1, 'Recollida d''informaci�', 'Obtenci� de la informaci� mitjan�ant l''observaci� i l''experimentaci� amb diferents recursos com: la imatge, el text...', 0),
(313, 39, 2, 'Processament de la informaci�', 'Capacitat de relacionar la nova informaci� amb la que ja coneix.\nOrganitzaci� i categoritzaci� de la informaci� treballada.', 0),
(314, 39, 3, 'Expressi� de la informaci�', 'Capacitat d''explicar el que ha apr�s del tema, utilitzant el vocabulari espec�fic.', 0),
(315, 39, 4, 'Treball en grup', 'Capacitat de treballar en grup: organitzaci�, participaci� i presa de decisions.', 0),
(316, 39, 5, 'Relaci� amb l''entorn', 'Inter�s per la realitat natural i social que l''envolta.', 0),
(317, 48, 0, 'EDUCACI� VISUAL I PL�STICA', 'Cicle Inicial', 0),
(318, 48, 1, 'Observaci�', 'Capacitat d''observaci� de l''entorn a trav�s dels sentits i dels elements que caracteritzen un objecte: forma, color, textura i mida.\r\nReproducci� d''all� que s''ha observat.', 0),
(319, 48, 2, 'Experimentaci�', 'Experimentaci� amb t�cniques pl�stiques b�siques: dibuix, pintura, modelatge...', 0),
(320, 48, 3, 'Creaci�', 'Originalitat i creativitat en les produccions pl�stiques.\nCapacitat per expressar-se pl�sticament.', 0),
(321, 48, 4, 'Reflexi� i di�leg', 'Reflexi� cr�tica respecte les pr�pies produccions i les dels altres.', 0),
(322, 48, 5, 'T�cniques', 'Aplicaci� de les diferents t�cniques treballades.\nUtilitzaci� del material i dels estris adequats a cada t�cnica: dibuix, pintura, modelatge, col�lage, construccions en l''espai.\nControl del gest gr�fic.\nPresentaci� acurada.', 0),
(323, 40, 0, 'EDUCACI� VISUAL I PL�STICA', 'Cicle Inicial', 0),
(324, 40, 1, 'Observaci�', 'Capacitat d''observaci� de l''entorn a trav�s dels sentits i dels elements que caracteritzen un objecte: forma, color, textura i mida.\r\nReproducci� d''all� que s''ha observat.', 0),
(325, 40, 2, 'Experimentaci�', 'Experimentaci� amb t�cniques pl�stiques b�siques: dibuix, pintura, modelatge...', 0),
(326, 40, 3, 'Creaci�', 'Originalitat i creativitat en les produccions pl�stiques.\nCapacitat per expressar-se pl�sticament.', 0),
(327, 40, 4, 'Reflexi� i di�leg', 'Reflexi� cr�tica respecte les pr�pies produccions i les dels altres.', 0),
(328, 40, 5, 'T�cniques', 'Aplicaci� de les diferents t�cniques treballades.\nUtilitzaci� del material i dels estris adequats a cada t�cnica: dibuix, pintura, modelatge, col�lage, construccions en l''espai.\nControl del gest gr�fic.\nPresentaci� acurada.', 0),
(330, 53, 1, 'Llengua oral / Comprensi�', 'Comprensi� de relats, explicacions i argumentacions.', 0),
(331, 53, 2, 'Llengua oral / Expressi�', 'Capacitat per fer-se entendre en diferents missatges orals. Dicci� i entonaci� de la llengua.', 0),
(333, 53, 3, 'Treball sistem�tic / Fon�tica - ortografia', 'Identificaci� i articulaci� de sons propis del castell� (j, g, z, c ). Escriptura de les grafies (�, y, ch).', 0),
(334, 53, 4, 'Treball sistem�tic / L�xic', 'Ampliaci� de vocabulari i precisi� en el seu �s. �s de frases fetes i locucions (maneres de dir).', 0),
(335, 54, 0, 'LLENGUA CASTELLANA', 'Cicle Inicial', 0),
(336, 54, 1, 'Llengua oral / Comprensi�', 'Comprensi� de relats, explicacions i argumentacions.', 0),
(337, 54, 2, 'Llengua oral / Expressi�', 'Capacitat per fer-se entendre en diferents missatges orals. Dicci� i entonaci� de la llengua.', 0),
(338, 54, 3, 'Llengua escrita / Comprensi�', 'Comprensi� de diferents tipus de textos: contes, can�ons, endevinalles, refranys.', 0),
(339, 54, 4, 'Treball sistem�tic / Fon�tica - ortografia', 'Identificaci� i articulaci� de sons propis del castell� (j, g, z, c ). Escriptura de les grafies (�, y, ch).', 0),
(340, 54, 5, 'Treball sistem�tic / L�xic', 'Ampliaci� de vocabulari i precisi� en el seu �s. �s de frases fetes i locucions (maneres de dir).', 0),
(341, 54, 6, 'Treball sistem�tic / Gram�tica', 'Concordan�a de g�nere, nombre i persona.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `opcions`
--

CREATE TABLE IF NOT EXISTS `opcions` (
  `nom` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `valor` text COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`nom`)
) ENGINE=MyIsam DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `opcions`
--

INSERT INTO `opcions` (`nom`, `valor`) VALUES
('data_informe', '(mes) (any)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
