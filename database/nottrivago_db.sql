-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-11-2017 a las 14:58:07
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_cuidad`
--

INSERT INTO `tbl_cuidad` (`cod_ciudad`, `cod_pais`, `ciudad`) VALUES
(1, 1, 'Tegucigalpa'),
(2, 1, 'San Pedro Sula'),
(3, 1, 'Tela'),
(4, 1, 'Copan'),
(5, 1, 'Roatán'),
(6, 1, 'La Ceiba');

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
  `precio` decimal(4,0) NOT NULL,
  PRIMARY KEY (`cod_habitacion`),
  KEY `fk_tbl_habitacion_tbt_hotel_idx` (`tbt_hotel_cod_hotel`),
  KEY `fk_tbl_habitacion_tbl_tipo_habitacion1_idx` (`cod_tipo_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_habitacion`
--

INSERT INTO `tbl_habitacion` (`cod_habitacion`, `tbt_hotel_cod_hotel`, `cod_tipo_habitacion`, `numero_camas`, `precio`) VALUES
(1, 1, 1, 2, '75'),
(2, 1, 2, 2, '75'),
(3, 1, 3, 1, '75'),
(4, 1, 4, 2, '75'),
(5, 1, 5, 1, '79'),
(6, 1, 6, 2, '80'),
(7, 2, 7, 1, '85'),
(8, 2, 8, 1, '85'),
(9, 3, 7, 1, '148'),
(10, 3, 8, 1, '148'),
(11, 4, 4, 2, '81'),
(12, 4, 7, 1, '71'),
(13, 5, 9, 2, '198'),
(14, 5, 10, 1, '205'),
(15, 6, 11, 1, '121'),
(16, 6, 12, 1, '130'),
(17, 7, 8, 1, '109'),
(18, 8, 7, 2, '137'),
(19, 8, 8, 1, '137'),
(20, 9, 7, 1, '85'),
(21, 9, 4, 2, '85'),
(22, 10, 13, 2, '99'),
(23, 10, 3, 1, '99'),
(24, 11, 14, 1, '197'),
(25, 12, 3, 1, '72'),
(26, 12, 8, 1, '84'),
(27, 12, 4, 2, '72'),
(28, 13, 8, 1, '120'),
(29, 13, 7, 2, '120'),
(30, 14, 1, 2, '120'),
(31, 14, 7, 1, '90'),
(32, 15, 15, 1, '398'),
(33, 15, 16, 2, '716'),
(34, 16, 9, 2, '129'),
(35, 16, 17, 2, '129'),
(36, 17, 18, 1, '116'),
(37, 17, 19, 1, '90'),
(38, 18, 8, 1, '86'),
(39, 18, 2, 1, '86'),
(40, 18, 5, 1, '86'),
(41, 19, 1, 2, '70'),
(42, 19, 17, 2, '70'),
(43, 20, 7, 1, '193'),
(44, 21, 20, 2, '139'),
(45, 21, 21, 2, '160'),
(46, 22, 22, 1, '169'),
(47, 22, 10, 1, '145'),
(48, 23, 4, 2, '170'),
(49, 23, 23, 2, '219'),
(50, 24, 22, 1, '219'),
(51, 25, 19, 1, '209'),
(52, 25, 25, 2, '238');

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`cod_hotel`, `cod_ubicacion`, `nombre`, `email`, `telefono`, `n_estrellas`, `descripcion`, `n_habitaciones`, `habitaciones_diponibles`) VALUES
(1, 1, 'Clarion', 'clarion@mail.hn', '99997777', 4, 'disfruta y diviertete con nuestros sevicios ', 100, 80),
(2, 4, 'Holiday Inn Express San Pedro Sula', 'hiexpress@mhotelsgroup.com', '504 25403000', 2, 'Holiday Inn Express San Pedro Sula este convenabil amplasatîn zona populară San Pedro Sula. Acest hotel are totul ce v-ați dori pentru un sejur cât mai comfortabi. Toate facilitățile necesare, inclusiv facilităţi pentru turişti cu handicap, parcare auto, seif, servicii spălătorie, Wi-Fi în zone publice, sunt la dispoziția dvs.', 100, 50),
(3, 2, 'Real Intercontinental', 'real.intercontinental@hotel.hn', '97971212', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 150, 100),
(4, 3, 'Florencia Plaza', 'frorencia@plaza.hn', '22227020', 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 100, 20),
(5, 5, 'Grand Roatan Caribbean Resort', 'Reservations@GrandRoatanResort.com', '011-504-2433-9034', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 150, 30),
(6, 6, 'Tegucigalpa Marriott', 'marriott@mail.hn', '2232-0033', 5, 'El hotel Marriott de Tegucigalpa, Honduras, se encuentra ubicado en el nuevo centro urbano, a corta distancia del centro comercial Multiplaza, y ofrece transporte gratis al mismo con un horario programado que comienza a las 11:00 y finaliza a las 19:00 h. El aeropuerto internacional Toncontín se encuentra a tan solo 10 km del hotel. El hotel Marriott de Tegucigalpa ofrece 153 espaciosas habitaciones totalmente equipadas con acceso a Internet de alta velocidad. Disfrute del estupendo servicio del lounge Ejecutivo y de las 8 salas de reuniones con la tecnología más moderna.', 200, 100),
(7, 7, 'Hyatt Place Tegucigalpa', 'hyattplace@mail.hn', '+504 2202 6000', 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 150, 70),
(8, 8, 'Intercontinental Real San Pedro Sula', 'real.intercontinental@hotel.hn', '2545-2500', 5, 'Intercontinental Real San Pedro de Sula tiene una categoría de cinco estrellas y dispone de servicios acordes a esta distinción hotelera. Se encuentra cerca de la zona financiera de la ciudad y muy próximo al centro de la ciudad, cerca del mismo se pueden encontrar diversas alternativas de ocio como restaurantes, tiendas o locales nocturnos, y se encuentra cercano al transporte urbano.', 150, 50),
(9, 9, 'Crowne Plaza San Pedro Sula', 'crowneplaza@mail.hn', '2550-8080', 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 100, 80),
(10, 10, 'Hilton Princess San Pedro Sula', 'hotel-rez@mail.com', '2545-6900', 3, 'Hilton Princess San Pedro Sula se encuentra en esta zona de Honduras, tiene una categoría de tres estrellas. Se encuentra muy próximo al centro de la ciudad y a la zona histórica y monumental del lugar.\r\nAdemás muy cerca del hotel puedes encontrar diversas alternativas de ocio como restaurantes, pubs, locales nocturnos o boutiques y locales de compras.', 120, 30),
(11, 11, 'Infinity Bay Spa & Beach Resort', ' reservations@infinitybay.com', '+1 833-588-4229', 3, 'El Infinity Bay Spa & Beach Resort está situado en Honduras. Destinado para quienes quieran disfrutar de sol, playa y desconexión total.\r\n\r\nLas habitaciones están equipadas con todas las comodidades necesarias como aire acondicionado, plancha para la ropa, ventilador y baño completo. Además, cuentan con televisor de pantalla plana y cocina equipada con frigorífico y microondas', 100, 40),
(12, 12, 'LQ Hotel Tegucigalpa', 'lqhotel@mail.hn', '2202-5000', 4, 'LQ Hotel Tegucigalpa ofrece 110 habitaciones completamente equipadas con televisores de 40 pulgadas con canales Premium, Internet inalámbrico de 40 MB gratuito para huéspedes\r\n\r\nLas habitaciones cuentan con amplio escritorio de trabajo, teléfono con altavoz y correo de voz para tu comodidad. Sus excelentes colchones tipo Pillow top, te permitirán descansar para estar como nuevo al día siguiente.', 120, 50),
(13, 13, 'Copantl Hotel y Suites', 'reservaciones@copantl.com', '+504 2561-8900', 5, 'Copantl Hotel & Convention Center, situado en San Pedro Sula, es único, confortable, con estilo y con historia; posee todas las instalaciones y facilidades requeridas por el ejecutivo y turista moderno.\r\nAtención y servicios de primera con acceso a internet inalámbrico (wifi) gratis, amplio estacionamiento, seguridad permanente las 24 horas para su completa satisfacción.', 100, 30),
(14, 14, 'Quinta Real', 'INFO@QUINTAREALHOTEL.COM', '2440-3311', 4, 'Quinta Real es un hotel de 3 estrellas ubicado estratégicamente a la orilla del Mar Caribe, en el puerto de La Ceiba, Honduras; el Hotel y Centro de Convenciones Quinta Real fue diseñado para ofrecerle todas las comodidades que le harán disfrutar su estadía al máximo. Pase los más inolvidables días en la ciudad más alegre y festiva de Honduras, Ceibita La Bella', 140, 25),
(15, 15, 'Mayan Princess Beach & Dive Resort', 'reservations@mayanprincess.com', '+504 2445-5050', 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 200, 40),
(16, 16, 'Indura Beach & Golf Resort', ' reservations@induraresort.com', ' (504) 2437-0012', 5, 'Enclavada entre la selva tropical y las cristalinas y cálidas aguas del Caribe que bañan la costa norte hondureña, este nuevo complejo turístico redefine la experiencia del resort con un toque mágico. Un spa de clase mundial, un espectacular campo de golf de 18 hoyos y una inigualable playa que se extiende por kilómetros que resaltan la belleza natural de Centro América. Con un brillante tramo de 26 millas de la pintoresca Bahía de Tela, este nuevo complejo de lujo refleja la belleza fascinante de los arrecifes de coral y la selva tropical de los alrededores. En medio de las palmeras y las fragantes flores tropicales, los huéspedes disfrutan de suites elegantes y seductoras, una cocina insuperable y incomparables experiencias en la naturaleza que capturan la belleza de este paraíso centroamericano.', 170, 80),
(17, 17, 'Posada Seremein', 'posadaseremeinroatan@gmail.com', '+504 9769-6862', 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 130, 60),
(18, 18, 'Holiday Inn Express Tegucigalpa', 'reservas.tguex@agrisal.com', '504 22753400', 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 150, 20),
(19, 19, 'Las Cascadas', 'reservaciones@lascascadas.com', '9985-6568', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 100, 40),
(20, 20, 'Henry Morgan Resort', 'reservaciones@hmresorts.com', ' 2445-5009', 4, 'Henry Morgan Resort, hotel de cuatro estrellas situado en pleno Caribe, en la localidad de Roatán, ofrece a sus clientes una combinación de arena fina y blanca, mar azul turquesa, bancos de corales y aterdeceres caribeños.\r\n\r\nSe encuentra a 15 km. del aeropuerto internacional de Roatán, y a 14 km. de la ciudad más importante de Honduras, Coxen Hole.', 180, 60),
(21, 21, 'Las Verandas Hotel and Villas', ' info@las-verandas.com', '+504-2407-2040', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 190, 70),
(22, 22, 'Parrot Tree Beach Resort', 'reservations@parrotree.com', '504-2449-0108', 4, 'El hotel está situado justo en frente de la playa, lejos del ruido de la isla en el area de First Bight, el lugar perfecto para practicar el buceo, snorkel y las principales actividades acuáticas. Este hotel ofrece disfrutar del ritmo relajado y tranquilo. Dispone de playa privada donde los huéspedes pueden sumergir sus pies en las cálidas aguas tropicales o echar un siesta bien merecida en la sombra de una palapa en la playa. Las villas de este hotel de playa se han diseñado con elegantes y confortables habitaciones y confortables, disponen de cocina gourmet completamente equipada, sala de estar y comedor, terrazas que capturan la fresca brisa y vistas relajantes al mar. El elagante uso de granito y exoticas maderas, cerámica importada y finos detalles arquitectónicos crean un ambiente cálido y acogedor.', 130, 50),
(23, 23, 'Tranquil Seas Boutique Cabanas Roatan', 'tranquilseashotel@gmail.com', '+504 2407.2070', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 180, 40),
(24, 24, 'Pristine Bay Resort', 'info@pristinebayresort.com', ' +504-2407-2050', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 170, 30),
(25, 25, 'Media Luna Resort & Spa', 'reservaciones@hmresorts.com', ' 2407-2231', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 100, 60),
(26, 26, 'Telamar Resort', 'reservaciones@telamarresort.com ', '2480-4300', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 200, 40);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_img_habitacion`
--

