-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2016 a las 07:51:12
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cpdb`
--
CREATE DATABASE IF NOT EXISTS `cpdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `cpdb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `idArticulo` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_bin NOT NULL,
  `preview` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `contenido` varchar(20000) COLLATE utf8_bin NOT NULL,
  `idPersonal` int(11) NOT NULL,
  `idSubseccion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `especial` tinyint(1) NOT NULL DEFAULT '0',
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idArticulo`, `titulo`, `preview`, `contenido`, `idPersonal`, `idSubseccion`, `fecha`, `hora`, `especial`, `activo`) VALUES
(6, '2015 a la historia por crÃ­menes', 'Juez decidiÃ³ incorporar al proceso mÃ©dico del exmandatario a doctores del Hospital Nacional Rosales para que tambiÃ©n decidan la nueva fecha de la intervenciÃ³n quirurgica', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 28, '2016-01-07', '14:29:19', 0, 1),
(7, 'Transporte pÃºblico con 93 asesinados y millonarias pÃ©rdidas', 'La ventaja de Macri empezÃ³ a revelarse desde las primeras horas del escrutinio de votos. AsÃ­ terminan doce aÃ±os de gobiernos kirchneristas', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 37, '2016-01-06', '11:25:24', 0, 1),
(8, 'A Pacheco no lo habrÃ­an asesinado las maras', 'El deportista es una de las 20 vÃ­ctimas mortales diarias que ocurren en El Salvador a causa de la violencia delincuencial y social', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 37, '2016-01-05', '06:14:15', 0, 1),
(9, 'Altos y bajos en AmÃ©rica Latina', 'Al cierre de aÃ±o el sur y el centro de la regiÃ³n parecen estar divididas, mientras algunos logran una leve recuperaciÃ³n econÃ³mica, otros perciben incertidumbre de cara al 2016', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 7, 37, '2016-01-05', '08:26:18', 0, 1),
(10, 'Matan a exseleccionado nacional Alfredo Pacheco', 'El futbolista, suspendido de por vida por amaÃ±os de partidos, fue asesinado en una gasolinera de Santa Ana.', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 7, 41, '2016-01-04', '07:19:20', 0, 1),
(11, 'En la UES otra rectora es posible.', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 8, 3, '2016-01-07', '09:22:23', 0, 1),
(12, 'La destrucciÃ³n post-electoral (6D) del gobierno Maduro', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 9, 3, '2016-01-06', '10:24:23', 0, 1),
(13, 'Â¿Por quÃ© es importante el 25 de noviembre?', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 10, 3, '2016-01-05', '08:12:34', 0, 1),
(14, 'JerusalÃ©m', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 11, 3, '2016-01-04', '04:06:12', 0, 1),
(15, 'AES reconocida por esfuerzo en eficiencia energetica', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 11, 45, '2016-01-07', '08:28:28', 0, 1),
(16, 'Sector privado, motor para el desarrollo', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 11, 45, '2016-01-06', '07:21:22', 0, 1),
(17, 'ASI: tarifas restan competitividad a industria', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 12, 45, '2016-01-05', '08:27:23', 0, 1),
(18, 'Exportaciones de America Latina', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 3, 49, '2016-01-07', '07:18:19', 0, 1),
(19, 'Exportar importa', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 12, 49, '2016-01-07', '07:20:23', 0, 1),
(20, 'Economia salvadorena', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 11, 46, '2016-01-08', '04:14:17', 0, 1),
(21, 'AES reconocida por esfuerzo en eficiencia energetica', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 12, 46, '2016-01-07', '06:18:19', 0, 1),
(22, 'Castigaran cobro ilegal en recargas', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 12, 46, '2016-01-06', '04:12:34', 0, 1),
(23, 'Lo bueno, lo malo y lo feo de la Sentencia sobre la Ley de Telecomunicaciones', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 13, 4, '2016-01-07', '08:21:27', 0, 1),
(24, 'Noviembre con menos homicidios que octubre', 'Los pandilleros tienen claro que si siguen en la logica de la criminalidad, les espera muerte o carcel, acoto Misael Mejia, diputado efemelenista', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 28, '2016-01-08', '07:22:18', 0, 1),
(25, 'Curry alaba la creatividad de Messi... No sabes que va a hacer', 'Stephen Curry, el mejor jugador de baloncesto del momento, es un fan del futbolista argentino Lionel Messi, con el que comparte un estilo creativo', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 41, '2016-01-08', '06:20:16', 0, 1),
(26, 'Socialismo por revolucion pacifica', 'Transformar un modelo economico social que por tiempo excluyo a sectores desprotegidos no es una meta facil, dice fundador del FMLN', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 7, 6, '2016-01-08', '10:18:32', 0, 1);
INSERT INTO `articulo` (`idArticulo`, `titulo`, `preview`, `contenido`, `idPersonal`, `idSubseccion`, `fecha`, `hora`, `especial`, `activo`) VALUES
(27, 'La ley del menor', 'El estilo es realista, directo y austero como todas las obras de McEwan. Nunca hay digresiones o adornos literarios', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 3, 57, '2016-01-08', '07:28:20', 0, 1),
(28, 'Produciendo diferente, produciendo agroecologico', 'Ante los efectos del cambio climatico, agricultores ya buscan nuevas alternativas y formas de producir, entre ellas la agroecologica', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 15, 34, '2016-01-09', '06:24:18', 0, 1),
(29, 'A juicio expresidente Flores', 'Garcia Arguello aseguro que se abrio una cuenta bancaria a nombre del COENA ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 37, '2016-01-09', '07:26:19', 0, 1),
(30, 'IndezoquixtiA: musica y libertad', 'Con un estilo singular, IndezoquixtiA promueve la musica y mensajes de reflexion para el rescate de una cultura por tiempo negada', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 42, '2016-01-09', '07:38:40', 0, 1),
(31, 'Nicaragua bloquea salida para inmigrantes cubanos', 'El canciller salvadoreno, Hugo Martinez, senalo que los paises actuaran con criterio de autodetermiancion para resolver crisis migratoria ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 55, '2016-01-09', '10:26:26', 0, 1),
(32, 'Plazos traicioneros', 'Una semana antes del viaje mas de cinco mil soldados, policias y guardias realizaban una intensa ofensiva en zonas de presencia rebelde en el departamento de Morazan...', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 16, 54, '2016-01-10', '06:20:21', 0, 1),
(33, 'Enrique Alvarez Cordova entrego su vida por los pobres', 'El 27 de noviembre de 1980, Enrique Alvarez Cordova (1930-1980), nacido dentro de las Catorce Familias mas poderosas de El Salvador, tres veces ministro de agricultura, es asesinado junto a dirigentes del FDR. ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 17, 59, '2016-01-10', '08:22:22', 0, 1),
(34, 'Consecuencias del abuso infanto juvenil', 'En general, el nino o adolescente que es abusado por un familiar suele quedar atrapado entre el afecto y la lealtad debidos a esa persona, y la inconveniencia del abuso de que es objeto', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 18, 35, '2016-01-10', '09:20:09', 0, 1),
(35, 'El sexo: durante y despues del cancer de seno', 'Al menos el 70 de las personas que sufren esta enfermedad confiesan haber tenido problemas con el sexo', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 58, '2016-01-10', '07:22:20', 0, 1),
(36, 'Vigencia Ellacuria', 'El mejor homenaje a nuestros asesinados en las guerras de ayer y de hoy es fortalecer nuestro espiritu critico, nuestras exigencias como sociedad y nuestras propuestas y formulas de solucion', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 1, '2016-01-11', '08:20:21', 0, 1),
(37, 'Estamos con ganas de justicia en Caso Jesuitas', 'La querellante Almudena Berbaneu dijo que existe nueva jurispridencia en El Salvador para arrestar y extraditar a los perseguidos', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 19, 37, '2016-01-09', '09:22:24', 1, 1),
(38, 'Corruptos desaciertos en El Salvador', 'La ley de probidad aprobada recientemente por el Legislativo carece de aspectos fundamentales para el combate a la verdadera currupcion, segun analistas', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 7, 37, '2016-01-10', '07:22:18', 1, 1),
(39, 'Ficciones: el intelectual y el poder en El Salvador (1928-1932)', 'A la historia en boga segun la cual el general Martinez gobierna solo por terror y opresion, el proyecto ficticio agrega una hipotesis descabellada y engorrosa, a saber: el apoyo ideologico e intelectual a su Presidencia ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 19, 37, '2016-01-11', '07:13:07', 1, 1),
(40, '2016 el desafio del hacer	', 'Si la Republica Popular de China tuviera nuestra misma tasa de homicidios, en este ano registraria mas de 13 millones de asesinados', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 1, 1, '2016-01-13', '08:15:20', 0, 1),
(41, 'Del Purgatorio al Infierno, un paso	', 'En El Salvador se cometen 11,8 veces mas homicidios que en Chile la tasa de homicidios de El Salvador es 33 veces mayor que la chilena', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 2, 1, '2016-01-14', '06:19:16', 0, 1),
(42, 'Una nueva era de innovaciones en la atencion de la salud', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 3, 4, '2016-01-14', '06:22:21', 0, 1),
(43, 'Dos derrotas a la democracia iliberal', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 2, 4, '2016-01-15', '08:21:21', 0, 1),
(44, 'Accion y reaccion', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 10, 6, '2016-01-04', '08:23:16', 0, 1),
(45, 'El peligro cultural', NULL, '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 6, '2016-01-01', '07:20:21', 0, 1),
(46, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 38, '2016-01-15', '09:24:21', 0, 1);
INSERT INTO `articulo` (`idArticulo`, `titulo`, `preview`, `contenido`, `idPersonal`, `idSubseccion`, `fecha`, `hora`, `especial`, `activo`) VALUES
(47, 'Telefonicas ofrecen dinero para renovar frecuencias', 'Durante la entrega de titulos de propiedad del ITSA, se presento la politica institucional', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 7, 38, '2016-01-14', '07:24:20', 0, 1),
(48, 'GOES entrega seis mil titulos de propiedad', 'Durante la entrega de titulos de propiedad del ITSA, se presento la politica institucional', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 11, 38, '2016-01-15', '09:21:21', 0, 1),
(49, 'Francisco Flores', 'Juez decidio incorporar al proceso medico del exmandatario a doctores del Hospital Nacional Rosales para que tambien decidan la nueva fecha de la intervencion quirurgica', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 9, 39, '2016-01-15', '11:33:19', 0, 1),
(50, 'GOES entrega seis mil titulos de propiedad', 'Durante la entrega de titulos de propiedad del ITSA, se presento la politica institucional\r\n', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 12, 39, '2016-01-13', '10:00:16', 0, 1),
(51, 'GOES entrega seis mil titulos de propiedad', 'Durante la entrega de titulos de propiedad del ITSA, se presento la politica institucional\r\n', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 6, 39, '2016-01-12', '10:00:16', 0, 1),
(52, 'Juez envia a prision a Otto Perez', 'A pesar de que el exmandatario acudio voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 42, '2016-01-16', '08:21:17', 0, 1),
(53, 'Perez Molina renuncia a la presidencia', 'El Congreso de Guatemala convoco hoy a su junta a una reunion para conocer la carta de renuncia del jefe de Estado', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 42, '2016-01-15', '12:34:33', 0, 1),
(54, 'Dictan orden de captura contra Otto Perez Molina', 'La orden se gira un dia despues de que el Congreso le retirara la inmunidad y a solo cuatro dias de las elecciones en Guatemala', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 42, '2016-01-15', '03:12:34', 0, 1),
(55, 'La oposicion venezolana se impone al chavismo', 'El resultado favorable a la oposicion representa una derrota inedita en casi 17 anos para el gobierno bolivariano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 43, '2016-01-16', '09:23:21', 0, 1),
(56, 'Guatemala con los ojos en las urnas', 'Tras escandalos de corrupcion y malestar social, en segunda vuelta los guatemaltecos deben elegir entre la exprimera dama y el comediante', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 43, '2016-01-15', '08:21:00', 0, 1),
(57, 'Policia nicaraguense reprime Mina El Limon', 'Se calcula que unas 23 personas se encuentran detenidas y 15 pobladores estan heridos. Diez policias estan golpeados ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 43, '2016-01-14', '12:12:12', 0, 1),
(58, 'Contra el Cambio Climatico, el Acuerdo de Paris', 'La reduccion de los gases de efecto invernadero sera a futuro tarea de todos los paises y no solamente de los industrializados', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 44, '2016-01-16', '08:30:30', 0, 1),
(59, 'Nicaragua bloquea salida para inmigrantes cubanos', 'La reduccion de los gases de efecto invernadero sera a futuro tarea de todos los paises y no solamente de los industrializados', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 44, '2016-01-15', '10:16:34', 0, 1),
(60, 'Costa Rica confia en solucion a conflicto de emigrantes cubanos', 'La reduccion de los gases de efecto invernadero sera a futuro tarea de todos los paises y no solamente de los industrializados', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 44, '2016-01-14', '12:13:14', 0, 1),
(61, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 27, '2016-01-16', '12:12:12', 0, 1),
(62, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 27, '2016-01-16', '12:12:12', 0, 1),
(63, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 27, '2016-01-16', '12:12:12', 0, 1),
(64, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 28, '2016-01-16', '12:12:12', 0, 1),
(65, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 28, '2016-01-16', '12:12:12', 0, 1),
(66, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 28, '2016-01-16', '12:12:12', 0, 1);
INSERT INTO `articulo` (`idArticulo`, `titulo`, `preview`, `contenido`, `idPersonal`, `idSubseccion`, `fecha`, `hora`, `especial`, `activo`) VALUES
(67, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 29, '2016-01-16', '12:12:12', 0, 1),
(68, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 29, '2016-01-16', '12:12:12', 0, 1),
(69, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 29, '2016-01-16', '12:12:12', 0, 1),
(70, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 30, '2016-01-16', '12:12:12', 0, 1),
(71, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 30, '2016-01-16', '12:12:12', 0, 1),
(72, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 30, '2016-01-16', '12:12:12', 0, 1),
(73, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 31, '2016-01-16', '12:12:12', 0, 1),
(74, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 31, '2016-01-16', '12:12:12', 0, 1),
(75, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 31, '2016-01-16', '12:12:12', 0, 1),
(76, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 32, '2016-01-16', '12:12:12', 0, 1),
(77, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 32, '2016-01-16', '12:12:12', 0, 1),
(78, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 32, '2016-01-16', '12:12:12', 0, 1),
(79, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 33, '2016-01-16', '12:12:12', 0, 1),
(80, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 33, '2016-01-16', '12:12:12', 0, 1),
(81, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 33, '2016-01-16', '12:12:12', 0, 1),
(82, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 34, '2016-01-16', '12:12:12', 0, 1),
(83, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 34, '2016-01-16', '12:12:12', 0, 1),
(84, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 34, '2016-01-16', '12:12:12', 0, 1),
(85, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 35, '2016-01-16', '12:12:12', 0, 1),
(86, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 35, '2016-01-16', '12:12:12', 0, 1),
(87, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 35, '2016-01-16', '12:12:12', 0, 1);
INSERT INTO `articulo` (`idArticulo`, `titulo`, `preview`, `contenido`, `idPersonal`, `idSubseccion`, `fecha`, `hora`, `especial`, `activo`) VALUES
(88, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 36, '2016-01-16', '12:12:12', 0, 1),
(89, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 36, '2016-01-16', '12:12:12', 0, 1),
(90, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 36, '2016-01-16', '12:12:12', 0, 1),
(91, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 45, '2016-01-16', '12:12:12', 0, 1),
(92, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 45, '2016-01-16', '12:12:12', 0, 1),
(93, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 45, '2016-01-16', '12:12:12', 0, 1),
(94, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 46, '2016-01-16', '12:12:12', 0, 1),
(95, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 46, '2016-01-16', '12:12:12', 0, 1),
(96, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 46, '2016-01-16', '12:12:12', 0, 1),
(97, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 47, '2016-01-16', '12:12:12', 0, 1),
(98, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 47, '2016-01-16', '12:12:12', 0, 1),
(99, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 47, '2016-01-16', '12:12:12', 0, 1),
(100, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 48, '2016-01-16', '12:12:12', 0, 1),
(101, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 48, '2016-01-16', '12:12:12', 0, 1),
(102, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 48, '2016-01-16', '12:12:12', 0, 1),
(103, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 49, '2016-01-16', '12:12:12', 0, 1),
(104, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 49, '2016-01-16', '12:12:12', 0, 1),
(105, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 49, '2016-01-16', '12:12:12', 0, 1),
(106, 'Francisco Flores', 'Literatura de opinion y agrado', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 56, '2016-01-16', '10:21:17', 0, 1),
(107, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 40, '2016-01-16', '12:12:12', 0, 1);
INSERT INTO `articulo` (`idArticulo`, `titulo`, `preview`, `contenido`, `idPersonal`, `idSubseccion`, `fecha`, `hora`, `especial`, `activo`) VALUES
(108, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 40, '2016-01-16', '12:12:12', 0, 1),
(109, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 40, '2016-01-16', '12:12:12', 0, 1),
(110, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 41, '2016-01-16', '12:12:12', 0, 1),
(111, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 41, '2016-01-16', '12:12:12', 0, 1),
(112, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 14, 41, '2016-01-16', '12:12:12', 0, 1),
(113, 'Columa de prueba', 'esta columna es de prueba', '<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like theyre actually proud of that shit. </p> <p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I dont know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that Im breaking now. We said wed say it was the snow that killed the other two, but it wasnt. Nature is lethal but it doesnt hold a candle to man. </p> <p>Well, the way they make shows is, they make one show. That shows called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if theyre going to make more shows. Some pilots get picked and become television programs. Some dont, become nothing. She starred in one of the ones that became nothing. </p>', 2, 2, '2016-01-13', '08:21:21', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `idBanner` int(11) NOT NULL,
  `rutaFoto` varchar(200) COLLATE utf8_bin NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idPosicion` int(11) NOT NULL,
  `link` varchar(80) COLLATE utf8_bin NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`idBanner`, `rutaFoto`, `idCliente`, `idPosicion`, `link`, `activo`) VALUES
