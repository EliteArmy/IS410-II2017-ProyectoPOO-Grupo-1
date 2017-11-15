-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-11-2017 a las 22:36:25
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nottrivago_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_codigo_postal`
--

DROP TABLE IF EXISTS `tbl_codigo_postal`;
CREATE TABLE IF NOT EXISTS `tbl_codigo_postal` (
  `cod_codigo_postal` int(11) NOT NULL,
  `codigo_postal` int(11) DEFAULT NULL,
  `tbl_persona_cod_persona` int(11) NOT NULL,
  PRIMARY KEY (`cod_codigo_postal`),
  KEY `fk_tbl_codigo_postal_tbl_persona1_idx` (`tbl_persona_cod_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comentarios`
--

DROP TABLE IF EXISTS `tbl_comentarios`;
CREATE TABLE IF NOT EXISTS `tbl_comentarios` (
  `cod_comentario` int(11) NOT NULL,
  `cod_hotel` int(11) NOT NULL,
  `cod_usuario` int(11) NOT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_comentario`),
  KEY `fk_tbl_comentarios_tbl_hotel1_idx` (`cod_hotel`),
  KEY `fk_tbl_comentarios_tbl_usuario1_idx` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_comentarios`
--

INSERT INTO `tbl_comentarios` (`cod_comentario`, `cod_hotel`, `cod_usuario`, `comentario`) VALUES
(1, 1, 19, 'bueno '),
(2, 1, 18, 'no tengo nada que hacer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cuidad`
--

