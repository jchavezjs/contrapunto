-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2016 a las 04:59:36
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
  `template` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `idPersonal` int(11) NOT NULL,
  `idSubseccion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `subseccionColumna` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `especial` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idArticulo`, `titulo`, `preview`, `contenido`, `template`, `idPersonal`, `idSubseccion`, `fecha`, `hora`, `subseccionColumna`, `especial`) VALUES
(1, 'Violencia cultural salvadoreÃ±a', NULL, 'La violencia es mala...', NULL, 1, 2, '2016-01-07', '15:29:00', NULL, 0),
(2, 'Horizontalidad y liderazgo salvadoreÃ±o', NULL, 'La horizontalidad es mala...', NULL, 2, 2, '2016-01-07', '12:27:06', NULL, 0),
(3, 'Candidato eterno', NULL, 'El candidato es malo', NULL, 3, 2, '2016-01-09', '08:21:21', NULL, 0),
(4, 'Alegre rebeldÃ­a', NULL, 'La reberldía es mala...', NULL, 4, 2, '2016-01-07', '10:27:46', NULL, 0),
(5, 'ParÃ­s, 13/09', NULL, 'París es malo...', NULL, 5, 2, '2016-01-05', '14:45:48', NULL, 0),
(6, '2015 a la historia por crÃ­menes', 'Juez decidiÃ³ incorporar al proceso mÃ©dico del exmandatario a doctores del Hospital Nacional Rosales para que tambiÃ©n decidan la nueva fecha de la intervenciÃ³n quirurgica', 'hola', NULL, 6, 28, '2016-01-07', '14:29:19', NULL, 0),
(7, 'Transporte pÃºblico con 93 asesinados y millonarias pÃ©rdidas', 'La ventaja de Macri empezÃ³ a revelarse desde las primeras horas del escrutinio de votos. AsÃ­ terminan doce aÃ±os de gobiernos kirchneristas', 'hola', NULL, 6, 37, '2016-01-06', '11:25:24', NULL, 0),
(8, 'A Pacheco no lo habrÃ­an asesinado las maras', 'El deportista es una de las 20 vÃ­ctimas mortales diarias que ocurren en El Salvador a causa de la violencia delincuencial y social', 'hola', NULL, 6, 37, '2016-01-05', '06:14:15', NULL, 0),
(9, 'Altos y bajos en AmÃ©rica Latina', 'Al cierre de aÃ±o el sur y el centro de la regiÃ³n parecen estar divididas, mientras algunos logran una leve recuperaciÃ³n econÃ³mica, otros perciben incertidumbre de cara al 2016', 'hola', NULL, 7, 37, '2016-01-05', '08:26:18', NULL, 0),
(10, 'Matan a exseleccionado nacional Alfredo Pacheco', 'El futbolista, suspendido de por vida por amaÃ±os de partidos, fue asesinado en una gasolinera de Santa Ana.', 'hola', NULL, 7, 41, '2016-01-04', '07:19:20', NULL, 0),
(11, 'En la UES otra rectora es posible.', NULL, 'hola', NULL, 8, 3, '2016-01-07', '09:22:23', NULL, 0),
(12, 'La destrucciÃ³n post-electoral (6D) del gobierno Maduro', NULL, 'hola', NULL, 9, 3, '2016-01-06', '10:24:23', NULL, 0),
(13, 'Â¿Por quÃ© es importante el 25 de noviembre?', NULL, 'hola', NULL, 10, 3, '2016-01-05', '08:12:34', NULL, 0),
(14, 'JerusalÃ©m', NULL, 'hola', NULL, 11, 3, '2016-01-04', '04:06:12', NULL, 0),
(15, 'AES reconocida por esfuerzo en eficiencia energetica', NULL, 'hola', NULL, 11, 45, '2016-01-07', '08:28:28', NULL, 0),
(16, 'Sector privado, motor para el desarrollo', NULL, 'hola', NULL, 11, 45, '2016-01-06', '07:21:22', NULL, 0),
(17, 'ASI: tarifas restan competitividad a industria', NULL, 'hola', NULL, 12, 45, '2016-01-05', '08:27:23', NULL, 0),
(18, 'Exportaciones de America Latina', NULL, 'hola', NULL, 3, 49, '2016-01-07', '07:18:19', NULL, 0),
(19, 'Exportar importa', NULL, 'hola', NULL, 12, 49, '2016-01-07', '07:20:23', NULL, 0),
(20, 'Economia salvadorena', NULL, 'hola', NULL, 11, 46, '2016-01-08', '04:14:17', NULL, 0),
(21, 'AES reconocida por esfuerzo en eficiencia energetica', NULL, 'hola', NULL, 12, 46, '2016-01-07', '06:18:19', NULL, 0),
(22, 'Castigaran cobro ilegal en recargas', NULL, 'hola', NULL, 12, 46, '2016-01-06', '04:12:34', NULL, 0),
(23, 'Lo bueno, lo malo y lo feo de la Sentencia sobre la Ley de Telecomunicaciones', NULL, 'hola', NULL, 13, 4, '2016-01-07', '08:21:27', NULL, 0),
(24, 'Noviembre con menos homicidios que octubre', 'Los pandilleros tienen claro que si siguen en la logica de la criminalidad, les espera muerte o carcel, acoto Misael Mejia, diputado efemelenista', 'hola', NULL, 14, 28, '2016-01-08', '07:22:18', NULL, 0),
(25, 'Curry alaba la creatividad de Messi... No sabes que va a hacer', 'Stephen Curry, el mejor jugador de baloncesto del momento, es un fan del futbolista argentino Lionel Messi, con el que comparte un estilo creativo', 'hola', NULL, 6, 41, '2016-01-08', '06:20:16', NULL, 0),
(26, 'Socialismo por revolucion pacifica', 'Transformar un modelo economico social que por tiempo excluyo a sectores desprotegidos no es una meta facil, dice fundador del FMLN', 'hola', NULL, 7, 6, '2016-01-08', '10:18:32', NULL, 0),
(27, 'La ley del menor', 'El estilo es realista, directo y austero como todas las obras de McEwan. Nunca hay digresiones o adornos literarios', 'hola', NULL, 3, 57, '2016-01-08', '07:28:20', NULL, 0),
(28, 'Produciendo diferente, produciendo agroecologico', 'Ante los efectos del cambio climatico, agricultores ya buscan nuevas alternativas y formas de producir, entre ellas la agroecologica', 'hola', NULL, 15, 34, '2016-01-09', '06:24:18', NULL, 0),
(29, 'A juicio expresidente Flores', 'Garcia Arguello aseguro que se abrio una cuenta bancaria a nombre del COENA ', 'hola', NULL, 6, 37, '2016-01-09', '07:26:19', NULL, 0),
(30, 'IndezoquixtiA: musica y libertad', 'Con un estilo singular, IndezoquixtiA promueve la musica y mensajes de reflexion para el rescate de una cultura por tiempo negada', 'hola', NULL, 6, 42, '2016-01-09', '07:38:40', NULL, 0),
(31, 'Nicaragua bloquea salida para inmigrantes cubanos', 'El canciller salvadoreno, Hugo Martinez, senalo que los paises actuaran con criterio de autodetermiancion para resolver crisis migratoria ', 'hola', NULL, 6, 55, '2016-01-09', '10:26:26', NULL, 0),
(32, 'Plazos traicioneros', 'Una semana antes del viaje mas de cinco mil soldados, policias y guardias realizaban una intensa ofensiva en zonas de presencia rebelde en el departamento de Morazan...', 'hola', NULL, 16, 54, '2016-01-10', '06:20:21', NULL, 0),
(33, 'Enrique Alvarez Cordova entrego su vida por los pobres', 'El 27 de noviembre de 1980, Enrique Alvarez Cordova (1930-1980), nacido dentro de las Catorce Familias mas poderosas de El Salvador, tres veces ministro de agricultura, es asesinado junto a dirigentes del FDR. ', 'hola', NULL, 17, 59, '2016-01-10', '08:22:22', NULL, 0),
(34, 'Consecuencias del abuso infanto juvenil', 'En general, el nino o adolescente que es abusado por un familiar suele quedar atrapado entre el afecto y la lealtad debidos a esa persona, y la inconveniencia del abuso de que es objeto', 'hola', NULL, 18, 35, '2016-01-10', '09:20:09', NULL, 0),
(35, 'El sexo: durante y despues del cancer de seno', 'Al menos el 70 de las personas que sufren esta enfermedad confiesan haber tenido problemas con el sexo', 'hola', NULL, 6, 58, '2016-01-10', '07:22:20', NULL, 0),
(36, 'Vigencia Ellacuria', 'El mejor homenaje a nuestros asesinados en las guerras de ayer y de hoy es fortalecer nuestro espiritu critico, nuestras exigencias como sociedad y nuestras propuestas y formulas de solucion', 'hola', NULL, 10, 1, '2016-01-11', '08:20:21', NULL, 0),
(37, 'Estamos con ganas de justicia en Caso Jesuitas', 'La querellante Almudena Berbaneu dijo que existe nueva jurispridencia en El Salvador para arrestar y extraditar a los perseguidos', 'hola', NULL, 19, 37, '2016-01-09', '09:22:24', NULL, 1),
(38, 'Corruptos desaciertos en El Salvador', 'La ley de probidad aprobada recientemente por el Legislativo carece de aspectos fundamentales para el combate a la verdadera currupcion, segun analistas', 'hola', NULL, 7, 37, '2016-01-10', '07:22:18', NULL, 1),
(39, 'Ficciones: el intelectual y el poder en El Salvador (1928-1932)', 'A la historia en boga segun la cual el general Martinez gobierna solo por terror y opresion, el proyecto ficticio agrega una hipotesis descabellada y engorrosa, a saber: el apoyo ideologico e intelectual a su Presidencia ', 'hola', NULL, 19, 37, '2016-01-11', '07:13:07', NULL, 1);

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
  `ciudad` varchar(20) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(20) COLLATE utf8_bin NOT NULL,
  `porcentaje` float NOT NULL,
  `valor` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