(1, 'img/ex/1ads1.png', 1, 1, 'http://albapetroleos.com.sv/', 1),
(2, 'img/ex/1ads2.png', 2, 1, 'http://www.superselectos.com/', 1),
(3, 'img/ex/2ads1.png', 3, 2, 'http://www.walmart.com/', 1),
(4, 'http://hotelperunews.com/wp-content/uploads/2015/07/Decameron-Hotel-Punta-Sal.jpg', 1, 21, 'http://www.walmart.com/', 1),
(5, 'img/ex/3ads1.png', 2, 3, 'http://albapetroleos.com.sv/', 1),
(6, 'img/ex/4ads1.png', 2, 4, 'http://albapetroleos.com.sv/', 1),
(7, 'img/ex/5ads1.png', 3, 5, 'http://www.rdarchivo.net/', 1),
(8, 'img/ex/5ads2.png', 2, 5, 'http://contracultura.com.sv', 1),
(9, 'img/ex/3ads1.png', 2, 6, 'http://contracultura.com.sv', 1),
(10, 'img/ex/4ads1.png', 3, 7, 'http://contracultura.com.sv', 1),
(11, 'img/ex/2ads1.png', 1, 8, 'http://contracultura.com.sv', 1),
(12, 'img/ex/8ads1.png', 1, 9, 'http://contracultura.com.sv', 1),
(13, 'img/ex/10ads1.png', 3, 10, 'http://contracultura.com.sv', 1),
(14, 'img/ex/11ads1.png', 3, 11, 'http://contracultura.com.sv', 1),
(15, 'img/ex/3ads1.png', 2, 12, 'http://contracultura.com.sv', 1),
(16, 'img/ex/3ads1.png', 1, 13, 'http://contracultura.com.sv', 1),
(17, 'img/ex/11ads1.png', 3, 14, 'http://contracultura.com.sv', 1),
(18, 'img/ex/11ads1.png', 1, 15, 'http://www.contrapunto.com.sv/economia1', 1),
(19, 'img/ex/11ads1.png', 2, 16, 'http://www.contrapunto.com.sv/economia1', 1),
(20, 'img/ex/11ads1.png', 3, 17, 'http://www.contrapunto.com.sv/economia1', 1),
(21, 'img/ex/3ads1.png', 1, 18, 'http://www.contrapunto.com.sv/economia1', 1),
(22, 'img/ex/3ads1.png', 2, 19, 'http://www.contrapunto.com.sv/economia1', 1),
(23, 'img/ex/3ads1.png', 1, 20, 'http://www.contrapunto.com.sv/economia1', 1),
(24, 'img/ex/1ads1.png', 2, 22, 'http://cinepolis.com.sv/', 1),
(25, 'img/ex/1ads2.png', 3, 22, 'http://cinepolis.com.sv/', 1),
(26, 'img/ex/2ads1.png', 2, 23, 'http://cinepolis.com.sv/', 1),
(27, 'img/ex/2ads1.png', 1, 23, 'http://cinepolis.com.sv/', 1),
(28, 'img/ex/4ads1.png', 2, 24, 'http://cinepolis.com.sv/', 1),
(29, 'img/ex/3ads1.png', 3, 25, 'http://cinepolis.com.sv/', 1),
(30, 'http://hotelperunews.com/wp-content/uploads/2015/07/Decameron-Hotel-Punta-Sal.jpg', 3, 28, 'https://www.google.com.sv/', 1),
(31, 'img/ex/adsPost.png', 1, 29, 'https://www.google.com.sv/', 1),
(36, 'img/ex/1ads1.png', 1, 30, 'http://albapetroleos.com.sv/', 1),
(37, 'img/ex/1ads1.png', 1, 38, 'http://albapetroleos.com.sv/', 1),
(38, 'img/ex/1ads1.png', 1, 44, 'http://albapetroleos.com.sv/', 1),
(39, 'img/ex/1ads1.png', 1, 50, 'http://albapetroleos.com.sv/', 1),
(40, 'img/ex/1ads1.png', 1, 56, 'http://albapetroleos.com.sv/', 1),
(41, 'img/ex/1ads1.png', 1, 62, 'http://albapetroleos.com.sv/', 1),
(48, 'img/ex/1ads2.png', 2, 30, 'http://albapetroleos.com.sv/', 1),
(49, 'img/ex/1ads2.png', 2, 38, 'http://albapetroleos.com.sv/', 1),
(50, 'img/ex/1ads2.png', 2, 44, 'http://albapetroleos.com.sv/', 1),
(51, 'img/ex/1ads2.png', 2, 50, 'http://albapetroleos.com.sv/', 1),
(52, 'img/ex/1ads2.png', 2, 56, 'http://albapetroleos.com.sv/', 1),
(53, 'img/ex/1ads2.png', 2, 62, 'http://albapetroleos.com.sv/', 1),
(54, 'img/ex/2ads1.png', 2, 31, 'http://albapetroleos.com.sv/', 1),
(55, 'img/ex/2ads1.png', 2, 39, 'http://albapetroleos.com.sv/', 1),
(56, 'img/ex/2ads1.png', 2, 45, 'http://albapetroleos.com.sv/', 1),
(57, 'img/ex/2ads1.png', 2, 51, 'http://albapetroleos.com.sv/', 1),
(58, 'img/ex/2ads1.png', 2, 57, 'http://albapetroleos.com.sv/', 1),
(59, 'img/ex/2ads1.png', 2, 63, 'http://albapetroleos.com.sv/', 1),
(60, 'img/ex/4ads1.png', 2, 32, 'http://albapetroleos.com.sv/', 1),
(61, 'img/ex/4ads1.png', 2, 40, 'http://albapetroleos.com.sv/', 1),
(62, 'img/ex/4ads1.png', 2, 46, 'http://albapetroleos.com.sv/', 1),
(63, 'img/ex/4ads1.png', 2, 52, 'http://albapetroleos.com.sv/', 1),
(64, 'img/ex/4ads1.png', 2, 58, 'http://albapetroleos.com.sv/', 1),
(65, 'img/ex/4ads1.png', 2, 64, 'http://albapetroleos.com.sv/', 1),
(66, 'img/ex/3ads1.png', 2, 33, 'http://albapetroleos.com.sv/', 1),
(67, 'img/ex/3ads1.png', 2, 41, 'http://albapetroleos.com.sv/', 1),
(68, 'img/ex/3ads1.png', 2, 47, 'http://albapetroleos.com.sv/', 1),
(69, 'img/ex/3ads1.png', 2, 53, 'http://albapetroleos.com.sv/', 1),
(70, 'img/ex/3ads1.png', 2, 59, 'http://albapetroleos.com.sv/', 1),
(71, 'img/ex/3ads1.png', 2, 65, 'http://albapetroleos.com.sv/', 1),
(72, 'http://hotelperunews.com/wp-content/uploads/2015/07/Decameron-Hotel-Punta-Sal.jpg', 2, 36, 'http://albapetroleos.com.sv/', 1),
(73, 'http://hotelperunews.com/wp-content/uploads/2015/07/Decameron-Hotel-Punta-Sal.jpg', 2, 42, 'http://albapetroleos.com.sv/', 1),
(74, 'http://hotelperunews.com/wp-content/uploads/2015/07/Decameron-Hotel-Punta-Sal.jpg', 2, 48, 'http://albapetroleos.com.sv/', 1),
(75, 'http://hotelperunews.com/wp-content/uploads/2015/07/Decameron-Hotel-Punta-Sal.jpg', 2, 54, 'http://albapetroleos.com.sv/', 1),
(76, 'http://hotelperunews.com/wp-content/uploads/2015/07/Decameron-Hotel-Punta-Sal.jpg', 2, 60, 'http://albapetroleos.com.sv/', 1),
(77, 'http://hotelperunews.com/wp-content/uploads/2015/07/Decameron-Hotel-Punta-Sal.jpg', 2, 66, 'http://albapetroleos.com.sv/', 1),
(78, 'img/ex/adsPost.png', 2, 37, 'http://albapetroleos.com.sv/', 1),
(79, 'img/ex/adsPost.png', 2, 43, 'http://albapetroleos.com.sv/', 1),
(80, 'img/ex/adsPost.png', 2, 49, 'http://albapetroleos.com.sv/', 1),
(81, 'img/ex/adsPost.png', 2, 55, 'http://albapetroleos.com.sv/', 1),
(82, 'img/ex/adsPost.png', 2, 61, 'http://albapetroleos.com.sv/', 1),
(83, 'img/ex/adsPost.png', 2, 67, 'http://albapetroleos.com.sv/', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bolsa`
--

CREATE TABLE IF NOT EXISTS `bolsa` (
  `idBolsa` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_bin NOT NULL,
  `porcentaje` float NOT NULL,
  `valor` float DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `bolsa`
--

INSERT INTO `bolsa` (`idBolsa`, `nombre`, `porcentaje`, `valor`, `fecha`) VALUES
(1, 'Dow Jones', 2.39, 15944.5, '2016-02-20'),
(2, 'Nasdaq', -2.74, 15944.5, '2016-02-20'),
(3, 'FTSE 100', -1.93, 15944.5, '2016-02-20'),
(4, 'DAX', 2.54, 15944.5, '2016-02-20'),
(5, 'CAC-40', -2.38, 15944.5, '2016-02-20'),
(6, 'Nikkei', -0.54, 15944.5, '2016-02-20'),
(7, 'IPC', -1.22, 15944.5, '2016-02-20'),
(8, 'BOVESPA', -2.36, 15944.5, '2016-02-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caricatura`
--

CREATE TABLE IF NOT EXISTS `caricatura` (
  `idCaricatura` int(11) NOT NULL,
  `rutaFoto` varchar(100) COLLATE utf8_bin NOT NULL,
  `idCaricaturista` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `caricatura`
--

INSERT INTO `caricatura` (`idCaricatura`, `rutaFoto`, `idCaricaturista`, `fecha`, `hora`) VALUES
(1, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/postal-cortazar-contrapunta.jpg', 1, '2016-02-15', '08:15:16'),
(2, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/nueva4.jpg', 1, '2016-02-14', '05:12:16'),
(3, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/lennon-vive-AMCdonald.jpg', 1, '2016-02-12', '05:12:24'),
(4, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/aniversario-fidel.jpg', 1, '2016-02-13', '04:12:24'),
(5, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/gabo-escritor.jpg', 1, '2016-02-10', '05:12:24'),
(11, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/gabo-escritor.jpg', 1, '2016-02-02', '07:18:17'),
(12, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/aniversario-fidel.jpg', 1, '2016-02-01', '08:20:18'),
(13, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/lennon-vive-AMCdonald.jpg', 1, '2016-01-31', '12:12:12'),
(14, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/nueva4.jpg', 1, '2016-01-30', '12:12:12'),
(15, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/postal-cortazar-contrapunta.jpg', 1, '2015-12-13', '12:12:12'),
(16, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/lennon-vive-AMCdonald.jpg', 1, '2015-11-06', '12:12:12'),
(17, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/aniversario-fidel.jpg', 1, '2015-11-09', '06:15:14'),
(18, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/nueva4.jpg', 1, '2015-10-05', '06:23:18'),
(19, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/postal-cortazar-contrapunta.jpg', 1, '2015-10-15', '06:16:20'),
(20, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/gabo-escritor.jpg', 1, '2015-10-17', '06:16:20'),
(21, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/aniversario-fidel.jpg', 1, '2015-10-18', '06:16:20'),
(22, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/nueva4.jpg', 1, '2015-10-18', '06:16:28'),
(23, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/postal-cortazar-contrapunta.jpg', 1, '2015-10-18', '06:16:29'),
(24, 'http://www.contrapunto.com.sv/documentosite/contrapunta/images/gabo-escritor.jpg', 1, '2015-06-07', '20:13:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caricaturista`
--

CREATE TABLE IF NOT EXISTS `caricaturista` (
  `idCaricaturista` int(11) NOT NULL,
  `nombres` varchar(60) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `caricaturista`
--

INSERT INTO `caricaturista` (`idCaricaturista`, `nombres`, `apellidos`) VALUES
(1, 'Allan', 'McDonald');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `rutaFoto` varchar(200) COLLATE utf8_bin NOT NULL,
  `ingreso` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombre`, `rutaFoto`, `ingreso`) VALUES
(1, 'Alba', 'https://lh4.googleusercontent.com/-JFUghiFoWZE/AAAAAAAAAAI/AAAAAAAAABU/I8afPaJFq1s/photo.jpg', '2016-02-16'),
(2, 'Selectos', 'http://wscont1.apps.microsoft.com/winstore//1x/113e9c6e-183b-4c34-9b0f-9c9546e722a1/Screenshot.329170.100000.jpg', '2016-02-16'),
(3, 'Walmart', 'http://www.ofertasahora.com/wp-content/uploads/2013/09/logo-WALMART.png', '2016-02-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `columna`
--

CREATE TABLE IF NOT EXISTS `columna` (
  `idColumna` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_bin NOT NULL,
  `contenido` varchar(20000) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `idSubseccion` int(11) NOT NULL,
  `idPersonal` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `columna`
--

INSERT INTO `columna` (`idColumna`, `titulo`, `contenido`, `fecha`, `hora`, `idSubseccion`, `idPersonal`, `activo`) VALUES
(3, 'Violencia cultural salvadorena', 'hola', '2016-01-14', '08:20:24', 30, 1, 1),
(4, 'Horizontalidad y liderazgo salvadoreno', 'hola', '2016-01-13', '07:19:16', 33, 2, 1),
(8, 'Candidato eterno', 'hola', '2016-01-12', '10:19:30', 31, 3, 1),
(9, 'Alegre rebeldia', 'hola', '2016-01-11', '07:19:20', 33, 4, 1),
(10, 'Paris, 13/09', 'hola', '2016-01-10', '08:23:21', 32, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datoseconomicos`
--

CREATE TABLE IF NOT EXISTS `datoseconomicos` (
  `idDatos` int(11) NOT NULL,
  `indicador` varchar(50) COLLATE utf8_bin NOT NULL,
  `periodo` varchar(20) COLLATE utf8_bin NOT NULL,
  `cifras` float NOT NULL,
  `enlaceDetalles` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `datoseconomicos`
--

INSERT INTO `datoseconomicos` (`idDatos`, `indicador`, `periodo`, `cifras`, `enlaceDetalles`) VALUES
(1, 'PIB trimestral', 'II - 2015', 2.4, 'http://www.bcr.gob.sv/bcrsite/?x21=30&lang=es'),
(2, 'InflaciÃ³n', 'Ago. 2015', -2, 'http://www.bcr.gob.sv/bcrsite/?x21=73&lang=es'),
(3, 'InflaciÃ³n Subyacente', 'Ago. 2015', 0, 'http://www.bcr.gob.sv/bcrsite/?cdr=142&lang=es'),
(4, 'Exportaciones', '01 - 08 2015', 5.4, 'http://www.bcr.gob.sv/bcrsite/?x21=35&lang=es'),
(5, 'Importaciones', '01 - 08 2015', -1.3, 'http://www.bcr.gob.sv/bcrsite/?x21=35&lang=es'),
(6, 'Remesas familiares', '01 - 08 2015', 1.8, 'http://www.bcr.gob.sv/bcrsite/?x21=46&lang=es'),
(7, 'Tasa DepÃ³sitos (180 dias)', 'Ago. 2015', 4.09, 'http://www.bcr.gob.sv/bcrsite/?x21=53&lang=es'),
(8, 'Tasa PrÃ©stamos (<= 1 aÃ±o)', 'Ago. 2015', 5.93, 'http://www.bcr.gob.sv/bcrsite/?x21=53&lang=es'),
(9, 'IVAE TC', 'Jul. 2015', 1.9, 'http://www.bcr.gob.sv/bcrsite/?x21=34&lang=es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisa`
--

CREATE TABLE IF NOT EXISTS `divisa` (
  `idDivisa` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_bin NOT NULL,
  `cambio` float NOT NULL,
  `pais` varchar(15) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `divisa`
--

INSERT INTO `divisa` (`idDivisa`, `nombre`, `cambio`, `pais`, `fecha`) VALUES
(1, 'Euro', 0.914, 'Europa', '2016-02-19'),
(2, 'Yen', 120.5, 'JapÃ³n', '2016-02-19'),
(3, 'LIBRA', 0.675, 'Reino Unido', '2016-02-19'),
(4, 'DÃ³lar', 1.388, 'CanadÃ¡', '2016-02-19'),
(5, 'Peso', 17.381, 'MÃ©xico', '2016-02-19'),
(6, 'Quetzal', 7.633, 'Guatemala', '2016-02-19'),
(7, 'Lempira', 22.355, 'Honduras', '2016-02-19'),
(8, 'CÃ³rdova', 27.924, 'Nicaragua', '2016-02-19'),
(9, 'ColÃ³n', 537.3, 'Costa Rica', '2016-02-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotogaleria`
--

CREATE TABLE IF NOT EXISTS `fotogaleria` (
  `id` int(11) NOT NULL,
  `rutaFoto` varchar(50) COLLATE utf8_bin NOT NULL,
  `link` varchar(300) COLLATE utf8_bin NOT NULL,
  `titulo` varchar(50) COLLATE utf8_bin NOT NULL,
  `idFotografo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fotogaleria`
--

INSERT INTO `fotogaleria` (`id`, `rutaFoto`, `link`, `titulo`, `idFotografo`, `fecha`, `hora`) VALUES
(1, 'img/fotogaleria1.jpg', 'http://www.contrapunto.com.sv', 'Tras el telon de Paco Flores', 3, '2016-01-11', '10:25:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotografo`
--

CREATE TABLE IF NOT EXISTS `fotografo` (
  `idFotografo` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fotografo`
--

INSERT INTO `fotografo` (`idFotografo`, `nombre`) VALUES
(1, 'Archivo Contrapunto'),
(2, 'Archivo'),
(3, 'Jessica Orellana'),
(4, 'Juan JosÃ© Dalton'),
(5, 'Ricardo MartÃ­n'),
(6, 'Internet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesarticulo`
--

CREATE TABLE IF NOT EXISTS `imagenesarticulo` (
  `idImagen` int(11) NOT NULL,
  `rutaFoto` varchar(150) COLLATE utf8_bin NOT NULL,
  `idArticulo` int(11) NOT NULL,
  `posicion` varchar(10) COLLATE utf8_bin NOT NULL,
  `idFotografo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `imagenesarticulo`
--

INSERT INTO `imagenesarticulo` (`idImagen`, `rutaFoto`, `idArticulo`, `posicion`, `idFotografo`) VALUES
(1, 'img/articulo1.jpg', 6, 'principal', 1),
(2, 'img/articulo2.jpg', 7, 'principal', 3),
(3, 'img/articulo3.jpg', 8, 'principal', 3),
(4, 'img/articulo4.jpg', 9, 'principal', 3),
(5, 'img/articulo5.jpg', 10, 'principal', 3),
(6, 'img/negocios1.jpg', 15, 'principal', 1),
(7, 'img/negocios2.jpg', 16, 'principal', 1),
(8, 'img/negocios3.jpg', 17, 'principal', 1),
(9, 'img/negocios1.jpg', 20, 'principal', 1),
(10, 'img/negocios2.jpg', 21, 'principal', 1),
(11, 'img/negocios3.jpg', 22, 'principal', 1),
(12, 'img/columnista4.png', 23, 'principal', 1),
(13, 'img/articulo3.jpg', 24, 'principal', 3),
(14, 'img/deporte1.jpg', 25, 'principal', 6),
(15, 'img/academia1.jpg', 26, 'principal', 6),
(16, 'img/resena1.jpg', 27, 'principal', 6),
(17, 'img/periodismo1.jpg', 28, 'principal', 6),
(18, 'img/casoflores2.jpg', 29, 'principal', 3),
(19, 'img/internacional1.jpg', 30, 'principal', 3),
(20, 'img/cultura1.jpg', 31, 'principal', 6),
(21, 'img/anecdota1.jpg', 32, 'principal', 6),
(22, 'img/columnista4.png', 33, 'principal', 6),
(23, 'img/rompiendo1.jpg', 34, 'principal', 1),
(24, 'img/tabu1.jpg', 35, 'principal', 6),
(25, 'img/especiales2.jpg', 37, 'principal', 4),
(26, 'img/especiales1.jpg', 38, 'principal', 3),
(27, 'img/especiales3.jpg', 39, 'principal', 6),
(28, 'img/gobierno1.jpg', 46, 'principal', 3),
(29, 'img/gobierno2.jpg', 47, 'principal', 3),
(30, 'img/gobierno3.jpg', 48, 'principal', 3),
(31, 'img/partidos1.jpg', 49, 'principal', 3),
(32, 'img/partidos2.jpg', 50, 'principal', 2),
(33, 'img/partidos2.jpg', 51, 'principal', 5),
(34, 'img/centro1.png', 52, 'principal', 3),
(35, 'img/centro2.jpg', 53, 'principal', 3),
(36, 'img/centro3.jpg', 54, 'principal', 3),
(37, 'img/lat1.jpg', 55, 'principal', 3),
(38, 'img/lat2.jpg', 56, 'principal', 3),
(39, 'img/lat3.jpg', 57, 'principal', 3),
(40, 'img/glob1.jpg', 58, 'principal', 3),
(41, 'img/glob2.jpg', 59, 'principal', 3),
(42, 'img/glob3.jpg', 60, 'principal', 3),
(43, 'img/partidos1.jpg', 61, 'principal', 6),
(44, 'img/partidos1.jpg', 62, 'principal', 6),
(45, 'img/partidos1.jpg', 63, 'principal', 6),
(46, 'img/partidos1.jpg', 64, 'principal', 6),
(47, 'img/partidos1.jpg', 65, 'principal', 6),
(48, 'img/partidos1.jpg', 66, 'principal', 6),
(49, 'img/partidos1.jpg', 67, 'principal', 6),
(50, 'img/partidos1.jpg', 68, 'principal', 6),
(51, 'img/partidos1.jpg', 69, 'principal', 6),
(52, 'img/partidos1.jpg', 70, 'principal', 6),
(53, 'img/partidos1.jpg', 71, 'principal', 6),
(54, 'img/partidos1.jpg', 72, 'principal', 6),
(55, 'img/partidos1.jpg', 73, 'principal', 6),
(56, 'img/partidos1.jpg', 74, 'principal', 6),
(57, 'img/partidos1.jpg', 75, 'principal', 6),
(58, 'img/partidos1.jpg', 76, 'principal', 6),
(59, 'img/partidos1.jpg', 77, 'principal', 6),
(60, 'img/partidos1.jpg', 78, 'principal', 6),
(61, 'img/partidos1.jpg', 79, 'principal', 6),
(62, 'img/partidos1.jpg', 80, 'principal', 6),
(63, 'img/partidos1.jpg', 81, 'principal', 6),
(64, 'img/partidos1.jpg', 82, 'principal', 6),
(65, 'img/partidos1.jpg', 83, 'principal', 6),
(66, 'img/partidos1.jpg', 84, 'principal', 6),
(67, 'img/partidos1.jpg', 85, 'principal', 6),
(68, 'img/partidos1.jpg', 86, 'principal', 6),
(69, 'img/partidos1.jpg', 87, 'principal', 6),
(70, 'img/partidos1.jpg', 88, 'principal', 6),
(71, 'img/partidos1.jpg', 89, 'principal', 6),
(72, 'img/partidos1.jpg', 90, 'principal', 6),
(73, 'img/negocios3.jpg', 91, 'principal', 6),
(74, 'img/negocios3.jpg', 92, 'principal', 6),
(75, 'img/negocios3.jpg', 93, 'principal', 6),
(76, 'img/negocios3.jpg', 94, 'principal', 6),
(77, 'img/negocios3.jpg', 95, 'principal', 6),
(78, 'img/negocios3.jpg', 96, 'principal', 6),
(79, 'img/negocios3.jpg', 97, 'principal', 6),
(80, 'img/negocios3.jpg', 98, 'principal', 6),
(81, 'img/negocios3.jpg', 99, 'principal', 6),
(82, 'img/negocios3.jpg', 100, 'principal', 6),
(83, 'img/negocios3.jpg', 101, 'principal', 6),
(84, 'img/negocios3.jpg', 102, 'principal', 6),
(85, 'img/negocios3.jpg', 103, 'principal', 6),
(86, 'img/negocios3.jpg', 104, 'principal', 6),
(87, 'img/negocios3.jpg', 105, 'principal', 6),
(88, 'img/lat1.jpg', 106, 'principal', 6),
(89, 'img/deporte1.jpg', 107, 'principal', 6),
(90, 'img/deporte1.jpg', 108, 'principal', 6),
(91, 'img/deporte1.jpg', 109, 'principal', 6),
(92, 'img/deporte1.jpg', 110, 'principal', 6),
(93, 'img/deporte1.jpg', 111, 'principal', 6),
(94, 'img/deporte1.jpg', 112, 'principal', 6),
(96, 'img/academia1.jpg', 44, 'principal', 2),
(97, 'img/academia1.jpg', 45, 'principal', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logusuario`
--

CREATE TABLE IF NOT EXISTS `logusuario` (
  `idUsuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mercado`
--

CREATE TABLE IF NOT EXISTS `mercado` (
  `idMercado` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(60) COLLATE utf8_bin NOT NULL,
  `cambio` float NOT NULL,
  `porcentaje` float NOT NULL,
  `menor` float NOT NULL,
  `masAlto` float NOT NULL,
  `ultimo` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `mercado`
--

INSERT INTO `mercado` (`idMercado`, `nombre`, `descripcion`, `cambio`, `porcentaje`, `menor`, `masAlto`, `ultimo`, `fecha`) VALUES
(1, 'PETROLEO', 'contrato  Nov 2015  $ / barril', 0.54, 2.06, 37.75, 77.83, 26.75, '2016-02-19'),
(2, 'CAFE', 'contrato  Dic 2015  Centavos de dolar por libra', -0.65, -0.57, 114.95, 197.15, 114.1, '2016-02-19'),
(3, 'AZUCAR', 'contrato  Jul. 2016  Centavos de dolar por libra', -0.6, -4.43, 11.28, 16.7, 12.94, '2016-02-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `idPersonal` int(11) NOT NULL,
  `nombres` varchar(25) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(25) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `cargo` varchar(15) COLLATE utf8_bin NOT NULL,
  `rutaFoto` varchar(25) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`idPersonal`, `nombres`, `apellidos`, `descripcion`, `cargo`, `rutaFoto`) VALUES
(1, 'JosÃ© Luis', 'Escamilla', NULL, 'columnista', 'img/columnista1.jpg'),
(2, 'Mario', 'Morales', NULL, 'columnista', 'img/columnista2.jpg'),
(3, 'RubÃ©n', 'Aguilar', NULL, 'columnista', 'img/columnista3.jpg'),
(4, 'BenjamÃ­n', 'Cuellar', NULL, 'columnista', 'img/columnista4.png'),
(5, 'Carlos', 'Molina', NULL, 'columnista', 'img/columnista5.jpg'),
(6, 'RedacciÃ³n', 'Contrapunto', NULL, 'periodista', 'img/redaccion.jpg'),
(7, 'Laura', 'Bernal', NULL, 'periodista', 'img/laura.jpg'),
(8, 'AngÃ©lica MarÃ­a', 'Rivas', NULL, 'columnista', 'img/angelica.jpg'),
(9, 'Heinz', 'Dieterich', NULL, 'columnista', 'img/heinz.jpg'),
(10, 'Fidelina', 'MartÃ­nez Castro', NULL, 'columnista', 'img/fidelina.jpg'),
(11, 'Donald Salvador', 'Donato', NULL, 'columnista', 'img/donald.jpg'),
(12, 'Ricardo', 'Hausmann', NULL, 'columnista', 'img/columnista6.jpg'),
(13, 'Leonel', 'Herrera', NULL, 'columnista', 'img/columnista1.jpg'),
(14, 'Dora', 'Reyes', 'The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men.', 'periodista', 'img/dora.jpg'),
(15, 'Katia', 'Aguilar', NULL, 'periodista', 'img/katia.jpg'),
(16, 'Alberto', 'Barrera', NULL, 'periodista', 'img/alberto.jpg'),
(17, 'Tania', 'Primavera', NULL, 'periodista', 'img/tania.jpg'),
(18, 'Dra. Margarita', 'Mendoza Burgos', NULL, 'periodista', 'img/margarita.jpg'),
(19, 'Juan Jose', 'Dalton', NULL, 'periodista', 'img/jjd.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posicion`
--

CREATE TABLE IF NOT EXISTS `posicion` (
  `idPosicion` int(11) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `posicion` varchar(10) COLLATE utf8_bin NOT NULL,
  `tiempo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `posicion`
--

INSERT INTO `posicion` (`idPosicion`, `idSeccion`, `posicion`, `tiempo`) VALUES
(1, 8, '1', 5000),
(2, 8, '2', 5000),
(3, 8, '3', 5000),
(4, 8, '4', 5000),
(5, 8, '5', 5000),
(6, 8, '6', 5000),
(7, 8, '7', 5000),
(8, 8, '8', 5000),
(9, 8, '9', 5000),
(10, 8, '10', 5000),
(11, 8, '11', 5000),
(12, 8, '12', 5000),
(13, 8, '13', 5000),
(14, 8, '14', 5000),
(15, 8, '15', 5000),
(16, 8, '16', 5000),
(17, 8, '17', 5000),
(18, 8, '18', 5000),
(19, 8, '19', 5000),
(20, 8, '20', 5000),
(21, 8, 'movil', 5000),
(22, 1, '1', 5000),
(23, 1, '2', 5000),
(24, 1, '3', 5000),
(25, 1, '4', 5000),
(28, 1, 'movil', 5000),
(29, 1, 'post', 5000),
(30, 2, '1', 5000),
(31, 2, '2', 5000),
(32, 2, '3', 5000),
(33, 2, '4', 5000),
(36, 2, 'movil', 5000),
(37, 2, 'post', 5000),
(38, 3, '1', 5000),
(39, 3, '2', 5000),
(40, 3, '3', 5000),
(41, 3, '4', 5000),
(42, 3, 'movil', 5000),
(43, 3, 'post', 5000),
(44, 4, '1', 5000),
(45, 4, '2', 5000),
(46, 4, '3', 5000),
(47, 4, '4', 5000),
(48, 4, 'movil', 5000),
(49, 4, 'post', 5000),
(50, 5, '1', 5000),
(51, 5, '2', 5000),
(52, 5, '3', 5000),
(53, 5, '4', 5000),
(54, 5, 'movil', 5000),
(55, 5, 'post', 5000),
(56, 6, '1', 5000),
(57, 6, '2', 5000),
(58, 6, '3', 5000),
(59, 6, '4', 5000),
(60, 6, 'movil', 5000),
(61, 6, 'post', 5000),
(62, 7, '1', 5000),
(63, 7, '2', 5000),
(64, 7, '3', 5000),
(65, 7, '4', 5000),
(66, 7, 'movil', 5000),
(67, 7, 'post', 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redespersonal`
--

CREATE TABLE IF NOT EXISTS `redespersonal` (
  `idRedPersonal` int(11) NOT NULL,
  `idPersonal` int(11) NOT NULL,
  `idRed` int(11) NOT NULL,
  `link` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `redespersonal`
--

INSERT INTO `redespersonal` (`idRedPersonal`, `idPersonal`, `idRed`, `link`) VALUES
(1, 14, 1, 'https://www.facebook.com/JaimeMcr'),
(2, 14, 2, 'https://twitter.com/jchavez_js'),
(3, 14, 3, 'https://plus.google.com/117961058833296954910'),
(4, 14, 4, 'https://www.linkedin.com/in/camila-oro-a54a033a'),
(5, 14, 5, 'jchavezlorenzana@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redessociales`
--

CREATE TABLE IF NOT EXISTS `redessociales` (
  `idRed` int(11) NOT NULL,
  `nombre` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `redessociales`
--

INSERT INTO `redessociales` (`idRed`, `nombre`) VALUES
(1, 'facebook'),
(2, 'twitter'),
(3, 'googleplus'),
(4, 'linkedin'),
(5, 'mail');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE IF NOT EXISTS `respuesta` (
  `idRespuesta` int(11) NOT NULL,
  `idSondeo` int(11) NOT NULL,
  `respuesta` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`idRespuesta`, `idSondeo`, `respuesta`) VALUES
(1, 1, 'Si, estoy de acuerdo'),
(2, 1, 'No estoy de acuerdo'),
(3, 2, 'Posiblemente'),
(4, 2, 'No me interesa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE IF NOT EXISTS `resultado` (
  `idRespuesta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE IF NOT EXISTS `seccion` (
  `idSeccion` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `url` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`idSeccion`, `nombre`, `url`) VALUES
(1, 'OpiniÃ³n', 'opinion'),
(2, 'PolÃ­tica', 'politica'),
(3, 'Internacionales', 'internacionales'),
(4, 'Sociedad', 'sociedad'),
(5, 'EconomÃ­a', 'economia'),
(6, 'Cultura', 'cultura'),
(7, 'Deportes', 'deportes'),
(8, 'Portada', '/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sondeo`
--

CREATE TABLE IF NOT EXISTS `sondeo` (
  `idSondeo` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_bin NOT NULL,
  `pregunta` varchar(200) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `rutaFoto` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `sondeo`
--

INSERT INTO `sondeo` (`idSondeo`, `titulo`, `pregunta`, `fecha`, `hora`, `rutaFoto`) VALUES
(1, 'Caso Jesuitas', 'Esta usted de acuerdo con que se lleven a espana a los militares involucrados en el caso Jesuita?', '2016-02-18', '07:18:19', 'http://www.contrapuntotv.net/cptvesa/wp-content/uploads/2016/02/JOV8638-copy.jpg'),
(2, 'Salarios de policia', 'Esta usted de acuerdo con que le aumenten el salario a los agentes de la PNC?', '2016-02-16', '09:24:23', 'http://www.contrapuntotv.net/cptvesa/wp-content/uploads/2016/01/JOV6782-copy.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subseccion`
--

CREATE TABLE IF NOT EXISTS `subseccion` (
  `idSubseccion` int(11) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `url` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `subseccion`
--

INSERT INTO `subseccion` (`idSubseccion`, `idSeccion`, `nombre`, `url`) VALUES
(1, 1, 'Editorial', 'editorial'),
(2, 1, 'Columnistas', 'columnistas'),
(3, 1, 'Tribuna libre', 'tribuna'),
(4, 1, 'Libertad de expresiÃ³n', 'libertad'),
(5, 1, 'Sondeo', 'sondeo'),
(6, 1, 'Academia', 'academia'),
(27, 4, 'Ambiente', 'ambiente'),
(28, 4, 'Violencia', 'violencia'),
(29, 4, 'Salud', 'salud'),
(30, 4, 'DD.HH', 'ddhh'),
(31, 4, 'EducaciÃ³n', 'educacion'),
(32, 4, 'MigraciÃ³n', 'migracion'),
(33, 4, 'GÃ©nero', 'genero'),
(34, 4, 'Periodismo Ciudadano', 'periodismociudadano'),
(35, 4, 'Rompiendo TabÃºes', 'rompiendotabues'),
(36, 4, 'Judicial', 'judicial'),
(37, 2, 'Sociedad Civil', 'sociedadcivil'),
(38, 2, 'Gobierno', 'gobierno'),
(39, 2, 'Partidos', 'partidos'),
(40, 7, 'CrÃ³nicas Deportivas', 'cronicasdeportivas'),
(41, 7, 'Acontecer Deportivo', 'acontecerdeportivo'),
(42, 3, 'CentroamÃ©rica', 'centroamerica'),
(43, 3, 'LatinoamÃ©rica', 'latinoamerica'),
(44, 3, 'Global', 'global'),
(45, 5, 'Negocios', 'negocios'),
(46, 5, 'Coyuntura EconÃ³mica', 'coyunturaeconomica'),
(47, 5, 'Mundo EconÃ³mico', 'mundoeconomico'),
(48, 5, 'Mercado Laboral', 'mercadolaboral'),
(49, 5, 'AnalÃ­sis EconÃ³mico', 'analisiseconomico'),
(54, 6, 'La anÃ©cdota', 'anecdota'),
(55, 6, 'Artes', 'artes'),
(56, 6, 'Literatura', 'literatura'),
(57, 6, 'ReseÃ±as', 'resenas'),
(58, 6, 'ContratabÃº', 'contratabu'),
(59, 6, 'Entrevistas en off', 'entrevistas'),
(61, 1, 'Caricaturas', 'caricaturas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasainteres`
--

CREATE TABLE IF NOT EXISTS `tasainteres` (
  `idTasa` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `porcentaje` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tasainteres`
--

INSERT INTO `tasainteres` (`idTasa`, `nombre`, `porcentaje`, `fecha`) VALUES
(1, 'TASA FED', 0.5, '2016-02-20'),
(2, 'WSJ prime', 3.5, '2016-02-20'),
(3, 'Libor 3 meses', 0.62, '2016-02-20'),
(4, 'Libor 6 meses', 0.85, '2016-02-20'),
(5, 'Libor 12 meses', 1.15, '2016-02-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL,
  `idPersonal` int(11) NOT NULL,
  `usuario` varchar(10) COLLATE utf8_bin NOT NULL,
  `clave` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistaarticulo`
--

CREATE TABLE IF NOT EXISTS `vistaarticulo` (
  `idArticulo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `vistaarticulo`
--

INSERT INTO `vistaarticulo` (`idArticulo`, `fecha`, `hora`) VALUES
(71, '2016-02-22', '15:41:48'),
(65, '2016-02-22', '15:42:48'),
(65, '2016-02-22', '15:42:48'),
(39, '2016-02-22', '15:43:30'),
(39, '2016-02-22', '15:43:31'),
(40, '2016-02-22', '15:44:47'),
(40, '2016-02-22', '15:44:47'),
(40, '2016-02-22', '16:03:24'),
(38, '2016-02-22', '16:03:47'),
(9, '2016-02-22', '22:27:19'),
(8, '2016-02-23', '10:53:00'),
(112, '2016-02-23', '11:10:13'),
(14, '2016-02-23', '14:13:00'),
(35, '2016-02-23', '14:18:11'),
(33, '2016-02-23', '14:26:19'),
(33, '2016-02-23', '14:27:47'),
(33, '2016-02-23', '14:28:43'),
(109, '2016-02-23', '16:38:58'),
(52, '2016-02-23', '22:48:27'),
(71, '2016-02-23', '22:54:31'),
(92, '2016-02-23', '22:55:09'),
(69, '2016-02-23', '23:16:53'),
(69, '2016-02-23', '23:21:15'),
(76, '2016-02-23', '23:32:06'),
(76, '2016-02-23', '23:33:46'),
(70, '2016-02-23', '23:33:53'),
(70, '2016-02-23', '23:41:30'),
(70, '2016-02-23', '23:42:36'),
(44, '2016-02-24', '00:14:28'),
(39, '2016-02-24', '00:49:43'),
(41, '2016-02-24', '00:50:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistabanner`
--

CREATE TABLE IF NOT EXISTS `vistabanner` (
  `idBanner` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `vistabanner`
--

INSERT INTO `vistabanner` (`idBanner`, `fecha`, `hora`) VALUES
(2, '0000-00-00', '00:20:16'),
(2, '2016-02-22', '13:50:07'),
(2, '2016-02-22', '15:03:27'),
(9, '2016-02-22', '15:09:51'),
(19, '2016-02-22', '15:10:33'),
(28, '2016-02-22', '15:27:56'),
(26, '2016-02-22', '15:29:48'),
(2, '2016-02-23', '13:57:11'),
(2, '2016-02-23', '13:57:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistafotogaleria`
--

CREATE TABLE IF NOT EXISTS `vistafotogaleria` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `vistafotogaleria`
--

INSERT INTO `vistafotogaleria` (`id`, `fecha`, `hora`) VALUES
(1, '2016-02-23', '14:23:21'),
(1, '2016-02-23', '14:28:45'),
(1, '2016-02-23', '14:44:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistaseccion`
--

CREATE TABLE IF NOT EXISTS `vistaseccion` (
  `idSeccion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `vistaseccion`
--

INSERT INTO `vistaseccion` (`idSeccion`, `fecha`, `hora`) VALUES
(3, '2016-02-22', '22:37:53'),
(3, '2016-02-22', '22:40:57'),
(1, '2016-02-23', '09:47:50'),
(6, '2016-02-23', '09:48:06'),
(4, '2016-02-23', '09:48:36'),
(1, '2016-02-23', '09:49:48'),
(8, '2016-02-23', '10:55:54'),
(7, '2016-02-23', '11:10:02'),
(8, '2016-02-23', '11:10:24'),
(8, '2016-02-23', '13:57:02'),
(8, '2016-02-23', '14:14:07'),
(6, '2016-02-23', '14:18:07'),
(8, '2016-02-23', '14:23:03'),
(8, '2016-02-23', '14:23:09'),
(8, '2016-02-23', '14:45:15'),
(5, '2016-02-23', '15:33:12'),
(1, '2016-02-23', '16:03:59'),
(8, '2016-02-23', '16:38:52'),
(1, '2016-02-23', '17:49:39'),
(3, '2016-02-23', '17:52:20'),
(1, '2016-02-23', '17:52:35'),
(2, '2016-02-23', '17:52:38'),
(2, '2016-02-23', '21:51:12'),
(1, '2016-02-23', '21:51:25'),
(1, '2016-02-23', '21:55:37'),
(1, '2016-02-23', '21:56:23'),
(1, '2016-02-23', '21:59:06'),
(1, '2016-02-23', '22:05:34'),
(1, '2016-02-23', '22:06:00'),
(6, '2016-02-23', '22:14:52'),
(6, '2016-02-23', '22:14:55'),
(6, '2016-02-23', '22:16:23'),
(6, '2016-02-23', '22:16:47'),
(6, '2016-02-23', '22:17:18'),
(6, '2016-02-23', '22:17:46'),
(6, '2016-02-23', '22:43:16'),
(2, '2016-02-23', '22:43:17'),
(2, '2016-02-23', '22:47:04'),
(3, '2016-02-23', '22:48:30'),
(3, '2016-02-23', '22:48:57'),
(4, '2016-02-23', '22:54:19'),
(4, '2016-02-23', '22:54:27'),
(4, '2016-02-23', '22:54:34'),
(5, '2016-02-23', '22:55:03'),
(5, '2016-02-23', '22:55:14'),
(5, '2016-02-23', '23:01:06'),
(5, '2016-02-23', '23:01:44'),
(5, '2016-02-23', '23:03:23'),
(7, '2016-02-23', '23:03:25'),
(5, '2016-02-23', '23:04:29'),
(1, '2016-02-23', '23:05:18'),
(1, '2016-02-23', '23:06:23'),
(2, '2016-02-23', '23:06:33'),
(1, '2016-02-23', '23:08:59'),
(1, '2016-02-23', '23:09:49'),
(1, '2016-02-23', '23:16:19'),
(1, '2016-02-23', '23:16:34'),
(8, '2016-02-23', '23:16:50'),
(8, '2016-02-23', '23:26:12'),
(1, '2016-02-23', '23:30:25'),
(1, '2016-02-23', '23:31:32'),
(4, '2016-02-23', '23:31:46'),
(1, '2016-02-23', '23:48:33'),
(8, '2016-02-24', '00:03:11'),
(3, '2016-02-24', '00:11:02'),
(1, '2016-02-24', '00:19:40'),
(1, '2016-02-24', '00:19:44'),
(3, '2016-02-24', '00:20:06'),
(6, '2016-02-24', '00:20:22'),
(6, '2016-02-24', '00:25:32'),
(1, '2016-02-24', '00:26:40'),
(1, '2016-02-24', '00:26:43'),
(1, '2016-02-24', '00:31:43'),
(1, '2016-02-24', '00:32:36'),
(3, '2016-02-24', '00:33:45'),
(3, '2016-02-24', '00:34:06'),
(3, '2016-02-24', '00:34:30'),
(3, '2016-02-24', '00:35:51'),
(3, '2016-02-24', '00:37:45'),
(3, '2016-02-24', '00:38:08'),
(3, '2016-02-24', '00:42:44'),
(3, '2016-02-24', '00:42:52'),
(3, '2016-02-24', '00:44:57'),
(1, '2016-02-24', '00:44:59'),
(8, '2016-02-24', '00:49:40'),
(1, '2016-02-24', '00:50:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistasubseccion`
--

CREATE TABLE IF NOT EXISTS `vistasubseccion` (
  `idSubseccion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `vistasubseccion`
--

INSERT INTO `vistasubseccion` (`idSubseccion`, `fecha`, `hora`) VALUES
(42, '2016-02-22', '16:24:56'),
(2, '2016-02-22', '22:19:52'),
(61, '2016-02-22', '22:23:37'),
(61, '2016-02-22', '22:24:48'),
(5, '2016-02-22', '22:24:51'),
(2, '2016-02-22', '22:27:10'),
(3, '2016-02-22', '22:35:33'),
(3, '2016-02-22', '22:35:48'),
(32, '2016-02-23', '09:47:44'),
(61, '2016-02-23', '09:51:28'),
(61, '2016-02-23', '17:50:48'),
(42, '2016-02-23', '22:48:25'),
(47, '2016-02-23', '23:04:34'),
(5, '2016-02-23', '23:09:06'),
(5, '2016-02-23', '23:09:11'),
(61, '2016-02-23', '23:10:04'),
(61, '2016-02-23', '23:10:53'),
(61, '2016-02-23', '23:10:58'),
(30, '2016-02-23', '23:21:17'),
(30, '2016-02-23', '23:21:25'),
(3, '2016-02-23', '23:31:34'),
(32, '2016-02-23', '23:31:48'),
(30, '2016-02-23', '23:33:50'),
(4, '2016-02-23', '23:48:38'),
(3, '2016-02-23', '23:48:41'),
(2, '2016-02-23', '23:48:43'),
(1, '2016-02-23', '23:54:47'),
(6, '2016-02-23', '23:54:54'),
(6, '2016-02-24', '00:14:25'),
(3, '2016-02-24', '00:20:01'),
(42, '2016-02-24', '00:40:01'),
(61, '2016-02-24', '00:45:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idArticulo`),
  ADD KEY `idPersonal` (`idPersonal`),
  ADD KEY `idSubseccion` (`idSubseccion`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`idBanner`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idPosicion` (`idPosicion`);

--
-- Indices de la tabla `bolsa`
--
ALTER TABLE `bolsa`
  ADD PRIMARY KEY (`idBolsa`);

--
-- Indices de la tabla `caricatura`
--
ALTER TABLE `caricatura`
  ADD PRIMARY KEY (`idCaricatura`),
  ADD KEY `idCaricaturista` (`idCaricaturista`);

--
-- Indices de la tabla `caricaturista`
--
ALTER TABLE `caricaturista`
  ADD PRIMARY KEY (`idCaricaturista`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `columna`
--
ALTER TABLE `columna`
  ADD PRIMARY KEY (`idColumna`),
  ADD KEY `idSubseccion` (`idSubseccion`),
  ADD KEY `idPersonal` (`idPersonal`);

--
-- Indices de la tabla `datoseconomicos`
--
ALTER TABLE `datoseconomicos`
  ADD KEY `idDatos` (`idDatos`);

--
-- Indices de la tabla `divisa`
--
ALTER TABLE `divisa`
  ADD PRIMARY KEY (`idDivisa`);

--
-- Indices de la tabla `fotogaleria`
--
ALTER TABLE `fotogaleria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idFotografo` (`idFotografo`);

--
-- Indices de la tabla `fotografo`
--
ALTER TABLE `fotografo`
  ADD PRIMARY KEY (`idFotografo`);

--
-- Indices de la tabla `imagenesarticulo`
--
ALTER TABLE `imagenesarticulo`
  ADD PRIMARY KEY (`idImagen`),
  ADD KEY `idArticulo` (`idArticulo`),
  ADD KEY `idFotografo` (`idFotografo`);

--
-- Indices de la tabla `logusuario`
--
ALTER TABLE `logusuario`
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `mercado`
--
ALTER TABLE `mercado`
  ADD PRIMARY KEY (`idMercado`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`idPersonal`);

--
-- Indices de la tabla `posicion`
--
ALTER TABLE `posicion`
  ADD PRIMARY KEY (`idPosicion`),
  ADD KEY `idSeccion` (`idSeccion`);

--
-- Indices de la tabla `redespersonal`
--
ALTER TABLE `redespersonal`
  ADD PRIMARY KEY (`idRedPersonal`),
  ADD KEY `idPeronal` (`idPersonal`),
  ADD KEY `idRed` (`idRed`);

--
-- Indices de la tabla `redessociales`
--
ALTER TABLE `redessociales`
  ADD PRIMARY KEY (`idRed`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`idRespuesta`),
  ADD KEY `idSondeo` (`idSondeo`);

--
-- Indices de la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD KEY `idRespuesta` (`idRespuesta`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`idSeccion`);

--
-- Indices de la tabla `sondeo`
--
ALTER TABLE `sondeo`
  ADD PRIMARY KEY (`idSondeo`);

--
-- Indices de la tabla `subseccion`
--
ALTER TABLE `subseccion`
  ADD PRIMARY KEY (`idSubseccion`),
  ADD KEY `idSeccion` (`idSeccion`);

--
-- Indices de la tabla `tasainteres`
--
ALTER TABLE `tasainteres`
  ADD PRIMARY KEY (`idTasa`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idPersonal` (`idPersonal`);

--
-- Indices de la tabla `vistaarticulo`
--
ALTER TABLE `vistaarticulo`
  ADD KEY `idArticulo` (`idArticulo`);

--
-- Indices de la tabla `vistabanner`
--
ALTER TABLE `vistabanner`
  ADD KEY `idBanner` (`idBanner`);

--
-- Indices de la tabla `vistafotogaleria`
--
ALTER TABLE `vistafotogaleria`
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `vistaseccion`
--
ALTER TABLE `vistaseccion`
  ADD KEY `idSeccion` (`idSeccion`);

--
-- Indices de la tabla `vistasubseccion`
--
ALTER TABLE `vistasubseccion`
  ADD KEY `idSubseccion` (`idSubseccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idArticulo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `idBanner` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT de la tabla `bolsa`
--
ALTER TABLE `bolsa`
  MODIFY `idBolsa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `caricatura`
--
ALTER TABLE `caricatura`
  MODIFY `idCaricatura` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `caricaturista`
--
ALTER TABLE `caricaturista`
  MODIFY `idCaricaturista` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `columna`
--
ALTER TABLE `columna`
  MODIFY `idColumna` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `datoseconomicos`
--
ALTER TABLE `datoseconomicos`
  MODIFY `idDatos` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `divisa`
--
ALTER TABLE `divisa`
  MODIFY `idDivisa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `fotogaleria`
--
ALTER TABLE `fotogaleria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `fotografo`
--
ALTER TABLE `fotografo`
  MODIFY `idFotografo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `imagenesarticulo`
--
ALTER TABLE `imagenesarticulo`
  MODIFY `idImagen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT de la tabla `mercado`
--
ALTER TABLE `mercado`
  MODIFY `idMercado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `idPersonal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `posicion`
--
ALTER TABLE `posicion`
  MODIFY `idPosicion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT de la tabla `redespersonal`
--
ALTER TABLE `redespersonal`
  MODIFY `idRedPersonal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `redessociales`
--
ALTER TABLE `redessociales`
  MODIFY `idRed` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `idRespuesta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `idSeccion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `sondeo`
--
ALTER TABLE `sondeo`
  MODIFY `idSondeo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `subseccion`
--
ALTER TABLE `subseccion`
  MODIFY `idSubseccion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `tasainteres`
--
ALTER TABLE `tasainteres`
  MODIFY `idTasa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`idSubseccion`) REFERENCES `subseccion` (`idSubseccion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `articulo_ibfk_2` FOREIGN KEY (`idPersonal`) REFERENCES `personal` (`idPersonal`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banner_ibfk_2` FOREIGN KEY (`idPosicion`) REFERENCES `posicion` (`idPosicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `caricatura`
--
ALTER TABLE `caricatura`
  ADD CONSTRAINT `caricatura_ibfk_1` FOREIGN KEY (`idCaricaturista`) REFERENCES `caricaturista` (`idCaricaturista`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `columna`
--
ALTER TABLE `columna`
  ADD CONSTRAINT `columna_ibfk_1` FOREIGN KEY (`idPersonal`) REFERENCES `personal` (`idPersonal`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `columna_ibfk_2` FOREIGN KEY (`idSubseccion`) REFERENCES `subseccion` (`idSubseccion`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `fotogaleria`
--
ALTER TABLE `fotogaleria`
  ADD CONSTRAINT `fotogaleria_ibfk_1` FOREIGN KEY (`idFotografo`) REFERENCES `fotografo` (`idFotografo`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagenesarticulo`
--
ALTER TABLE `imagenesarticulo`
  ADD CONSTRAINT `imagenesarticulo_ibfk_1` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`idArticulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `imagenesarticulo_ibfk_2` FOREIGN KEY (`idFotografo`) REFERENCES `fotografo` (`idFotografo`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `logusuario`
--
ALTER TABLE `logusuario`
  ADD CONSTRAINT `logusuario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `posicion`
--
ALTER TABLE `posicion`
  ADD CONSTRAINT `posicion_ibfk_1` FOREIGN KEY (`idSeccion`) REFERENCES `seccion` (`idSeccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `redespersonal`
--
ALTER TABLE `redespersonal`
  ADD CONSTRAINT `redespersonal_ibfk_1` FOREIGN KEY (`idRed`) REFERENCES `redessociales` (`idRed`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redespersonal_ibfk_2` FOREIGN KEY (`idPersonal`) REFERENCES `personal` (`idPersonal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`idSondeo`) REFERENCES `sondeo` (`idSondeo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `resultado_ibfk_1` FOREIGN KEY (`idRespuesta`) REFERENCES `respuesta` (`idRespuesta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subseccion`
--
ALTER TABLE `subseccion`
  ADD CONSTRAINT `subseccion_ibfk_1` FOREIGN KEY (`idSeccion`) REFERENCES `seccion` (`idSeccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idPersonal`) REFERENCES `personal` (`idPersonal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vistaarticulo`
--
ALTER TABLE `vistaarticulo`
  ADD CONSTRAINT `vistaarticulo_ibfk_1` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`idArticulo`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `vistabanner`
--
ALTER TABLE `vistabanner`
  ADD CONSTRAINT `vistabanner_ibfk_1` FOREIGN KEY (`idBanner`) REFERENCES `banner` (`idBanner`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `vistafotogaleria`
--
ALTER TABLE `vistafotogaleria`
  ADD CONSTRAINT `vistafotogaleria_ibfk_1` FOREIGN KEY (`id`) REFERENCES `fotogaleria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vistaseccion`
--
ALTER TABLE `vistaseccion`
  ADD CONSTRAINT `vistaseccion_ibfk_1` FOREIGN KEY (`idSeccion`) REFERENCES `seccion` (`idSeccion`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `vistasubseccion`
--
ALTER TABLE `vistasubseccion`
  ADD CONSTRAINT `vistasubseccion_ibfk_1` FOREIGN KEY (`idSubseccion`) REFERENCES `subseccion` (`idSubseccion`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