INSERT INTO `tbl_img_habitacion` (`cod_img_habitacion`, `cod_habitacion`, `url_img_habitacion`) VALUES
(1, 1, '..//img//habitaciones-hoteles//hotel-clarion-1.jpg'),
(2, 2, '..//img//habitaciones-hoteles//hotel-clarion-2.jpg'),
(3, 4, '..//img//habitaciones-hoteles//hotel-clarion-3.jpg'),
(4, 5, '..//img//habitaciones-hoteles//hotel-clarion-4.jpg'),
(5, 7, '..//img//habitaciones-hoteles//hotel-holiday-inn-1.jpg'),
(6, 8, '..//img//habitaciones-hoteles//hotel-holiday-inn-2.jpg'),
(7, 9, '..//img//habitaciones-hoteles//hotel-intercontinental-1.jpg'),
(8, 10, '..//img//habitaciones-hoteles//hotel-intercontinental-2.jpg'),
(9, 11, '..//img//habitaciones-hoteles//hotel-florencia-1.jpg'),
(10, 13, '..//img//habitaciones-hoteles//hotel-grand-c-1.jpg'),
(11, 14, '..//img//habitaciones-hoteles//hotel-grand-c-2.jpg'),
(12, 15, '..//img//habitaciones-hoteles//hotel-marriott-1.jpg'),
(13, 16, '..//img//habitaciones-hoteles//hotel-marriott-2.jpg');

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
(1, 1, '..//img//hoteles//hotel11.jpg'),
(2, 2, '..//img//hoteles//hotel19.jpg'),
(3, 3, '..//img//hoteles//hotel21.jpg'),
(4, 4, '..//img//hoteles//hotel27.jpg'),
(5, 5, '..//img//hoteles//hotel1.jpg'),
(6, 6, '..//img//hoteles//hotel14.jpg'),
(7, 7, '..//img//hoteles//hotel2.jpg'),
(8, 8, '..//img//hoteles//hotel20.jpg'),
(9, 9, '..//img//hoteles//hotel12.jpg'),
(10, 10, '..//img//hoteles//hotel10.jpg'),
(11, 11, '..//img//hoteles//hotel3.jpg'),
(12, 12, '..//img//hoteles//hotel9.jpg'),
(13, 13, '..//img//hoteles//hotel4.jpg'),
(14, 14, '..//img//hoteles//hotel28.jpg'),
(15, 15, '..//img//hoteles//hotel29.jpg'),
(16, 16, '..//img//hoteles//hotel16.jpg'),
(17, 17, '..//img//hoteles//hotel30.jpg'),
(18, 18, '..//img//hoteles//hotel5.jpg'),
(19, 19, '..//img//hoteles//hotel8.jpg'),
(20, 20, '..//img//hoteles//hotel31.jpg'),
(21, 21, '..//img//hoteles//hotel32.jpg'),
(22, 22, '..//img//hoteles//hotel33.jpg'),
(23, 23, '..//img//hoteles//hotel34.jpg'),
(24, 24, '..//img//hoteles//hotel35.jpg'),
(25, 25, '..//img//hoteles//hotel36.jpg'),
(26, 26, '..//img//hoteles//hotel25.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_tipo_habitacion`
--

INSERT INTO `tbl_tipo_habitacion` (`cod_tipo_habitacion`, `tipo_habitacion`) VALUES
(1, 'Habitación Doble Estándar para no fumadores'),
(2, 'Habitación Estándar con cama extragrande'),
(3, 'Habitación con King Bed'),
(4, 'Habitación Doble'),
(5, 'Habitación Estándar con cama King'),
(6, 'Habitación Cuádruple con dos Camas Dobles'),
(7, 'Habitación estándar'),
(8, 'Habitación, 1 cama de matrimonio'),
(9, 'Suite junior, 2 camas dobles'),
(10, 'Suite junior, 1 cama de matrimonio grande'),
(11, 'De lujo, Habitación, Camas: 1 King o 2 Doble'),
(12, 'Habitación del nivel Ejecutivo,1 King o Queen'),
(13, 'Habitación Doble, con 2 camas dobles'),
(14, 'Estudio Premier con cama grande'),
(15, 'One Bedroom Beach Front'),
(16, 'Two Bedroom Jr. Suite Pool View'),
(17, 'Suite junior, 2 camas matrimoniales'),
(18, 'Estudio estándar, cocina básica'),
(19, 'Estudio con vistas al jardín'),
(20, 'Habitación Deluxe, vistas al campo de golf '),
(21, 'Habitación Deluxe, vistas parcial al mar'),
(22, 'Villa de 1 dormitorio'),
(23, 'Apartamento'),
(25, 'Habitación Doble con vista al jardín');

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

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
(8, 2, 15.4947569, -88.0368973),
(9, 2, 15.5066138, -88.0328036),
(10, 2, 15.4990365, -88.0401786),
(11, 5, 16.2725531, -86.6006567),
(12, 1, 14.0759296, -87.2015853),
(13, 2, 15.4951683, -88.0377805),
(14, 6, 15.7925178, -86.7905339),
(15, 5, 16.2759701, -86.6000866),
(16, 3, 15.8008006, -87.5403071),
(17, 5, 16.2777988, -86.6012489),
(18, 1, 14.0867308, -87.1900833),
(19, 2, 15.4998132, -88.0387159),
(20, 5, 16.276625, -86.6001047),
(21, 5, 16.3768363, -86.4641276),
(22, 5, 16.365216, -86.4144487),
(23, 5, 16.3220271, -86.5793643),
(24, 5, 16.375422, -86.4676507),
(25, 5, 16.3676573, -86.3953525),
(26, 3, 15.7794248, -87.4650221);

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
