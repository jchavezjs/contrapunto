-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2016 a las 05:11:34
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
  `especial` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idArticulo`, `titulo`, `preview`, `contenido`, `idPersonal`, `idSubseccion`, `fecha`, `hora`, `especial`) VALUES
(6, '2015 a la historia por crÃ­menes', 'Juez decidiÃ³ incorporar al proceso mÃ©dico del exmandatario a doctores del Hospital Nacional Rosales para que tambiÃ©n decidan la nueva fecha de la intervenciÃ³n quirurgica', 'hola', 6, 28, '2016-01-07', '14:29:19', 0),
(7, 'Transporte pÃºblico con 93 asesinados y millonarias pÃ©rdidas', 'La ventaja de Macri empezÃ³ a revelarse desde las primeras horas del escrutinio de votos. AsÃ­ terminan doce aÃ±os de gobiernos kirchneristas', 'hola', 6, 37, '2016-01-06', '11:25:24', 0),
(8, 'A Pacheco no lo habrÃ­an asesinado las maras', 'El deportista es una de las 20 vÃ­ctimas mortales diarias que ocurren en El Salvador a causa de la violencia delincuencial y social', 'hola', 6, 37, '2016-01-05', '06:14:15', 0),
(9, 'Altos y bajos en AmÃ©rica Latina', 'Al cierre de aÃ±o el sur y el centro de la regiÃ³n parecen estar divididas, mientras algunos logran una leve recuperaciÃ³n econÃ³mica, otros perciben incertidumbre de cara al 2016', 'hola', 7, 37, '2016-01-05', '08:26:18', 0),
(10, 'Matan a exseleccionado nacional Alfredo Pacheco', 'El futbolista, suspendido de por vida por amaÃ±os de partidos, fue asesinado en una gasolinera de Santa Ana.', 'hola', 7, 41, '2016-01-04', '07:19:20', 0),
(11, 'En la UES otra rectora es posible.', NULL, 'hola', 8, 3, '2016-01-07', '09:22:23', 0),
(12, 'La destrucciÃ³n post-electoral (6D) del gobierno Maduro', NULL, 'hola', 9, 3, '2016-01-06', '10:24:23', 0),
(13, 'Â¿Por quÃ© es importante el 25 de noviembre?', NULL, 'hola', 10, 3, '2016-01-05', '08:12:34', 0),
(14, 'JerusalÃ©m', NULL, 'hola', 11, 3, '2016-01-04', '04:06:12', 0),
(15, 'AES reconocida por esfuerzo en eficiencia energetica', NULL, 'hola', 11, 45, '2016-01-07', '08:28:28', 0),
(16, 'Sector privado, motor para el desarrollo', NULL, 'hola', 11, 45, '2016-01-06', '07:21:22', 0),
(17, 'ASI: tarifas restan competitividad a industria', NULL, 'hola', 12, 45, '2016-01-05', '08:27:23', 0),
(18, 'Exportaciones de America Latina', NULL, 'hola', 3, 49, '2016-01-07', '07:18:19', 0),
(19, 'Exportar importa', NULL, 'hola', 12, 49, '2016-01-07', '07:20:23', 0),
(20, 'Economia salvadorena', NULL, 'hola', 11, 46, '2016-01-08', '04:14:17', 0),
(21, 'AES reconocida por esfuerzo en eficiencia energetica', NULL, 'hola', 12, 46, '2016-01-07', '06:18:19', 0),
(22, 'Castigaran cobro ilegal en recargas', NULL, 'hola', 12, 46, '2016-01-06', '04:12:34', 0),
(23, 'Lo bueno, lo malo y lo feo de la Sentencia sobre la Ley de Telecomunicaciones', NULL, 'hola', 13, 4, '2016-01-07', '08:21:27', 0),
(24, 'Noviembre con menos homicidios que octubre', 'Los pandilleros tienen claro que si siguen en la logica de la criminalidad, les espera muerte o carcel, acoto Misael Mejia, diputado efemelenista', 'hola', 14, 28, '2016-01-08', '07:22:18', 0),
(25, 'Curry alaba la creatividad de Messi... No sabes que va a hacer', 'Stephen Curry, el mejor jugador de baloncesto del momento, es un fan del futbolista argentino Lionel Messi, con el que comparte un estilo creativo', 'hola', 6, 41, '2016-01-08', '06:20:16', 0),
(26, 'Socialismo por revolucion pacifica', 'Transformar un modelo economico social que por tiempo excluyo a sectores desprotegidos no es una meta facil, dice fundador del FMLN', 'hola', 7, 6, '2016-01-08', '10:18:32', 0),
(27, 'La ley del menor', 'El estilo es realista, directo y austero como todas las obras de McEwan. Nunca hay digresiones o adornos literarios', 'hola', 3, 57, '2016-01-08', '07:28:20', 0),
(28, 'Produciendo diferente, produciendo agroecologico', 'Ante los efectos del cambio climatico, agricultores ya buscan nuevas alternativas y formas de producir, entre ellas la agroecologica', 'hola', 15, 34, '2016-01-09', '06:24:18', 0),
(29, 'A juicio expresidente Flores', 'Garcia Arguello aseguro que se abrio una cuenta bancaria a nombre del COENA ', 'hola', 6, 37, '2016-01-09', '07:26:19', 0),
(30, 'IndezoquixtiA: musica y libertad', 'Con un estilo singular, IndezoquixtiA promueve la musica y mensajes de reflexion para el rescate de una cultura por tiempo negada', 'hola', 6, 42, '2016-01-09', '07:38:40', 0),
(31, 'Nicaragua bloquea salida para inmigrantes cubanos', 'El canciller salvadoreno, Hugo Martinez, senalo que los paises actuaran con criterio de autodetermiancion para resolver crisis migratoria ', 'hola', 6, 55, '2016-01-09', '10:26:26', 0),
(32, 'Plazos traicioneros', 'Una semana antes del viaje mas de cinco mil soldados, policias y guardias realizaban una intensa ofensiva en zonas de presencia rebelde en el departamento de Morazan...', 'hola', 16, 54, '2016-01-10', '06:20:21', 0),
(33, 'Enrique Alvarez Cordova entrego su vida por los pobres', 'El 27 de noviembre de 1980, Enrique Alvarez Cordova (1930-1980), nacido dentro de las Catorce Familias mas poderosas de El Salvador, tres veces ministro de agricultura, es asesinado junto a dirigentes del FDR. ', 'hola', 17, 59, '2016-01-10', '08:22:22', 0),
(34, 'Consecuencias del abuso infanto juvenil', 'En general, el nino o adolescente que es abusado por un familiar suele quedar atrapado entre el afecto y la lealtad debidos a esa persona, y la inconveniencia del abuso de que es objeto', 'hola', 18, 35, '2016-01-10', '09:20:09', 0),
(35, 'El sexo: durante y despues del cancer de seno', 'Al menos el 70 de las personas que sufren esta enfermedad confiesan haber tenido problemas con el sexo', 'hola', 6, 58, '2016-01-10', '07:22:20', 0),
(36, 'Vigencia Ellacuria', 'El mejor homenaje a nuestros asesinados en las guerras de ayer y de hoy es fortalecer nuestro espiritu critico, nuestras exigencias como sociedad y nuestras propuestas y formulas de solucion', 'hola', 10, 1, '2016-01-11', '08:20:21', 0),
(37, 'Estamos con ganas de justicia en Caso Jesuitas', 'La querellante Almudena Berbaneu dijo que existe nueva jurispridencia en El Salvador para arrestar y extraditar a los perseguidos', 'hola', 19, 37, '2016-01-09', '09:22:24', 1),
(38, 'Corruptos desaciertos en El Salvador', 'La ley de probidad aprobada recientemente por el Legislativo carece de aspectos fundamentales para el combate a la verdadera currupcion, segun analistas', 'hola', 7, 37, '2016-01-10', '07:22:18', 1),
(39, 'Ficciones: el intelectual y el poder en El Salvador (1928-1932)', 'A la historia en boga segun la cual el general Martinez gobierna solo por terror y opresion, el proyecto ficticio agrega una hipotesis descabellada y engorrosa, a saber: el apoyo ideologico e intelectual a su Presidencia ', 'hola', 19, 37, '2016-01-11', '07:13:07', 1),
(40, '2016 el desafio del hacer	', 'Si la Republica Popular de China tuviera nuestra misma tasa de homicidios, en este ano registraria mas de 13 millones de asesinados', 'hola', 1, 1, '2016-01-13', '08:15:20', 0),
(41, 'Del Purgatorio al Infierno, un paso	', 'En El Salvador se cometen 11,8 veces mas homicidios que en Chile la tasa de homicidios de El Salvador es 33 veces mayor que la chilena', 'hola', 2, 1, '2016-01-14', '06:19:16', 0),
(42, 'Una nueva era de innovaciones en la atencion de la salud', NULL, 'hola', 3, 4, '2016-01-14', '06:22:21', 0),
(43, 'Dos derrotas a la democracia iliberal', NULL, 'hola', 2, 4, '2016-01-15', '08:21:21', 0),
(44, 'Accion y reaccion', NULL, 'hola', 10, 6, '2016-01-04', '08:23:16', 0),
(45, 'El peligro cultural', NULL, 'hola', 6, 6, '2016-01-01', '07:20:21', 0),
(46, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 6, 38, '2016-01-15', '09:24:21', 0),
(47, 'Telefonicas ofrecen dinero para renovar frecuencias', 'Durante la entrega de titulos de propiedad del ITSA, se presento la politica institucional', 'hola', 7, 38, '2016-01-14', '07:24:20', 0),
(48, 'GOES entrega seis mil titulos de propiedad', 'Durante la entrega de titulos de propiedad del ITSA, se presento la politica institucional', 'hola', 11, 38, '2016-01-15', '09:21:21', 0),
(49, 'Francisco Flores', 'Juez decidio incorporar al proceso medico del exmandatario a doctores del Hospital Nacional Rosales para que tambien decidan la nueva fecha de la intervencion quirurgica', 'hola', 9, 39, '2016-01-15', '11:33:19', 0),
(50, 'GOES entrega seis mil titulos de propiedad', 'Durante la entrega de titulos de propiedad del ITSA, se presento la politica institucional\r\n', 'hola', 12, 39, '2016-01-13', '10:00:16', 0),
(51, 'GOES entrega seis mil titulos de propiedad', 'Durante la entrega de titulos de propiedad del ITSA, se presento la politica institucional\r\n', 'hola', 6, 39, '2016-01-12', '10:00:16', 0),
(52, 'Juez envia a prision a Otto Perez', 'A pesar de que el exmandatario acudio voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 42, '2016-01-16', '08:21:17', 0),
(53, 'Perez Molina renuncia a la presidencia', 'El Congreso de Guatemala convoco hoy a su junta a una reunion para conocer la carta de renuncia del jefe de Estado', 'hola', 14, 42, '2016-01-15', '12:34:33', 0),
(54, 'Dictan orden de captura contra Otto Perez Molina', 'La orden se gira un dia despues de que el Congreso le retirara la inmunidad y a solo cuatro dias de las elecciones en Guatemala', 'hola', 14, 42, '2016-01-15', '03:12:34', 0),
(55, 'La oposicion venezolana se impone al chavismo', 'El resultado favorable a la oposicion representa una derrota inedita en casi 17 anos para el gobierno bolivariano', 'hola', 14, 43, '2016-01-16', '09:23:21', 0),
(56, 'Guatemala con los ojos en las urnas', 'Tras escandalos de corrupcion y malestar social, en segunda vuelta los guatemaltecos deben elegir entre la exprimera dama y el comediante', 'hola', 14, 43, '2016-01-15', '08:21:00', 0),
(57, 'Policia nicaraguense reprime Mina El Limon', 'Se calcula que unas 23 personas se encuentran detenidas y 15 pobladores estan heridos. Diez policias estan golpeados ', 'hola', 14, 43, '2016-01-14', '12:12:12', 0),
(58, 'Contra el Cambio Climatico, el Acuerdo de Paris', 'La reduccion de los gases de efecto invernadero sera a futuro tarea de todos los paises y no solamente de los industrializados', 'hola', 14, 44, '2016-01-16', '08:30:30', 0),
(59, 'Nicaragua bloquea salida para inmigrantes cubanos', 'La reduccion de los gases de efecto invernadero sera a futuro tarea de todos los paises y no solamente de los industrializados', 'hola', 14, 44, '2016-01-15', '10:16:34', 0),
(60, 'Costa Rica confia en solucion a conflicto de emigrantes cubanos', 'La reduccion de los gases de efecto invernadero sera a futuro tarea de todos los paises y no solamente de los industrializados', 'hola', 14, 44, '2016-01-14', '12:13:14', 0),
(61, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 27, '2016-01-16', '12:12:12', 0),
(62, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 27, '2016-01-16', '12:12:12', 0),
(63, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 27, '2016-01-16', '12:12:12', 0),
(64, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 28, '2016-01-16', '12:12:12', 0),
(65, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 28, '2016-01-16', '12:12:12', 0),
(66, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 28, '2016-01-16', '12:12:12', 0),
(67, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 29, '2016-01-16', '12:12:12', 0),
(68, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 29, '2016-01-16', '12:12:12', 0),
(69, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 29, '2016-01-16', '12:12:12', 0),
(70, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 30, '2016-01-16', '12:12:12', 0),
(71, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 30, '2016-01-16', '12:12:12', 0),
(72, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 30, '2016-01-16', '12:12:12', 0),
(73, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 31, '2016-01-16', '12:12:12', 0),
(74, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 31, '2016-01-16', '12:12:12', 0),
(75, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 31, '2016-01-16', '12:12:12', 0),
(76, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 32, '2016-01-16', '12:12:12', 0),
(77, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 32, '2016-01-16', '12:12:12', 0),
(78, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 32, '2016-01-16', '12:12:12', 0),
(79, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 33, '2016-01-16', '12:12:12', 0),
(80, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 33, '2016-01-16', '12:12:12', 0),
(81, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 33, '2016-01-16', '12:12:12', 0),
(82, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 34, '2016-01-16', '12:12:12', 0),
(83, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 34, '2016-01-16', '12:12:12', 0),
(84, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 34, '2016-01-16', '12:12:12', 0),
(85, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 35, '2016-01-16', '12:12:12', 0),
(86, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 35, '2016-01-16', '12:12:12', 0),
(87, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 35, '2016-01-16', '12:12:12', 0),
(88, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 36, '2016-01-16', '12:12:12', 0),
(89, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 36, '2016-01-16', '12:12:12', 0),
(90, 'Juez envia a prision a Otto Perez', 'voluntariamente a Tribunales sera detenido provisionalmente en la prision Matamoros', 'hola', 14, 36, '2016-01-16', '12:12:12', 0),
(91, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 45, '2016-01-16', '12:12:12', 0),
(92, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 45, '2016-01-16', '12:12:12', 0),
(93, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 45, '2016-01-16', '12:12:12', 0),
(94, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 46, '2016-01-16', '12:12:12', 0),
(95, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 46, '2016-01-16', '12:12:12', 0),
(96, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 46, '2016-01-16', '12:12:12', 0),
(97, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 47, '2016-01-16', '12:12:12', 0),
(98, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 47, '2016-01-16', '12:12:12', 0),
(99, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 47, '2016-01-16', '12:12:12', 0),
(100, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 48, '2016-01-16', '12:12:12', 0),
(101, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 48, '2016-01-16', '12:12:12', 0),
(102, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 48, '2016-01-16', '12:12:12', 0),
(103, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 49, '2016-01-16', '12:12:12', 0),
(104, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 49, '2016-01-16', '12:12:12', 0),
(105, 'Impulsan Navidad Segura 2015', 'Autoridades policiales afirmaron que mas de 23 mil policias brindaran proteccion \r\n			a la poblacion durante las fiestas navidenas y fin de ano', 'hola', 14, 49, '2016-01-16', '12:12:12', 0),
(106, 'Francisco Flores', 'Literatura de opinion y agrado', 'hola', 14, 56, '2016-01-16', '10:21:17', 0),
(107, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', 'hola', 14, 40, '2016-01-16', '12:12:12', 0),
(108, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', 'hola', 14, 40, '2016-01-16', '12:12:12', 0),
(109, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', 'hola', 14, 40, '2016-01-16', '12:12:12', 0),
(110, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', 'hola', 14, 41, '2016-01-16', '12:12:12', 0),
(111, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', 'hola', 14, 41, '2016-01-16', '12:12:12', 0),
(112, 'Alianza conquista un nuevo titulo de la Liga Mayor', 'Alianza se corono campeon del Apertura \r\n			2015 al vencer a FAS con gol del capitan Ramon Martinez de Paz. ', 'hola', 14, 41, '2016-01-16', '12:12:12', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `idBanner` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `posicion` varchar(10) COLLATE utf8_bin NOT NULL,
  `link` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bolsa`