-- Estructura de tabla para la tabla `deposito`
--

CREATE TABLE IF NOT EXISTS `deposito` (
  `idDeposito` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(27, 'img/especiales3.jpg', 39, 'principal', 6);

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
  `cargo` varchar(15) COLLATE utf8_bin NOT NULL,
  `rutaFoto` varchar(25) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`idPersonal`, `nombres`, `apellidos`, `cargo`, `rutaFoto`) VALUES
(1, 'JosÃ© Luis', 'Escamilla', 'columnista', 'img/columnista1.jpg'),
(2, 'Mario', 'Morales', 'columnista', 'img/columnista2.jpg'),
(3, 'RubÃ©n', 'Aguilar', 'columnista', 'img/columnista3.jpg'),
(4, 'BenjamÃ­n', 'Cuellar', 'columnista', 'img/columnista4.png'),
(5, 'Carlos', 'Molina', 'columnista', 'img/columnista5.jpg'),
(6, 'RedacciÃ³n', 'Contrapunto', 'periodista', 'img/redaccion.jpg'),
(7, 'Laura', 'Bernal', 'periodista', 'img/laura.jpg'),
(8, 'AngÃ©lica MarÃ­a', 'Rivas', 'columnista', 'img/angelica.jpg'),
(9, 'Heinz', 'Dieterich', 'columnista', 'img/heinz.jpg'),
(10, 'Fidelina', 'MartÃ­nez Castro', 'columnista', 'img/fidelina.jpg'),
(11, 'Donald Salvador', 'Donato', 'columnista', 'img/donald.jpg'),
(12, 'Ricardo', 'Hausmann', 'columnista', 'img/columnista6.jpg'),
(13, 'Leonel', 'Herrera', 'columnista', 'img/leonel.jpg'),
(14, 'Dora', 'Reyes', 'periodista', 'img/dora.jpg'),
(15, 'Katia', 'Aguilar', 'periodista', 'img/katia.jpg'),
(16, 'Alberto', 'Barrera', 'periodista', 'img/alberto.jpg'),
(17, 'Tania', 'Primavera', 'periodista', 'img/tania.jpg'),
(18, 'Dra. Margarita', 'Mendoza Burgos', 'periodista', 'img/margarita.jpg'),
(19, 'Juan Jose', 'Dalton', 'periodista', 'img/jjd.jpg');

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
  `idDeposito` int(11) NOT NULL,
  `porcentaje` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
-- Indices de la tabla `deposito`
--
ALTER TABLE `deposito`
  ADD PRIMARY KEY (`idDeposito`);

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
  ADD PRIMARY KEY (`idTasa`),
  ADD KEY `idDeposito` (`idDeposito`);

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
  MODIFY `idArticulo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `idBanner` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bolsa`
--
ALTER TABLE `bolsa`
  MODIFY `idBolsa` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT de la tabla `deposito`
--
ALTER TABLE `deposito`
  MODIFY `idDeposito` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idImagen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
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
  MODIFY `idTasa` int(11) NOT NULL AUTO_INCREMENT;
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
-- Filtros para la tabla `tasainteres`
--
ALTER TABLE `tasainteres`
  ADD CONSTRAINT `tasainteres_ibfk_1` FOREIGN KEY (`idDeposito`) REFERENCES `deposito` (`idDeposito`) ON DELETE CASCADE ON UPDATE CASCADE;

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