DROP TABLE IF EXISTS `tbl_cuidad`;
CREATE TABLE IF NOT EXISTS `tbl_cuidad` (
  `cod_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `cod_pais` int(11) NOT NULL,
  `ciudad` varchar(80) NOT NULL,
  PRIMARY KEY (`cod_ciudad`),
  KEY `fk_tbl_cuidad_tbl_pais1_idx` (`cod_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_cuidad`
--

INSERT INTO `tbl_cuidad` (`cod_ciudad`, `cod_pais`, `ciudad`) VALUES
(1, 1, 'Tegucigalpa'),
(2, 1, 'San Pedro Sula'),
(3, 1, 'Tela'),
(4, 1, 'Copan'),
(5, 1, 'Roatán');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_habitacion`
--

DROP TABLE IF EXISTS `tbl_habitacion`;
CREATE TABLE IF NOT EXISTS `tbl_habitacion` (
  `cod_habitacion` int(11) NOT NULL AUTO_INCREMENT,
  `tbt_hotel_cod_hotel` int(11) NOT NULL,
  `cod_tipo_habitacion` int(11) NOT NULL,
  `numero_camas` int(11) NOT NULL,
  `precio` decimal(2,0) NOT NULL,
  PRIMARY KEY (`cod_habitacion`),
  KEY `fk_tbl_habitacion_tbt_hotel_idx` (`tbt_hotel_cod_hotel`),
  KEY `fk_tbl_habitacion_tbl_tipo_habitacion1_idx` (`cod_tipo_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_hotel`
--

DROP TABLE IF EXISTS `tbl_hotel`;
CREATE TABLE IF NOT EXISTS `tbl_hotel` (
  `cod_hotel` int(11) NOT NULL AUTO_INCREMENT,
  `cod_ubicacion` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `n_estrellas` int(11) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `n_habitaciones` int(11) DEFAULT NULL,
  `habitaciones_diponibles` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_hotel`),
  UNIQUE KEY `cod_ubicacion_UNIQUE` (`cod_ubicacion`),
  UNIQUE KEY `cod_hotel_UNIQUE` (`cod_hotel`),
  KEY `fk_tbl_hotel_tbl_ubicacion1_idx` (`cod_ubicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`cod_hotel`, `cod_ubicacion`, `nombre`, `email`, `telefono`, `n_estrellas`, `descripcion`, `n_habitaciones`, `habitaciones_diponibles`) VALUES
(1, 1, 'Clarion', 'clarion@mail.hn', '99997777', 4, 'disfruta y diviertete con nuestros sevicios ', 100, 80),
(2, 4, 'Holiday Inn Express San Pedro Sula', 'hiexpress@mhotelsgroup.com', '504 25403000', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 100, 50),
(3, 2, 'Real Intercontinental', 'real.intercontinental@hotel.hn', '97971212', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 150, 100),
(4, 3, 'Florencia Plaza', 'frorencia@plaza.hn', '22227020', 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 100, 20),
(5, 5, 'Grand Roatan Caribbean Resort', 'Reservations@GrandRoatanResort.com', '011-504-2433-9034', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 150, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_img_habitacion`
--

DROP TABLE IF EXISTS `tbl_img_habitacion`;
CREATE TABLE IF NOT EXISTS `tbl_img_habitacion` (
  `cod_img_habitacion` int(11) NOT NULL AUTO_INCREMENT,
  `cod_habitacion` int(11) NOT NULL,
  `url_img_habitacion` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_img_habitacion`),
  KEY `fk_tbl_img_habitacion_tbl_habitacion1_idx` (`cod_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_img_hotel`
--

DROP TABLE IF EXISTS `tbl_img_hotel`;
CREATE TABLE IF NOT EXISTS `tbl_img_hotel` (
  `cod_img` int(11) NOT NULL,
  `cod_hotel` int(11) NOT NULL,
  `url_img_hotel` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_img`),
  KEY `fk_tbl_img_hotel_tbl_hotel1_idx` (`cod_hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_img_hotel`
--

INSERT INTO `tbl_img_hotel` (`cod_img`, `cod_hotel`, `url_img_hotel`) VALUES
(2, 2, '..//img//hoteles//hotel19.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pais`
--

DROP TABLE IF EXISTS `tbl_pais`;
CREATE TABLE IF NOT EXISTS `tbl_pais` (
  `cod_pais` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_pais`
--

INSERT INTO `tbl_pais` (`cod_pais`, `pais`) VALUES
(1, 'Honduras'),
(2, 'Costa Rica'),
(3, 'Guatemala'),
(4, 'Brasil'),
(5, 'Argentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_puntuacion`
--

DROP TABLE IF EXISTS `tbl_puntuacion`;
CREATE TABLE IF NOT EXISTS `tbl_puntuacion` (
  `cod_puntuacion` int(11) NOT NULL AUTO_INCREMENT,
  `cod_hotel` int(11) NOT NULL,
  `cod_usuario` int(11) NOT NULL,
  `Ubicacion` int(11) DEFAULT NULL,
  `habitacion` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `limpieza` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_puntuacion`),
  KEY `fk_tbl_puntuacion_tbl_hotel1_idx` (`cod_hotel`),
  KEY `fk_tbl_puntuacion_tbl_usuario1_idx` (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_puntuacion`
--

INSERT INTO `tbl_puntuacion` (`cod_puntuacion`, `cod_hotel`, `cod_usuario`, `Ubicacion`, `habitacion`, `servicio`, `limpieza`) VALUES
(1, 1, 0, 9, 9, 8, 8),
(2, 1, 0, 8, 9, 9, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicios`
--

DROP TABLE IF EXISTS `tbl_servicios`;
CREATE TABLE IF NOT EXISTS `tbl_servicios` (
  `cod_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `servicio` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_servicios`
--

INSERT INTO `tbl_servicios` (`cod_servicio`, `servicio`) VALUES
(1, 'wifi'),
(2, 'Wifi'),
(3, 'Desayuno'),
(4, 'Piscina'),
(5, 'Spa'),
(6, 'Playa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicios_x_tbl_hotel`
--

DROP TABLE IF EXISTS `tbl_servicios_x_tbl_hotel`;
CREATE TABLE IF NOT EXISTS `tbl_servicios_x_tbl_hotel` (
  `cod_servicio` int(11) NOT NULL,
  `cod_hotel` int(11) NOT NULL,
  PRIMARY KEY (`cod_servicio`,`cod_hotel`),
  KEY `fk_tbl_servicios_has_tbl_hotel_tbl_hotel1_idx` (`cod_hotel`),
  KEY `fk_tbl_servicios_has_tbl_hotel_tbl_servicios1_idx` (`cod_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_servicios_x_tbl_hotel`
--

INSERT INTO `tbl_servicios_x_tbl_hotel` (`cod_servicio`, `cod_hotel`) VALUES
(1, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_usuarios`
--

DROP TABLE IF EXISTS `tbl_tipos_usuarios`;
CREATE TABLE IF NOT EXISTS `tbl_tipos_usuarios` (
  `cod_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_usuario` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_tipo_usuario`),
  UNIQUE KEY `tipo_usuario_UNIQUE` (`tipo_usuario`),
  UNIQUE KEY `cod_tipo_usuario_UNIQUE` (`cod_tipo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_tipos_usuarios`
--

INSERT INTO `tbl_tipos_usuarios` (`cod_tipo_usuario`, `tipo_usuario`) VALUES
(3, 'Administrador'),
(2, 'Hotelero'),
(1, 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_habitacion`
--

DROP TABLE IF EXISTS `tbl_tipo_habitacion`;
CREATE TABLE IF NOT EXISTS `tbl_tipo_habitacion` (
  `cod_tipo_habitacion` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_habitacion` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_tipo_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ubicacion`
--

DROP TABLE IF EXISTS `tbl_ubicacion`;
CREATE TABLE IF NOT EXISTS `tbl_ubicacion` (
  `cod_ubicacion` int(11) NOT NULL AUTO_INCREMENT,
  `cod_ciudad` int(11) NOT NULL,
  `latidud` double NOT NULL,
  `longitud` double NOT NULL,
  PRIMARY KEY (`cod_ubicacion`),
  KEY `fk_tbl_ubicacion_tbl_cuidad1_idx` (`cod_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_ubicacion`
--

INSERT INTO `tbl_ubicacion` (`cod_ubicacion`, `cod_ciudad`, `latidud`, `longitud`) VALUES
(1, 1, 14.0872978, -87.1943115),
(2, 1, 14.088395, -87.1855262),
(3, 1, 14.0858201, -87.1925091),
(4, 2, 15.4963122, -88.0339207),
(5, 5, 16.2719381, -86.6024077),
(6, 1, 14.609375, -87.1444352),
(7, 1, 14.1022642, -87.1892126),
(8, 2, 15.4947569, -88.0368973);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
CREATE TABLE IF NOT EXISTS `tbl_usuario` (
  `cod_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `cod_tipo_usuario` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fecha_nacimiento` varchar(45) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `url_img_usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`),
  UNIQUE KEY `cod_usuario_UNIQUE` (`cod_usuario`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_tbl_usuario_tbl_tipos_usuarios1_idx` (`cod_tipo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`cod_usuario`, `cod_tipo_usuario`, `nombre`, `apellido`, `email`, `password`, `fecha_nacimiento`, `ciudad`, `pais`, `url_img_usuario`) VALUES
(1, 3, 'Mugiwara No Luffy', NULL, 'nottrivago@admin.com', 'asd.456', NULL, NULL, NULL, '..//img//admin//luffy.png'),
(2, 3, 'Loky', NULL, 'loky@mail.com', 'loky.2017', NULL, NULL, NULL, NULL),
(18, 1, NULL, NULL, 'denis.henriquez@mail.com', 'kakaroto', NULL, NULL, NULL, NULL),
(19, 1, NULL, NULL, 'marisol@yahoo.com', 'jajaja', NULL, NULL, NULL, NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_codigo_postal`
--
ALTER TABLE `tbl_codigo_postal`
  ADD CONSTRAINT `fk_tbl_codigo_postal_tbl_persona1` FOREIGN KEY (`tbl_persona_cod_persona`) REFERENCES `tbl_usuario` (`cod_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  ADD CONSTRAINT `fk_tbl_comentarios_tbl_hotel1` FOREIGN KEY (`cod_hotel`) REFERENCES `tbl_hotel` (`cod_hotel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_comentarios_tbl_usuario1` FOREIGN KEY (`cod_usuario`) REFERENCES `tbl_usuario` (`cod_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_cuidad`
--
ALTER TABLE `tbl_cuidad`
  ADD CONSTRAINT `fk_tbl_cuidad_tbl_pais1` FOREIGN KEY (`cod_pais`) REFERENCES `tbl_pais` (`cod_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_habitacion`
--
ALTER TABLE `tbl_habitacion`
  ADD CONSTRAINT `fk_tbl_habitacion_tbl_tipo_habitacion1` FOREIGN KEY (`cod_tipo_habitacion`) REFERENCES `tbl_tipo_habitacion` (`cod_tipo_habitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_habitacion_tbt_hotel` FOREIGN KEY (`tbt_hotel_cod_hotel`) REFERENCES `tbl_hotel` (`cod_hotel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  ADD CONSTRAINT `fk_tbl_hotel_tbl_ubicacion1` FOREIGN KEY (`cod_ubicacion`) REFERENCES `tbl_ubicacion` (`cod_ubicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_img_habitacion`
--
ALTER TABLE `tbl_img_habitacion`
  ADD CONSTRAINT `fk_tbl_img_habitacion_tbl_habitacion1` FOREIGN KEY (`cod_habitacion`) REFERENCES `tbl_habitacion` (`cod_habitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_img_hotel`
--
ALTER TABLE `tbl_img_hotel`
  ADD CONSTRAINT `fk_tbl_img_hotel_tbl_hotel1` FOREIGN KEY (`cod_hotel`) REFERENCES `tbl_hotel` (`cod_hotel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_servicios_x_tbl_hotel`
--
ALTER TABLE `tbl_servicios_x_tbl_hotel`
  ADD CONSTRAINT `fk_tbl_servicios_has_tbl_hotel_tbl_hotel1` FOREIGN KEY (`cod_hotel`) REFERENCES `tbl_hotel` (`cod_hotel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_servicios_has_tbl_hotel_tbl_servicios1` FOREIGN KEY (`cod_servicio`) REFERENCES `tbl_servicios` (`cod_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