--

CREATE TABLE IF NOT EXISTS `bolsa` (
  `idBolsa` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_bin NOT NULL,
  `porcentaje` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `bolsa`
--

INSERT INTO `bolsa` (`idBolsa`, `nombre`, `porcentaje`) VALUES
(1, 'Dow Jones', 2.39),
(2, 'Nasdaq', -2.74),
(3, 'FTSE 100', -1.93),
(4, 'DAX', 2.54),
(5, 'CAC-40', -2.38),
(6, 'Nikkei', -0.54),
(7, 'IPC', -1.22),
(8, 'BOVESPA', -2.36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caricatura`
--

CREATE TABLE IF NOT EXISTS `caricatura` (
  `id` int(11) NOT NULL,
  `rutaFoto` varchar(50) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `caricatura`
--

INSERT INTO `caricatura` (`id`, `rutaFoto`, `fecha`, `hora`) VALUES
(1, 'img/caricatura1.jpg', '2016-01-11', '05:18:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `idPersonal` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `columna`
--

INSERT INTO `columna` (`idColumna`, `titulo`, `contenido`, `fecha`, `hora`, `idSubseccion`, `idPersonal`) VALUES
(3, 'Violencia cultural salvadorena', 'hola', '2016-01-14', '08:20:24', 30, 1),
(4, 'Horizontalidad y liderazgo salvadoreno', 'hola', '2016-01-13', '07:19:16', 33, 2),
(8, 'Candidato eterno', 'hola', '2016-01-12', '10:19:30', 31, 3),
(9, 'Alegre rebeldia', 'hola', '2016-01-11', '07:19:20', 33, 4),
(10, 'Paris, 13/09', 'hola', '2016-01-10', '08:23:21', 32, 5);

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
  `cambio` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `divisa`
--

INSERT INTO `divisa` (`idDivisa`, `nombre`, `cambio`) VALUES
(1, 'Euro', 0.914),
(2, 'Yen', 120.5),
(3, 'LIBRA', 0.675),
(4, 'DÃ³lar', 1.388),
(5, 'Peso', 17.381),
(6, 'Quetzal', 7.633),
(7, 'Lempira', 22.355),
(8, 'CÃ³rdova', 27.924),
(9, 'ColÃ³n', 537.3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotogaleria`
--

CREATE TABLE IF NOT EXISTS `fotogaleria` (
  `id` int(11) NOT NULL,
  `rutaFoto` varchar(50) COLLATE utf8_bin NOT NULL,
  `link` varchar(50) COLLATE utf8_bin NOT NULL,
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
  `rutaFoto` varchar(25) COLLATE utf8_bin NOT NULL,
  `idArticulo` int(11) NOT NULL,
  `posicion` varchar(10) COLLATE utf8_bin NOT NULL,
  `idFotografo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(94, 'img/deporte1.jpg', 112, 'principal', 6);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `idPersonal` int(11) NOT NULL,
  `nombres` varchar(25) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(25) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `twitter` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cargo` varchar(15) COLLATE utf8_bin NOT NULL,
  `rutaFoto` varchar(25) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`idPersonal`, `nombres`, `apellidos`, `descripcion`, `twitter`, `cargo`, `rutaFoto`) VALUES
(1, 'JosÃ© Luis', 'Escamilla', NULL, NULL, 'columnista', 'img/columnista1.jpg'),
(2, 'Mario', 'Morales', NULL, NULL, 'columnista', 'img/columnista2.jpg'),
(3, 'RubÃ©n', 'Aguilar', NULL, NULL, 'columnista', 'img/columnista3.jpg'),
(4, 'BenjamÃ­n', 'Cuellar', NULL, NULL, 'columnista', 'img/columnista4.png'),
(5, 'Carlos', 'Molina', NULL, NULL, 'columnista', 'img/columnista5.jpg'),
(6, 'RedacciÃ³n', 'Contrapunto', NULL, NULL, 'periodista', 'img/redaccion.jpg'),
(7, 'Laura', 'Bernal', NULL, NULL, 'periodista', 'img/laura.jpg'),
(8, 'AngÃ©lica MarÃ­a', 'Rivas', NULL, NULL, 'columnista', 'img/angelica.jpg'),
(9, 'Heinz', 'Dieterich', NULL, NULL, 'columnista', 'img/heinz.jpg'),
(10, 'Fidelina', 'MartÃ­nez Castro', NULL, NULL, 'columnista', 'img/fidelina.jpg'),
(11, 'Donald Salvador', 'Donato', NULL, NULL, 'columnista', 'img/donald.jpg'),
(12, 'Ricardo', 'Hausmann', NULL, NULL, 'columnista', 'img/columnista6.jpg'),
(13, 'Leonel', 'Herrera', NULL, NULL, 'columnista', 'img/columnista1.jpg'),
(14, 'Dora', 'Reyes', NULL, NULL, 'periodista', 'img/dora.jpg'),
(15, 'Katia', 'Aguilar', NULL, NULL, 'periodista', 'img/katia.jpg'),
(16, 'Alberto', 'Barrera', NULL, NULL, 'periodista', 'img/alberto.jpg'),
(17, 'Tania', 'Primavera', NULL, NULL, 'periodista', 'img/tania.jpg'),
(18, 'Dra. Margarita', 'Mendoza Burgos', NULL, NULL, 'periodista', 'img/margarita.jpg'),
(19, 'Juan Jose', 'Dalton', NULL, NULL, 'periodista', 'img/jjd.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE IF NOT EXISTS `respuesta` (
  `idRespuesta` int(11) NOT NULL,
  `idSondeo` int(11) NOT NULL,
  `respuesta` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`idSeccion`, `nombre`) VALUES
(1, 'OpiniÃ³n'),
(2, 'Politica'),
(3, 'Internacionales'),
(4, 'Sociedad'),
(5, 'EconomÃ­a'),
(6, 'Cultura'),
(7, 'Deportes'),
(8, 'Especiales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sondeo`
--

CREATE TABLE IF NOT EXISTS `sondeo` (
  `idSondeo` int(11) NOT NULL,
  `pregunta` varchar(140) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `rutaFoto` varchar(25) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subseccion`
--

CREATE TABLE IF NOT EXISTS `subseccion` (
  `idSubseccion` int(11) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `subseccion`
--

INSERT INTO `subseccion` (`idSubseccion`, `idSeccion`, `nombre`) VALUES
(1, 1, 'Editorial'),
(2, 1, 'Columnistas'),
(3, 1, 'Tribuna libre'),
(4, 1, 'Libertad de expresion'),
(5, 1, 'Sondeo'),
(6, 1, 'La academia'),
(27, 4, 'Ambiente'),
(28, 4, 'Violencia'),
(29, 4, 'Salud'),
(30, 4, 'DD.HH'),
(31, 4, 'EduaciÃ³n'),
(32, 4, 'MigraciÃ³n'),
(33, 4, 'GÃ©nero'),
(34, 4, 'Periodismo Ciudadano'),
(35, 4, 'Rompiendo TabÃºes'),
(36, 4, 'Judicial'),
(37, 2, 'PolÃ­tica'),
(38, 2, 'Gobierno'),
(39, 2, 'Partidos'),
(40, 7, 'CrÃ³nicas Deportivas'),
(41, 7, 'Acontecer Deportivo'),
(42, 3, 'CentroamÃ©rica'),
(43, 3, 'LatinoamÃ©rica'),
(44, 3, 'Global'),
(45, 5, 'Negocios'),
(46, 5, 'Coyuntura EconÃ³mica'),
(47, 5, 'Mundo EconÃ³mico'),
(48, 5, 'Mercado Laboral'),
(49, 5, 'AnalÃ­sis EconÃ³mico'),
(54, 6, 'La anÃ©cdota'),
(55, 6, 'Artes'),
(56, 6, 'Literatura'),
(57, 6, 'ReseÃ±as'),
(58, 6, 'ContratabÃº'),
(59, 6, 'Entrevistas en off'),
(60, 8, 'Especiales Semanles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasainteres`
--

CREATE TABLE IF NOT EXISTS `tasainteres` (
  `idTasa` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `porcentaje` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tasainteres`
--

INSERT INTO `tasainteres` (`idTasa`, `nombre`, `porcentaje`) VALUES
(1, 'TASA FED', 0.5),
(2, 'WSJ prime', 3.5),
(3, 'Libor 3 meses', 0.62),
(4, 'Libor 6 meses', 0.85),
(5, 'Libor 12 meses', 1.15);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistabanner`
--

CREATE TABLE IF NOT EXISTS `vistabanner` (
  `idBanner` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistaseccion`
--

CREATE TABLE IF NOT EXISTS `vistaseccion` (
  `idSeccion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `bolsa`
--
ALTER TABLE `bolsa`
  ADD PRIMARY KEY (`idBolsa`);

--
-- Indices de la tabla `caricatura`
--
ALTER TABLE `caricatura`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `idArticulo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `idBanner` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bolsa`
--
ALTER TABLE `bolsa`
  MODIFY `idBolsa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `caricatura`
--
ALTER TABLE `caricatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idImagen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT de la tabla `mercado`
--
ALTER TABLE `mercado`
  MODIFY `idMercado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `idPersonal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `idRespuesta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `idSeccion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `sondeo`
--
ALTER TABLE `sondeo`
  MODIFY `idSondeo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `subseccion`
--
ALTER TABLE `subseccion`
  MODIFY `idSubseccion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
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
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

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
