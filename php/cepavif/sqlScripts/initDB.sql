-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2020 a las 14:40:29
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cepavif`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` int NOT NULL,
  `fecha_de_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `asistente_id` int NOT NULL,
  `sesion_id` int NOT NULL,
  `observaciones` text COLLATE utf8_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `fecha_de_registro`, `asistente_id`, `sesion_id`, `observaciones`) VALUES
(28, '2020-11-05 18:57:20', 113047, 163, ''),
(29, '2020-11-05 18:57:29', 113047, 164, ''),
(30, '2020-11-05 18:57:36', 113047, 165, ''),
(31, '2020-11-05 18:57:43', 113047, 166, ''),
(32, '2020-11-05 18:57:50', 113047, 167, ''),
(33, '2020-11-05 18:57:57', 113047, 168, ''),
(34, '2020-11-05 18:58:07', 113047, 169, ''),
(35, '2020-11-05 18:58:15', 113047, 170, ''),
(36, '2020-11-05 18:58:26', 113047, 171, ''),
(37, '2020-11-05 18:58:36', 113047, 172, ''),
(38, '2020-11-05 18:58:45', 113047, 173, ''),
(39, '2020-11-05 18:58:58', 113047, 174, ''),
(40, '2020-11-05 18:59:09', 113047, 175, ''),
(41, '2020-11-05 18:59:18', 113047, 176, ''),
(42, '2020-11-05 18:59:29', 113047, 177, ''),
(43, '2020-11-05 20:15:47', 113047, 178, ''),
(44, '2020-11-05 20:48:13', 113064, 213, ''),
(45, '2020-11-05 20:48:42', 113064, 214, ''),
(46, '2020-11-05 20:49:02', 113064, 220, ''),
(47, '2020-11-05 20:49:28', 113064, 221, ''),
(48, '2020-11-05 20:49:45', 113064, 219, ''),
(49, '2020-11-05 20:57:35', 113064, 222, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistentes`
--

CREATE TABLE `asistentes` (
  `id` int NOT NULL,
  `fecha_de_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_paterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_materno` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sexo` varchar(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'H',
  `folio` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imputado` tinyint(1) DEFAULT '0',
  `numero_de_causa` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `municipio` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `supervisor` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_de_telefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_de_canalizacion` date DEFAULT NULL,
  `fecha_de_entrevista` date DEFAULT NULL,
  `notas_psicologicas` text COLLATE utf8_spanish_ci,
  `observaciones` text COLLATE utf8_spanish_ci,
  `entrevista` tinyint(1) DEFAULT '0',
  `suspendido` tinyint(1) DEFAULT '0',
  `fecha_de_suspencion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `asistentes`
--

INSERT INTO `asistentes` (`id`, `fecha_de_creacion`, `nombre`, `apellido_paterno`, `apellido_materno`, `sexo`, `folio`, `imputado`, `numero_de_causa`, `municipio`, `supervisor`, `numero_de_telefono`, `fecha_de_canalizacion`, `fecha_de_entrevista`, `notas_psicologicas`, `observaciones`, `entrevista`, `suspendido`, `fecha_de_suspencion`) VALUES
(113047, '2020-11-05 17:02:36', 'Saúl Alonso', 'Ibarra', 'Luevano', 'H', '20H0001', 0, '', 'Zacatecas', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113048, '2020-11-05 17:30:31', 'Maria Auxilio', 'González', 'Medrano', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113049, '2020-11-05 17:31:12', 'Maria Luisa', 'Fleman', 'Sepulveda', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113050, '2020-11-05 17:31:45', 'Epolita', 'Ortiz', 'Roque', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113051, '2020-11-05 17:32:20', 'Ofelia', 'Hernández', '', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113052, '2020-11-05 17:33:12', 'Francisca', 'Carrillo', 'del Muro', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113053, '2020-11-05 17:34:00', 'Guadalupe', 'Jasso', 'Carranza', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113054, '2020-11-05 17:34:37', 'Enedina', 'de Santiago', 'Castro', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113055, '2020-11-05 17:35:32', 'Silcenta Antonieta', 'Montoya', '', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113056, '2020-11-05 17:36:01', 'Maria', 'Salome', 'Ortíz', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113057, '2020-11-05 17:36:51', 'Maria Auxilio', 'Villegas', '', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113058, '2020-11-05 17:37:24', 'Bernardina', 'Caldera', 'Santana', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113059, '2020-11-05 17:38:03', 'Maria Isabel', 'Caldera', '', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113060, '2020-11-05 17:38:39', 'Maria Trinidad', 'Caldera', 'Carrillo', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113061, '2020-11-05 17:39:21', 'Clemencia Guadalupe', 'Morales', 'Valadez', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113062, '2020-11-05 17:39:50', 'Porfiria', 'Caldera', 'Santana', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113063, '2020-11-05 17:40:24', 'Juana Maria', 'Davila', '', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113064, '2020-11-05 17:40:55', 'Cirila', 'Santana', 'Martínez', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113065, '2020-11-05 17:41:27', 'Concepción', 'Ortiz', 'Escalante', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113066, '2020-11-05 17:42:03', 'Maria Berenice', 'Castro', 'Santana', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113067, '2020-11-05 17:42:40', 'Ma. Concepción', 'García', 'Hernández', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113068, '2020-11-05 17:43:06', 'Teresa', 'Falcón', '', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113069, '2020-11-05 17:43:37', 'Ma. Antonieta', 'Montoya', 'M.', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113070, '2020-11-05 17:44:06', 'Victoria', 'Zaragoza', 'Ramos', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113071, '2020-11-05 17:45:00', 'Martha A.', 'Zaragoza', '', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113072, '2020-11-05 17:45:32', 'Catalina', 'García', 'de Rodríguez', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113073, '2020-11-05 17:46:02', 'Catalina', 'Rios', 'García', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113074, '2020-11-05 17:46:36', 'Irma Guadalupe', 'Moya', 'Cervantes', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113075, '2020-11-05 17:47:14', 'Maria Dolores', 'Días', 'Pérez', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113076, '2020-11-05 17:47:54', 'Maria Josefina', 'Hernández', 'Márquez', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113077, '2020-11-05 17:48:38', 'Cleopatra', 'Davila', 'Rosales', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113078, '2020-11-05 17:49:11', 'Ma del Rosario', 'Cisneros', '', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113079, '2020-11-05 17:49:50', 'Teresa de Jesús', 'Cisneros', 'Gómez', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113080, '2020-11-05 17:50:24', 'Beatriz', 'Olivares', 'Bañuelos', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113081, '2020-11-05 17:50:50', 'Natividad', 'Espino', 'García', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113082, '2020-11-05 17:51:28', 'Leticia', 'Ramírez', 'González', 'M', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113083, '2020-11-05 17:52:22', 'Ángel Mateo', 'Maraquez', 'Delgado', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113084, '2020-11-05 17:52:57', 'J. Ángel', 'Valadez', 'González', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113085, '2020-11-05 17:53:34', 'Alexis Michel', 'Alatorre', 'Lugo', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113086, '2020-11-05 17:54:13', 'Nayib Aratrón', 'Vargas', 'Sifuentes', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113087, '2020-11-05 17:54:43', 'Jorge Armando', 'Venegas', 'Venegas', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113088, '2020-11-05 17:55:16', 'Jaime', 'Arteaga', 'Miramontes', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113089, '2020-11-05 17:55:47', 'José Ángel', 'Jacobo', 'Guerrero', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113090, '2020-11-05 17:56:18', 'Gabriel', 'Rodríguez', 'Rosales', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113091, '2020-11-05 17:56:48', 'Lorenzo', 'Gómez', 'Martínez', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113092, '2020-11-05 17:57:21', 'Victor Alejandro', 'Aguayo', 'Canales', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113093, '2020-11-05 17:58:45', 'Filiberto', 'Cervantes', 'Davalos', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113094, '2020-11-05 17:59:29', 'Joel', 'Chavez', 'Espino', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113095, '2020-11-05 18:00:28', 'Andres', 'Vega', 'Muñoz', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113096, '2020-11-05 18:01:08', 'Gerardo', 'Cuellar', 'Rodríguez', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113097, '2020-11-05 18:01:53', 'Elizzar Issac', 'Pérez', 'Montelongo', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113098, '2020-11-05 18:02:34', 'José Cruz', 'de Lira', 'Díaz', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113099, '2020-11-05 18:03:03', 'J. Guadalupe', 'Pérez', '', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113100, '2020-11-05 18:03:43', 'Rubén', 'Ruiz', 'Calvillo', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113101, '2020-11-05 18:04:17', 'Esteban', 'Monsivais', 'Rangel', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113102, '2020-11-05 18:04:47', 'Osvaldo', 'Lugo', 'Ruiz', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113103, '2020-11-05 18:05:26', 'Rubén', 'García', 'González', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113104, '2020-11-05 18:06:37', 'Francisco', 'Féliz', 'Barrios', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113105, '2020-11-05 18:07:13', 'José Guillermo', 'Pacheco', 'González', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113106, '2020-11-05 18:07:45', 'Carlos Alberto', 'Femat', 'Martínez', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113107, '2020-11-05 18:08:20', 'José Eduardo', 'Venegas', 'Pacheco', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(113108, '2020-11-05 18:08:56', 'Francisco', 'Gaytán', 'Robles', 'H', '', 0, '', '', '', '', NULL, NULL, '', '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistentes_a_servicio`
--

CREATE TABLE `asistentes_a_servicio` (
  `asistente_id` int NOT NULL,
  `servicio_id` int NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `asistentes_a_servicio`
--

INSERT INTO `asistentes_a_servicio` (`asistente_id`, `servicio_id`, `id`) VALUES
(113047, 41432, 17),
(113048, 41433, 19),
(113060, 41433, 20),
(113064, 41434, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authorities`
--

CREATE TABLE `authorities` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `authority` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `authorities`
--

INSERT INTO `authorities` (`id`, `user_id`, `authority`, `nombre`) VALUES
(6, 3, 'ROLE_ADMIN', 'Administrador'),
(10, 1, 'ROLE_ADMIN', 'Root'),
(15, 10, 'ROLE_FACILITADOR', 'Facilitador'),
(16, 11, 'ROLE_FACILITADOR', 'Facilitador'),
(17, 12, 'ROLE_FACILITADOR', 'Facilitador'),
(18, 13, 'ROLE_FACILITADOR', 'Facilitador'),
(19, 14, 'ROLE_FACILITADOR', 'Facilitador'),
(20, 15, 'ROLE_FACILITADOR', 'Facilitador'),
(21, 16, 'ROLE_FACILITADOR', 'Facilitador'),
(22, 17, 'ROLE_FACILITADOR', 'Facilitador'),
(23, 18, 'ROLE_ADMIN', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_de_servicio`
--

CREATE TABLE `detalle_de_servicio` (
  `id` int NOT NULL,
  `id_de_grupo` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_de_inicio` date DEFAULT NULL,
  `fecha_de_cierre` date DEFAULT NULL,
  `hora` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `servicio_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_de_servicio`
--

INSERT INTO `detalle_de_servicio` (`id`, `id_de_grupo`, `fecha_de_inicio`, `fecha_de_cierre`, `hora`, `servicio_id`) VALUES
(31, NULL, '2020-08-02', '2020-12-11', '03:00', 41432),
(32, NULL, '2021-01-04', '2021-07-23', '15:00', 41433),
(33, NULL, '2020-08-03', '2020-12-18', '12:00', 41434);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `id` int NOT NULL,
  `user` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `module` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `controller` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `method` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` text COLLATE utf8_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id`, `user`, `module`, `controller`, `method`, `time`, `data`) VALUES
(1475, 'saul', 'basic', 'admin', 'index', '2020-11-04 20:58:11', '{\"r\":\"admin\\/index\"}'),
(1476, 'saul', 'basic', 'admin', 'usuarios', '2020-11-04 20:58:17', '{\"r\":\"admin\\/usuarios\"}'),
(1477, 'saul', 'basic', 'admin', 'asistentes', '2020-11-04 20:58:20', '{\"r\":\"admin\\/asistentes\"}'),
(1478, 'saul', 'basic', 'admin', 'servicios', '2020-11-04 20:58:21', '{\"r\":\"admin\\/servicios\"}'),
(1479, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-04 20:58:22', '{\"r\":\"admin\\/datagraphs\"}'),
(1480, 'saul', 'basic', 'admin', 'servicios', '2020-11-04 20:58:25', '{\"r\":\"admin\\/servicios\"}'),
(1481, 'saul', 'basic', 'admin', 'servicios', '2020-11-04 22:49:49', '{\"r\":\"admin\\/servicios\"}'),
(1482, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 01:15:58', '{\"r\":\"admin\\/servicios\"}'),
(1483, 'saul', 'basic', 'admin', 'index', '2020-11-05 01:16:05', '{\"r\":\"admin\\/index\"}'),
(1484, 'saul', 'basic', 'admin', 'index', '2020-11-05 01:35:25', '{\"r\":\"admin\\/index\"}'),
(1485, 'saul', 'basic', 'admin', 'index', '2020-11-05 01:35:28', '{\"r\":\"admin\\/index\"}'),
(1486, 'saul', 'basic', 'admin', 'index', '2020-11-05 01:35:29', '{\"r\":\"admin\\/index\"}'),
(1487, 'saul', 'basic', 'admin', 'index', '2020-11-05 01:35:30', '{\"r\":\"admin\\/index\"}'),
(1488, 'saul', 'basic', 'admin', 'index', '2020-11-05 01:35:31', '{\"r\":\"admin\\/index\"}'),
(1489, 'saul', 'basic', 'admin', 'index', '2020-11-05 01:37:00', '{\"r\":\"admin\\/index\"}'),
(1490, 'saul', 'basic', 'admin', 'index', '2020-11-05 14:35:32', '{\"r\":\"admin\\/index\"}'),
(1491, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 14:37:04', '{\"r\":\"admin\\/servicios\"}'),
(1492, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 14:38:01', '{\"r\":\"admin\\/servicios\"}'),
(1493, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 14:38:33', '{\"r\":\"admin\\/servicios\"}'),
(1494, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 14:38:36', '{\"r\":\"admin\\/servicios\"}'),
(1495, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 14:42:37', '{\"r\":\"admin\\/servicios\"}'),
(1496, 'saul', 'basic', 'admin', 'serviciocreate', '2020-11-05 14:42:41', '{\"r\":\"admin\\/serviciocreate\"}'),
(1497, 'saul', 'basic', 'admin', 'serviciocreate', '2020-11-05 14:47:56', '{\"r\":\"admin\\/serviciocreate\"}'),
(1498, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 14:48:00', '{\"r\":\"admin\\/servicios\"}'),
(1499, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 14:53:46', '{\"r\":\"admin\\/datagraphs\"}'),
(1500, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 14:59:20', '{\"r\":\"admin\\/datagraphs\"}'),
(1501, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:05:11', '{\"r\":\"admin\\/datagraphs\"}'),
(1502, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:14:28', '{\"r\":\"admin\\/datagraphs\"}'),
(1503, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:15:39', '{\"r\":\"admin\\/datagraphs\"}'),
(1504, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:20:04', '{\"r\":\"admin\\/datagraphs\"}'),
(1505, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:20:36', '{\"r\":\"admin\\/datagraphs\"}'),
(1506, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:27:21', '{\"r\":\"admin\\/datagraphs\"}'),
(1507, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:27:46', '{\"r\":\"admin\\/datagraphs\"}'),
(1508, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:34:28', '{\"r\":\"admin\\/datagraphs\"}'),
(1509, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:34:44', '{\"r\":\"admin\\/datagraphs\"}'),
(1510, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:35:35', '{\"r\":\"admin\\/datagraphs\"}'),
(1511, 'saul', 'basic', 'admin', 'index', '2020-11-05 15:36:19', '{\"r\":\"admin\\/index\"}'),
(1512, 'saul', 'basic', 'admin', 'index', '2020-11-05 15:36:19', '{\"r\":\"admin\\/index\"}'),
(1513, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 15:36:23', '{\"r\":\"admin\\/servicios\"}'),
(1514, 'saul', 'basic', 'admin', 'serviciocreate', '2020-11-05 15:36:24', '{\"r\":\"admin\\/serviciocreate\"}'),
(1515, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:48:11', '{\"r\":\"admin\\/datagraphs\"}'),
(1516, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:48:24', '{\"r\":\"admin\\/datagraphs\"}'),
(1517, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:48:32', '{\"r\":\"admin\\/datagraphs\"}'),
(1518, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:49:02', '{\"r\":\"admin\\/datagraphs\"}'),
(1519, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:49:11', '{\"r\":\"admin\\/datagraphs\"}'),
(1520, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:50:03', '{\"r\":\"admin\\/datagraphs\"}'),
(1521, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 15:51:00', '{\"r\":\"admin\\/servicios\"}'),
(1522, 'saul', 'basic', 'admin', 'index', '2020-11-05 15:51:01', '{\"r\":\"admin\\/index\"}'),
(1523, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 15:53:06', '{\"r\":\"admin\\/datagraphs\"}'),
(1524, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:00:21', '{\"r\":\"admin\\/datagraphs\"}'),
(1525, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:00:48', '{\"r\":\"admin\\/datagraphs\"}'),
(1526, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:02:08', '{\"r\":\"admin\\/datagraphs\"}'),
(1527, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:02:51', '{\"r\":\"admin\\/datagraphs\"}'),
(1528, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:03:05', '{\"r\":\"admin\\/datagraphs\"}'),
(1529, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:05:32', '{\"r\":\"admin\\/datagraphs\"}'),
(1530, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:05:58', '{\"r\":\"admin\\/datagraphs\"}'),
(1531, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:06:33', '{\"r\":\"admin\\/datagraphs\"}'),
(1532, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:07:01', '{\"r\":\"admin\\/datagraphs\"}'),
(1533, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:07:21', '{\"r\":\"admin\\/datagraphs\"}'),
(1534, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:08:04', '{\"r\":\"admin\\/datagraphs\"}'),
(1535, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:10:55', '{\"r\":\"admin\\/datagraphs\"}'),
(1536, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:11:19', '{\"r\":\"admin\\/datagraphs\"}'),
(1537, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:11:39', '{\"r\":\"admin\\/datagraphs\"}'),
(1538, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:33:15', '{\"r\":\"admin\\/datagraphs\"}'),
(1539, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:34:05', '{\"r\":\"admin\\/datagraphs\"}'),
(1540, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:34:24', '{\"r\":\"admin\\/datagraphs\"}'),
(1541, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:37:58', '{\"r\":\"admin\\/datagraphs\"}'),
(1542, 'saul', 'basic', 'admin', 'index', '2020-11-05 16:38:55', '{\"r\":\"admin\\/index\"}'),
(1543, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:40:04', '{\"r\":\"admin\\/datagraphs\"}'),
(1544, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:41:01', '{\"r\":\"admin\\/datagraphs\"}'),
(1545, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:41:57', '{\"r\":\"admin\\/datagraphs\"}'),
(1546, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:45:03', '{\"r\":\"admin\\/datagraphs\"}'),
(1547, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:45:57', '{\"r\":\"admin\\/datagraphs\"}'),
(1548, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:46:08', '{\"r\":\"admin\\/datagraphs\"}'),
(1549, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:46:19', '{\"r\":\"admin\\/datagraphs\"}'),
(1550, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:46:27', '{\"r\":\"admin\\/datagraphs\"}'),
(1551, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:46:34', '{\"r\":\"admin\\/datagraphs\"}'),
(1552, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:46:41', '{\"r\":\"admin\\/datagraphs\"}'),
(1553, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:46:50', '{\"r\":\"admin\\/datagraphs\"}'),
(1554, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:47:04', '{\"r\":\"admin\\/datagraphs\"}'),
(1555, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:47:13', '{\"r\":\"admin\\/datagraphs\"}'),
(1556, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:47:54', '{\"r\":\"admin\\/datagraphs\"}'),
(1557, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:48:27', '{\"r\":\"admin\\/datagraphs\"}'),
(1558, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:49:50', '{\"r\":\"admin\\/datagraphs\"}'),
(1559, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:51:46', '{\"r\":\"admin\\/datagraphs\"}'),
(1560, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:54:15', '{\"r\":\"admin\\/datagraphs\"}'),
(1561, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:54:33', '{\"r\":\"admin\\/datagraphs\"}'),
(1562, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:56:00', '{\"r\":\"admin\\/datagraphs\"}'),
(1563, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:56:21', '{\"r\":\"admin\\/datagraphs\"}'),
(1564, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:57:03', '{\"r\":\"admin\\/datagraphs\"}'),
(1565, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:57:43', '{\"r\":\"admin\\/datagraphs\"}'),
(1566, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:57:54', '{\"r\":\"admin\\/datagraphs\"}'),
(1567, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:58:06', '{\"r\":\"admin\\/datagraphs\"}'),
(1568, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:58:28', '{\"r\":\"admin\\/datagraphs\"}'),
(1569, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:58:36', '{\"r\":\"admin\\/datagraphs\"}'),
(1570, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:58:49', '{\"r\":\"admin\\/datagraphs\"}'),
(1571, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:58:56', '{\"r\":\"admin\\/datagraphs\"}'),
(1572, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 16:59:15', '{\"r\":\"admin\\/datagraphs\"}'),
(1573, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 17:01:16', '{\"r\":\"admin\\/datagraphs\"}'),
(1574, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:01:33', '{\"r\":\"admin\\/asistentes\"}'),
(1575, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:01:35', '{\"r\":\"admin\\/asistentecreate\"}'),
(1576, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:01:49', '{\"nombre\":\"Sa\\u00fal Alonso\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"7--n0gbIja_1KdrGFybZ4ZO7ny3zKe9bBc-PRlMqc1ClrcikV4S41rdfqadVEZKQ2PrdQbYbiD9M-vsREmU8fQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1577, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:01:51', '{\"nombre\":\"Sa\\u00fal Alonso\",\"apellido_paterno\":\"Ibarra\",\"apellido_materno\":\"\",\"_csrf\":\"7--n0gbIja_1KdrGFybZ4ZO7ny3zKe9bBc-PRlMqc1ClrcikV4S41rdfqadVEZKQ2PrdQbYbiD9M-vsREmU8fQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1578, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:01:56', '{\"nombre\":\"Sa\\u00fal Alonso\",\"apellido_paterno\":\"Ibarra\",\"apellido_materno\":\"Luevano\",\"_csrf\":\"7--n0gbIja_1KdrGFybZ4ZO7ny3zKe9bBc-PRlMqc1ClrcikV4S41rdfqadVEZKQ2PrdQbYbiD9M-vsREmU8fQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1579, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:02:36', '{\"_csrf\":\"7--n0gbIja_1KdrGFybZ4ZO7ny3zKe9bBc-PRlMqc1ClrcikV4S41rdfqadVEZKQ2PrdQbYbiD9M-vsREmU8fQ==\",\"Asistente\":{\"nombre\":\"Sa\\u00fal Alonso\",\"apellido_paterno\":\"Ibarra\",\"apellido_materno\":\"Luevano\",\"sexo\":\"H\",\"folio\":\"20H0001\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"Zacatecas\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1580, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:02:36', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113047\"}'),
(1581, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 17:02:40', '{\"r\":\"admin\\/servicios\"}'),
(1582, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 17:02:42', '{\"r\":\"admin\\/datagraphs\"}'),
(1583, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:06:08', '{\"r\":\"admin\\/usuarios\"}'),
(1584, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:06:11', '{\"r\":\"admin\\/usercreate\"}'),
(1585, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:07:01', '{\"_csrf\":\"nNy4lVQdEoLvmyAZWdSa5tAe-1kdYQGMOiALmYc-7efWntfjBVEn-63tU3gb49GXm1-5NVhTZuhzFX_OxnGiyg==\",\"User\":{\"username\":\"yolanda.campos\",\"enabled\":\"1\",\"nombre\":\"Yolanda\",\"apellido_paterno\":\"Campos\",\"apellido_materno\":\"Calzada\"},\"r\":\"admin\\/usercreate\"}'),
(1586, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:07:02', '{\"r\":\"admin\\/userview\",\"id\":\"10\"}'),
(1587, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:07:06', '{\"r\":\"admin\\/useraddrol\",\"id\":\"10\"}'),
(1588, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:07:10', '{\"_csrf\":\"XrUIzIcOcjwjfj_0ewlnrlGN4ofrSVaGJqW1p3hXQSgU92e61kJHRWEITJU5PizfGsyg6657MeJvkMHwORgOBQ==\",\"Rol\":{\"authority\":\"ROLE_FACILITADOR\",\"nombre\":\"Facilitador\"},\"r\":\"admin\\/useraddrol\",\"id\":\"10\"}'),
(1589, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:07:10', '{\"r\":\"admin\\/userview\",\"id\":\"10\"}'),
(1590, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:07:12', '{\"r\":\"admin\\/usuarios\"}'),
(1591, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:07:13', '{\"r\":\"admin\\/usercreate\"}'),
(1592, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:07:44', '{\"_csrf\":\"sas4MgFM4ZITSgEdebyiaVh9T6V3SIX-hKkPTkvZGfb76VdEUADU61E8cnw7i-kYEzwNyTJ64prNnHsZCpZW2w==\",\"User\":{\"username\":\"abraham.ortiz\",\"enabled\":\"1\",\"nombre\":\"Abraham\",\"apellido_paterno\":\"Ortiz\",\"apellido_materno\":\"Lara\"},\"r\":\"admin\\/usercreate\"}'),
(1593, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:07:45', '{\"r\":\"admin\\/userview\",\"id\":\"11\"}'),
(1594, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:07:47', '{\"r\":\"admin\\/useraddrol\",\"id\":\"11\"}'),
(1595, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:07:52', '{\"_csrf\":\"QHw_1WVnM5yj0UxnL02XAIgA60vMQqsR_U9NiH6JOZsKPlCjNCsG5eGnPwZtetxxw0GpJ4lwzHW0ejnfP8Z2tg==\",\"Rol\":{\"authority\":\"ROLE_FACILITADOR\",\"nombre\":\"Facilitador\"},\"r\":\"admin\\/useraddrol\",\"id\":\"11\"}'),
(1596, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:07:52', '{\"r\":\"admin\\/userview\",\"id\":\"11\"}'),
(1597, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:07:56', '{\"r\":\"admin\\/usuarios\"}'),
(1598, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:07:59', '{\"r\":\"admin\\/userview\",\"id\":\"10\"}'),
(1599, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:08:03', '{\"r\":\"admin\\/usuarios\"}'),
(1600, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:08:05', '{\"r\":\"admin\\/usercreate\"}'),
(1601, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:08:35', '{\"_csrf\":\"t1_Jeg_FslehdtsOdKTmjsOe5jD3Z2o08yXsMxT5dxz9HaYMXomHLuMAqG82k63_iN-kXLJVDVC6EJhkVbY4MQ==\",\"User\":{\"username\":\"homero.ibarra\",\"enabled\":\"1\",\"nombre\":\"Homero\",\"apellido_paterno\":\"Ibarra\",\"apellido_materno\":\"M\\u00e9ndez\"},\"r\":\"admin\\/usercreate\"}'),
(1602, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:08:36', '{\"r\":\"admin\\/userview\",\"id\":\"12\"}'),
(1603, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:08:40', '{\"r\":\"admin\\/useraddrol\",\"id\":\"12\"}'),
(1604, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:08:43', '{\"_csrf\":\"_COTqqRmhmlUeMdEJNFWWLi6gvoxQNaqDfUg744MVFG2Yfzc9SqzEBYOtCVm5h0p8_vAlnRysc5EwFS4z0MbfA==\",\"Rol\":{\"authority\":\"ROLE_FACILITADOR\",\"nombre\":\"Facilitador\"},\"r\":\"admin\\/useraddrol\",\"id\":\"12\"}'),
(1605, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:08:44', '{\"r\":\"admin\\/userview\",\"id\":\"12\"}'),
(1606, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:08:45', '{\"r\":\"admin\\/usuarios\"}'),
(1607, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:08:46', '{\"r\":\"admin\\/usercreate\"}'),
(1608, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:09:21', '{\"_csrf\":\"h94LQI-FYpvaCNq_50bwI3c3fDgwWeniA43lkDXu2h_NnGQ23slX4ph-qd6lcbtSPHY-VHVrjoZKuJHHdKGVMg==\",\"User\":{\"username\":\"arturo.martinez\",\"enabled\":\"1\",\"nombre\":\"Arturo\",\"apellido_paterno\":\"Mart\\u00ednez\",\"apellido_materno\":\"Murga\"},\"r\":\"admin\\/usercreate\"}'),
(1609, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:09:22', '{\"r\":\"admin\\/userview\",\"id\":\"13\"}'),
(1610, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:09:24', '{\"r\":\"admin\\/useraddrol\",\"id\":\"13\"}'),
(1611, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:09:28', '{\"_csrf\":\"7bxZO4tJ6fXcnbQhvu46SnlERldeX9qtmVdEFkUY79Kn_jZN2gXcjJ7rx0D82XE7MgUEOxttvcnQYjBBBFeg_w==\",\"Rol\":{\"authority\":\"ROLE_FACILITADOR\",\"nombre\":\"Facilitador\"},\"r\":\"admin\\/useraddrol\",\"id\":\"13\"}'),
(1612, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:09:28', '{\"r\":\"admin\\/userview\",\"id\":\"13\"}'),
(1613, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:09:31', '{\"r\":\"admin\\/usuarios\"}'),
(1614, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:09:38', '{\"r\":\"admin\\/usercreate\"}'),
(1615, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:10:03', '{\"_csrf\":\"UyQNPVDW4elz-Z0ro3oDdHsV9YKOmgWEXUvHneh200wZZmJLAZrUkDGP7krhTUgFMFS37suoYuAUfrPKqTmcYQ==\",\"User\":{\"username\":\"silvia.jara\",\"enabled\":\"1\",\"nombre\":\"Silvia\",\"apellido_paterno\":\"Jara\",\"apellido_materno\":\"Barrios\"},\"r\":\"admin\\/usercreate\"}'),
(1616, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:10:04', '{\"r\":\"admin\\/userview\",\"id\":\"14\"}'),
(1617, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:10:17', '{\"r\":\"admin\\/useraddrol\",\"id\":\"14\"}'),
(1618, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:10:22', '{\"_csrf\":\"Yy_3AkhqqHJHb8aDVnKFp3peKt5CynuVQYuIQUSV9-8pbZh0GSadCwUZteIURc7WMR9osgf4HPEIvvwWBdq4wg==\",\"Rol\":{\"authority\":\"ROLE_FACILITADOR\",\"nombre\":\"Facilitador\"},\"r\":\"admin\\/useraddrol\",\"id\":\"14\"}'),
(1619, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:10:22', '{\"r\":\"admin\\/userview\",\"id\":\"14\"}'),
(1620, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:10:26', '{\"r\":\"admin\\/usuarios\"}'),
(1621, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:10:38', '{\"r\":\"admin\\/usercreate\"}'),
(1622, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:11:16', '{\"_csrf\":\"uFcl-hfK62liVJNcNnhFYeQreGd56DhCu7Wy07NxIcLyFUqMRobeECAi4D10Tw4Qr2o6CzzaXybygMaE8j5u7w==\",\"User\":{\"username\":\"evelia.gallegos\",\"enabled\":\"1\",\"nombre\":\"Evelia\",\"apellido_paterno\":\"Gallegos\",\"apellido_materno\":\"Galaviz\"},\"r\":\"admin\\/usercreate\"}'),
(1623, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:11:16', '{\"r\":\"admin\\/userview\",\"id\":\"15\"}'),
(1624, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:11:19', '{\"r\":\"admin\\/useraddrol\",\"id\":\"15\"}'),
(1625, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:11:23', '{\"_csrf\":\"FOzz-eLDs7uua1S2iIk4NFetGe9ALxnuu2ga7XfxEP1erpyPs4-GwuwdJ9fKvnNFHOxbgwUdforyXW66Nr5f0A==\",\"Rol\":{\"authority\":\"ROLE_FACILITADOR\",\"nombre\":\"Facilitador\"},\"r\":\"admin\\/useraddrol\",\"id\":\"15\"}'),
(1626, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:11:23', '{\"r\":\"admin\\/userview\",\"id\":\"15\"}'),
(1627, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:11:24', '{\"r\":\"admin\\/usuarios\"}'),
(1628, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:11:31', '{\"r\":\"admin\\/usercreate\"}'),
(1629, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:12:15', '{\"_csrf\":\"ML0Qx_9eBJ6ZbASI34kOybhYYz5dy5fxWLEHxT1P_y56_3-xrhIx59sad-mdvkW48xkhUhj58JURhHOSfACwAw==\",\"User\":{\"username\":\"denise.valadez\",\"enabled\":\"1\",\"nombre\":\"Denise del Carmen\",\"apellido_paterno\":\"Valadez\",\"apellido_materno\":\"Escobedo\"},\"r\":\"admin\\/usercreate\"}'),
(1630, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:12:16', '{\"r\":\"admin\\/userview\",\"id\":\"16\"}'),
(1631, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:12:18', '{\"r\":\"admin\\/useraddrol\",\"id\":\"16\"}'),
(1632, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:12:22', '{\"_csrf\":\"7C0gi2zNMc8HVsgw4R2jWBAqUXVigSsGvNJNsih3xQemb0_9PYEEtkUgu1GjKugpW2sTGSezTGL15znlaTiKKg==\",\"Rol\":{\"authority\":\"ROLE_FACILITADOR\",\"nombre\":\"Facilitador\"},\"r\":\"admin\\/useraddrol\",\"id\":\"16\"}'),
(1633, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:12:22', '{\"r\":\"admin\\/userview\",\"id\":\"16\"}'),
(1634, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:12:28', '{\"r\":\"admin\\/usuarios\"}'),
(1635, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:12:29', '{\"r\":\"admin\\/usercreate\"}'),
(1636, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:12:57', '{\"_csrf\":\"wpGmwp_jGZRjYbGsefsG0nBFgyiWrgWyI-tzd17SgmqI08m0zq8s7SEXws07zE2jOwTBRNOcYtZq3gcgH53NRw==\",\"User\":{\"username\":\"miguel.bocanegra\",\"enabled\":\"1\",\"nombre\":\"Miguel Felipe\",\"apellido_paterno\":\"Bocanegra\",\"apellido_materno\":\"Vargas\"},\"r\":\"admin\\/usercreate\"}'),
(1637, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:12:58', '{\"r\":\"admin\\/userview\",\"id\":\"17\"}'),
(1638, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:13:01', '{\"r\":\"admin\\/useraddrol\",\"id\":\"17\"}'),
(1639, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:13:05', '{\"_csrf\":\"FW49cKWX9SBUSWON-iidifXKPLfPwm8wQ7svd6HS74hfLFIG9NvAWRY_EOy4H9b4vot-24rwCFQKjlsg4J2gpQ==\",\"Rol\":{\"authority\":\"ROLE_FACILITADOR\",\"nombre\":\"Facilitador\"},\"r\":\"admin\\/useraddrol\",\"id\":\"17\"}'),
(1640, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:13:05', '{\"r\":\"admin\\/userview\",\"id\":\"17\"}'),
(1641, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:13:07', '{\"r\":\"admin\\/usuarios\"}'),
(1642, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:13:09', '{\"r\":\"admin\\/usercreate\"}'),
(1643, 'saul', 'basic', 'admin', 'usercreate', '2020-11-05 17:13:46', '{\"_csrf\":\"by7MFrifbllZIgpvBGFLDLcIJU76Gt5qsJplXHIgkAUlbKNg6dNbIBtUeQ5GVgB9_ElnIr8ouQ75rxELM2_fKA==\",\"User\":{\"username\":\"niria.deavila\",\"enabled\":\"1\",\"nombre\":\"Niria Dennise\",\"apellido_paterno\":\"de Avila\",\"apellido_materno\":\"de Santiago\"},\"r\":\"admin\\/usercreate\"}'),
(1644, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:13:47', '{\"r\":\"admin\\/userview\",\"id\":\"18\"}'),
(1645, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:13:49', '{\"r\":\"admin\\/useraddrol\",\"id\":\"18\"}'),
(1646, 'saul', 'basic', 'admin', 'useraddrol', '2020-11-05 17:13:54', '{\"_csrf\":\"2HKsQ6Smt_98P3IVIiyPUprG28HN-lliBxfH8wbJ0dSSMMM19eqChj5JAXRgG8Qj0YeZrYjIPgZOIrOkR4ae-Q==\",\"Rol\":{\"authority\":\"ROLE_ADMIN\",\"nombre\":\"Administrador\"},\"r\":\"admin\\/useraddrol\",\"id\":\"18\"}'),
(1647, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:13:54', '{\"r\":\"admin\\/userview\",\"id\":\"18\"}'),
(1648, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:13:56', '{\"r\":\"admin\\/usuarios\"}'),
(1649, 'saul', 'basic', 'admin', 'userupdate', '2020-11-05 17:14:08', '{\"r\":\"admin\\/userupdate\",\"id\":\"3\"}'),
(1650, 'saul', 'basic', 'admin', 'userupdate', '2020-11-05 17:14:27', '{\"_csrf\":\"D7hQp7FLrFuupjAGZ8mIe5NyNRDTSlFjtYOW8yT9_95F-j_R4AeZIuzQQ2cl_sMK2DN3fJZ4Ngf8tuKkZbKw8w==\",\"User\":{\"username\":\"saul\",\"enabled\":\"1\",\"nombre\":\"Sa\\u00fal Alonso\",\"apellido_paterno\":\"Ibarra\",\"apellido_materno\":\"Lu\\u00e9vano\"},\"r\":\"admin\\/userupdate\",\"id\":\"3\"}'),
(1651, 'saul', 'basic', 'admin', 'userview', '2020-11-05 17:14:28', '{\"r\":\"admin\\/userview\",\"id\":\"3\"}'),
(1652, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:14:32', '{\"r\":\"admin\\/usuarios\"}'),
(1653, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:14:44', '{\"r\":\"admin\\/asistentes\"}'),
(1654, 'saul', 'basic', 'admin', 'usuarios', '2020-11-05 17:14:47', '{\"r\":\"admin\\/usuarios\"}'),
(1655, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:14:50', '{\"r\":\"admin\\/asistentes\"}'),
(1656, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 17:27:34', '{\"r\":\"admin\\/datagraphs\"}'),
(1657, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:29:55', '{\"r\":\"admin\\/asistentes\"}'),
(1658, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:29:57', '{\"r\":\"admin\\/asistentecreate\"}'),
(1659, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:30:06', '{\"nombre\":\"Maria Auxilio\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"ekyhphg-0WUg-CyY6ZIE-Qe7ssSKa1SnkqYKhmPuWfQwDs7QSXLkHGKOX_mrpU-ITPrwqM9ZM8Pbk37RIqEW2Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1660, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:30:11', '{\"nombre\":\"Maria Auxilio\",\"apellido_paterno\":\"Gonz\\u00e1lez\",\"apellido_materno\":\"\",\"_csrf\":\"ekyhphg-0WUg-CyY6ZIE-Qe7ssSKa1SnkqYKhmPuWfQwDs7QSXLkHGKOX_mrpU-ITPrwqM9ZM8Pbk37RIqEW2Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1661, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:30:16', '{\"nombre\":\"Maria Auxilio\",\"apellido_paterno\":\"Gonz\\u00e1lez\",\"apellido_materno\":\"Medrano\",\"_csrf\":\"ekyhphg-0WUg-CyY6ZIE-Qe7ssSKa1SnkqYKhmPuWfQwDs7QSXLkHGKOX_mrpU-ITPrwqM9ZM8Pbk37RIqEW2Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1662, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:30:31', '{\"_csrf\":\"ekyhphg-0WUg-CyY6ZIE-Qe7ssSKa1SnkqYKhmPuWfQwDs7QSXLkHGKOX_mrpU-ITPrwqM9ZM8Pbk37RIqEW2Q==\",\"Asistente\":{\"nombre\":\"Maria Auxilio\",\"apellido_paterno\":\"Gonz\\u00e1lez\",\"apellido_materno\":\"Medrano\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1663, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:30:32', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113048\"}'),
(1664, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:30:35', '{\"r\":\"admin\\/asistentes\"}'),
(1665, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:30:36', '{\"r\":\"admin\\/asistentecreate\"}'),
(1666, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:30:48', '{\"nombre\":\"Maria Luisa\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"hFh1JhtrUR1HeukhU-mxGYrHa2dBFeHK8Yo3OkkKeQnOGhpQSidkZAUMmkAR3vpowYYpCwQnhq64v0NtCEU2JA==\",\"r\":\"admin\\/getasistentes\"}'),
(1667, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:30:52', '{\"nombre\":\"Maria Luisa\",\"apellido_paterno\":\"Fleman\",\"apellido_materno\":\"\",\"_csrf\":\"hFh1JhtrUR1HeukhU-mxGYrHa2dBFeHK8Yo3OkkKeQnOGhpQSidkZAUMmkAR3vpowYYpCwQnhq64v0NtCEU2JA==\",\"r\":\"admin\\/getasistentes\"}'),
(1668, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:31:01', '{\"nombre\":\"Maria Luisa\",\"apellido_paterno\":\"Fleman\",\"apellido_materno\":\"Sepulveda\",\"_csrf\":\"hFh1JhtrUR1HeukhU-mxGYrHa2dBFeHK8Yo3OkkKeQnOGhpQSidkZAUMmkAR3vpowYYpCwQnhq64v0NtCEU2JA==\",\"r\":\"admin\\/getasistentes\"}'),
(1669, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:31:12', '{\"_csrf\":\"hFh1JhtrUR1HeukhU-mxGYrHa2dBFeHK8Yo3OkkKeQnOGhpQSidkZAUMmkAR3vpowYYpCwQnhq64v0NtCEU2JA==\",\"Asistente\":{\"nombre\":\"Maria Luisa\",\"apellido_paterno\":\"Fleman\",\"apellido_materno\":\"Sepulveda\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1670, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:31:12', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113049\"}'),
(1671, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:31:16', '{\"r\":\"admin\\/asistentes\"}'),
(1672, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:31:17', '{\"r\":\"admin\\/asistentecreate\"}'),
(1673, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:31:27', '{\"nombre\":\"Epolita\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"FDvvqvfg5waIFxo-ac9yU0Udm7u0gfob7Jxm5_RlDjFeeYDcpqzSf8phaV8r-DkiDlzZ1_GznX-lqRKwtSpBHA==\",\"r\":\"admin\\/getasistentes\"}'),
(1674, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:31:29', '{\"nombre\":\"Epolita\",\"apellido_paterno\":\"Ortiz\",\"apellido_materno\":\"\",\"_csrf\":\"FDvvqvfg5waIFxo-ac9yU0Udm7u0gfob7Jxm5_RlDjFeeYDcpqzSf8phaV8r-DkiDlzZ1_GznX-lqRKwtSpBHA==\",\"r\":\"admin\\/getasistentes\"}'),
(1675, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:31:33', '{\"nombre\":\"Epolita\",\"apellido_paterno\":\"Ortiz\",\"apellido_materno\":\"Roque\",\"_csrf\":\"FDvvqvfg5waIFxo-ac9yU0Udm7u0gfob7Jxm5_RlDjFeeYDcpqzSf8phaV8r-DkiDlzZ1_GznX-lqRKwtSpBHA==\",\"r\":\"admin\\/getasistentes\"}'),
(1676, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:31:45', '{\"_csrf\":\"FDvvqvfg5waIFxo-ac9yU0Udm7u0gfob7Jxm5_RlDjFeeYDcpqzSf8phaV8r-DkiDlzZ1_GznX-lqRKwtSpBHA==\",\"Asistente\":{\"nombre\":\"Epolita\",\"apellido_paterno\":\"Ortiz\",\"apellido_materno\":\"Roque\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1677, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:31:45', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113050\"}'),
(1678, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:31:48', '{\"r\":\"admin\\/asistentes\"}'),
(1679, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:31:49', '{\"r\":\"admin\\/asistentecreate\"}'),
(1680, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:31:58', '{\"nombre\":\"Ofelia\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"SQvDK4AbLJWcMejibpxFdTCwyCACbqu3smKmPCT8zw0DSaxd0VcZ7N5Hm4Msqw4Ee_GKTEdczNP7V9JrZbOAIA==\",\"r\":\"admin\\/getasistentes\"}'),
(1681, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:32:08', '{\"nombre\":\"Ofelia\",\"apellido_paterno\":\"Hern\\u00e1ndez\",\"apellido_materno\":\"\",\"_csrf\":\"SQvDK4AbLJWcMejibpxFdTCwyCACbqu3smKmPCT8zw0DSaxd0VcZ7N5Hm4Msqw4Ee_GKTEdczNP7V9JrZbOAIA==\",\"r\":\"admin\\/getasistentes\"}'),
(1682, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:32:20', '{\"_csrf\":\"SQvDK4AbLJWcMejibpxFdTCwyCACbqu3smKmPCT8zw0DSaxd0VcZ7N5Hm4Msqw4Ee_GKTEdczNP7V9JrZbOAIA==\",\"Asistente\":{\"nombre\":\"Ofelia\",\"apellido_paterno\":\"Hern\\u00e1ndez\",\"apellido_materno\":\"\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1683, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:32:21', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113051\"}'),
(1684, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:32:23', '{\"r\":\"admin\\/asistentes\"}'),
(1685, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:32:31', '{\"r\":\"admin\\/asistentecreate\"}'),
(1686, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:32:40', '{\"nombre\":\"Francisca\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"Y8Mb0UzC3f9XfWJASPm77aot70N7gN0c1wQa333ccbEpgXSnHY7ohhULESEKzvCc4WytLz6yunieMW6IPJM-nA==\",\"r\":\"admin\\/getasistentes\"}'),
(1687, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:32:42', '{\"nombre\":\"Francisca\",\"apellido_paterno\":\"Carrillo\",\"apellido_materno\":\"\",\"_csrf\":\"Y8Mb0UzC3f9XfWJASPm77aot70N7gN0c1wQa333ccbEpgXSnHY7ohhULESEKzvCc4WytLz6yunieMW6IPJM-nA==\",\"r\":\"admin\\/getasistentes\"}'),
(1688, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:32:48', '{\"nombre\":\"Francisca\",\"apellido_paterno\":\"Carrillo\",\"apellido_materno\":\"del Muro\",\"_csrf\":\"Y8Mb0UzC3f9XfWJASPm77aot70N7gN0c1wQa333ccbEpgXSnHY7ohhULESEKzvCc4WytLz6yunieMW6IPJM-nA==\",\"r\":\"admin\\/getasistentes\"}'),
(1689, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:33:12', '{\"_csrf\":\"Y8Mb0UzC3f9XfWJASPm77aot70N7gN0c1wQa333ccbEpgXSnHY7ohhULESEKzvCc4WytLz6yunieMW6IPJM-nA==\",\"Asistente\":{\"nombre\":\"Francisca\",\"apellido_paterno\":\"Carrillo\",\"apellido_materno\":\"del Muro\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1690, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:33:12', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113052\"}'),
(1691, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:33:17', '{\"r\":\"admin\\/asistentes\"}'),
(1692, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:33:29', '{\"r\":\"admin\\/asistentecreate\"}'),
(1693, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:33:38', '{\"nombre\":\"Guadalupe\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"RcCyoLJrn8EsASHh5s736sZIVyVnxWBqfdIxPq1xmewPgt3W4yequG53UoCk-bybjQkVSSL3Bw4050Vp7D7WwQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1694, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:33:40', '{\"nombre\":\"Guadalupe\",\"apellido_paterno\":\"Jasso\",\"apellido_materno\":\"\",\"_csrf\":\"RcCyoLJrn8EsASHh5s736sZIVyVnxWBqfdIxPq1xmewPgt3W4yequG53UoCk-bybjQkVSSL3Bw4050Vp7D7WwQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1695, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:33:47', '{\"nombre\":\"Guadalupe\",\"apellido_paterno\":\"Jasso\",\"apellido_materno\":\"Carranza\",\"_csrf\":\"RcCyoLJrn8EsASHh5s736sZIVyVnxWBqfdIxPq1xmewPgt3W4yequG53UoCk-bybjQkVSSL3Bw4050Vp7D7WwQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1696, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:34:00', '{\"_csrf\":\"RcCyoLJrn8EsASHh5s736sZIVyVnxWBqfdIxPq1xmewPgt3W4yequG53UoCk-bybjQkVSSL3Bw4050Vp7D7WwQ==\",\"Asistente\":{\"nombre\":\"Guadalupe\",\"apellido_paterno\":\"Jasso\",\"apellido_materno\":\"Carranza\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1697, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:34:00', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113053\"}'),
(1698, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:34:02', '{\"r\":\"admin\\/asistentes\"}'),
(1699, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:34:04', '{\"r\":\"admin\\/asistentecreate\"}'),
(1700, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:34:18', '{\"nombre\":\"Enedina\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"EUCqg97vwN24Zptr9sYG1EdNZDqMriW6f4SIf-FueRRbAsX1j6P1pPoQ6Aq08U2lDAwmVsmcQt42sfwooCE2OQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1701, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:34:21', '{\"nombre\":\"Enedina\",\"apellido_paterno\":\"de Santiago\",\"apellido_materno\":\"\",\"_csrf\":\"EUCqg97vwN24Zptr9sYG1EdNZDqMriW6f4SIf-FueRRbAsX1j6P1pPoQ6Aq08U2lDAwmVsmcQt42sfwooCE2OQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1702, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:34:25', '{\"nombre\":\"Enedina\",\"apellido_paterno\":\"de Santiago\",\"apellido_materno\":\"Castro\",\"_csrf\":\"EUCqg97vwN24Zptr9sYG1EdNZDqMriW6f4SIf-FueRRbAsX1j6P1pPoQ6Aq08U2lDAwmVsmcQt42sfwooCE2OQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1703, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:34:37', '{\"_csrf\":\"EUCqg97vwN24Zptr9sYG1EdNZDqMriW6f4SIf-FueRRbAsX1j6P1pPoQ6Aq08U2lDAwmVsmcQt42sfwooCE2OQ==\",\"Asistente\":{\"nombre\":\"Enedina\",\"apellido_paterno\":\"de Santiago\",\"apellido_materno\":\"Castro\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1704, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:34:38', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113054\"}'),
(1705, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:34:43', '{\"r\":\"admin\\/asistentes\"}'),
(1706, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:35:00', '{\"r\":\"admin\\/asistentecreate\"}'),
(1707, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:35:01', '{\"r\":\"admin\\/asistentecreate\"}'),
(1708, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:35:17', '{\"nombre\":\"Silcenta Antonieta\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"D9L6wm3rcNRuNh0pHyWHZ8GskV5Ow_IOhbHjyVcUbGlFkJW0PKdFrSxAbkhdEswWiu3TMgvxlWrMhJeeFlsjRA==\",\"r\":\"admin\\/getasistentes\"}'),
(1709, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:35:22', '{\"nombre\":\"Silcenta Antonieta\",\"apellido_paterno\":\"Montoya\",\"apellido_materno\":\"\",\"_csrf\":\"D9L6wm3rcNRuNh0pHyWHZ8GskV5Ow_IOhbHjyVcUbGlFkJW0PKdFrSxAbkhdEswWiu3TMgvxlWrMhJeeFlsjRA==\",\"r\":\"admin\\/getasistentes\"}'),
(1710, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:35:32', '{\"_csrf\":\"D9L6wm3rcNRuNh0pHyWHZ8GskV5Ow_IOhbHjyVcUbGlFkJW0PKdFrSxAbkhdEswWiu3TMgvxlWrMhJeeFlsjRA==\",\"Asistente\":{\"nombre\":\"Silcenta Antonieta\",\"apellido_paterno\":\"Montoya\",\"apellido_materno\":\"\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1711, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:35:32', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113055\"}'),
(1712, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:35:34', '{\"r\":\"admin\\/asistentes\"}'),
(1713, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:35:41', '{\"r\":\"admin\\/asistentecreate\"}'),
(1714, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:35:44', '{\"nombre\":\"Maria\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"KbNGOUZ7vKcl9CGoN207223A-CXXvHOwo9uas5d8gBRj8SlPFzeJ3meCUsl1WnCqJoG6SZKOFNTq7u7k1jPPOQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1715, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:35:47', '{\"nombre\":\"Maria\",\"apellido_paterno\":\"Salome\",\"apellido_materno\":\"\",\"_csrf\":\"KbNGOUZ7vKcl9CGoN207223A-CXXvHOwo9uas5d8gBRj8SlPFzeJ3meCUsl1WnCqJoG6SZKOFNTq7u7k1jPPOQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1716, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:35:50', '{\"nombre\":\"Maria\",\"apellido_paterno\":\"Salome\",\"apellido_materno\":\"Ort\\u00edz\",\"_csrf\":\"KbNGOUZ7vKcl9CGoN207223A-CXXvHOwo9uas5d8gBRj8SlPFzeJ3meCUsl1WnCqJoG6SZKOFNTq7u7k1jPPOQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1717, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:36:01', '{\"_csrf\":\"KbNGOUZ7vKcl9CGoN207223A-CXXvHOwo9uas5d8gBRj8SlPFzeJ3meCUsl1WnCqJoG6SZKOFNTq7u7k1jPPOQ==\",\"Asistente\":{\"nombre\":\"Maria\",\"apellido_paterno\":\"Salome\",\"apellido_materno\":\"Ort\\u00edz\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1718, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:36:01', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113056\"}'),
(1719, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:36:03', '{\"r\":\"admin\\/asistentes\"}'),
(1720, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:36:05', '{\"r\":\"admin\\/asistentecreate\"}'),
(1721, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:36:17', '{\"nombre\":\"Maria Auxilio\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"Z8AG_PDFWuPwTywoLx_vBFDfiKQmxUlLPXT6dBXd_DAtgmmKoYlvmrI5X0ltKKR1G57KyGP3Li90QY4jVJKzHQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1722, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:36:38', '{\"nombre\":\"Maria Auxilio\",\"apellido_paterno\":\"Villegas\",\"apellido_materno\":\"\",\"_csrf\":\"Z8AG_PDFWuPwTywoLx_vBFDfiKQmxUlLPXT6dBXd_DAtgmmKoYlvmrI5X0ltKKR1G57KyGP3Li90QY4jVJKzHQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1723, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:36:51', '{\"_csrf\":\"Z8AG_PDFWuPwTywoLx_vBFDfiKQmxUlLPXT6dBXd_DAtgmmKoYlvmrI5X0ltKKR1G57KyGP3Li90QY4jVJKzHQ==\",\"Asistente\":{\"nombre\":\"Maria Auxilio\",\"apellido_paterno\":\"Villegas\",\"apellido_materno\":\"\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1724, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:36:51', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113057\"}'),
(1725, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:36:53', '{\"r\":\"admin\\/asistentes\"}'),
(1726, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:36:54', '{\"r\":\"admin\\/asistentecreate\"}'),
(1727, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:37:06', '{\"nombre\":\"Bernardina\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"PGW2AYrTiP1lJbjc55NXsaTxDNRhXkNUC6sopxq8hGN2J9l325-9hCdTy72lpBzA77BOuCRsJDBCnlzwW_PLTg==\",\"r\":\"admin\\/getasistentes\"}'),
(1728, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:37:09', '{\"nombre\":\"Bernardina\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"\",\"_csrf\":\"PGW2AYrTiP1lJbjc55NXsaTxDNRhXkNUC6sopxq8hGN2J9l325-9hCdTy72lpBzA77BOuCRsJDBCnlzwW_PLTg==\",\"r\":\"admin\\/getasistentes\"}'),
(1729, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:37:13', '{\"nombre\":\"Bernardina\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"Santana\",\"_csrf\":\"PGW2AYrTiP1lJbjc55NXsaTxDNRhXkNUC6sopxq8hGN2J9l325-9hCdTy72lpBzA77BOuCRsJDBCnlzwW_PLTg==\",\"r\":\"admin\\/getasistentes\"}'),
(1730, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:37:24', '{\"_csrf\":\"PGW2AYrTiP1lJbjc55NXsaTxDNRhXkNUC6sopxq8hGN2J9l325-9hCdTy72lpBzA77BOuCRsJDBCnlzwW_PLTg==\",\"Asistente\":{\"nombre\":\"Bernardina\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"Santana\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1731, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:37:25', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113058\"}'),
(1732, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:37:26', '{\"r\":\"admin\\/asistentes\"}'),
(1733, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:37:40', '{\"r\":\"admin\\/asistentecreate\"}'),
(1734, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:37:44', '{\"nombre\":\"Maria\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"Qacm3TBApvGQqW_HPpztCJekYJjiLYbrwEr4163b8esL5UmrYQyTiNLfHKZ8q6Z53OUi9Kcf4Y-Jf4yA7JS-xg==\",\"r\":\"admin\\/getasistentes\"}'),
(1735, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:37:49', '{\"nombre\":\"Maria Isabel\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"Qacm3TBApvGQqW_HPpztCJekYJjiLYbrwEr4163b8esL5UmrYQyTiNLfHKZ8q6Z53OUi9Kcf4Y-Jf4yA7JS-xg==\",\"r\":\"admin\\/getasistentes\"}'),
(1736, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:37:54', '{\"nombre\":\"Maria Isabel\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"\",\"_csrf\":\"Qacm3TBApvGQqW_HPpztCJekYJjiLYbrwEr4163b8esL5UmrYQyTiNLfHKZ8q6Z53OUi9Kcf4Y-Jf4yA7JS-xg==\",\"r\":\"admin\\/getasistentes\"}'),
(1737, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:38:03', '{\"_csrf\":\"Qacm3TBApvGQqW_HPpztCJekYJjiLYbrwEr4163b8esL5UmrYQyTiNLfHKZ8q6Z53OUi9Kcf4Y-Jf4yA7JS-xg==\",\"Asistente\":{\"nombre\":\"Maria Isabel\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1738, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:38:03', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113059\"}'),
(1739, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:38:05', '{\"r\":\"admin\\/asistentes\"}'),
(1740, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:38:07', '{\"r\":\"admin\\/asistentecreate\"}'),
(1741, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:38:19', '{\"nombre\":\"Maria Trinidad\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"X7DncvkyMAg0jZ4ctYB9EKrH9e90j6yJdH8S2Nm0f74V8ogEqH4FcXb77X33tzZh4Ya3gzG9y-09SmaPmPswkw==\",\"r\":\"admin\\/getasistentes\"}'),
(1742, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:38:23', '{\"nombre\":\"Maria Trinidad\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"\",\"_csrf\":\"X7DncvkyMAg0jZ4ctYB9EKrH9e90j6yJdH8S2Nm0f74V8ogEqH4FcXb77X33tzZh4Ya3gzG9y-09SmaPmPswkw==\",\"r\":\"admin\\/getasistentes\"}'),
(1743, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:38:30', '{\"nombre\":\"Maria Trinidad\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"Carrillo\",\"_csrf\":\"X7DncvkyMAg0jZ4ctYB9EKrH9e90j6yJdH8S2Nm0f74V8ogEqH4FcXb77X33tzZh4Ya3gzG9y-09SmaPmPswkw==\",\"r\":\"admin\\/getasistentes\"}'),
(1744, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:38:39', '{\"_csrf\":\"X7DncvkyMAg0jZ4ctYB9EKrH9e90j6yJdH8S2Nm0f74V8ogEqH4FcXb77X33tzZh4Ya3gzG9y-09SmaPmPswkw==\",\"Asistente\":{\"nombre\":\"Maria Trinidad\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"Carrillo\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1745, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:38:39', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113060\"}'),
(1746, 'saul', 'basic', 'admin', 'asistenteupdate', '2020-11-05 17:38:41', '{\"r\":\"admin\\/asistenteupdate\",\"id\":\"113060\"}'),
(1747, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:38:42', '{\"r\":\"admin\\/asistentes\"}'),
(1748, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:38:43', '{\"r\":\"admin\\/asistentecreate\"}'),
(1749, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:38:55', '{\"nombre\":\"Clemencia\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"JLmyyylosTOgbMTrW-2hp3zNZfyxshkIsXHT2KHaJ3Nu-929eCSESuIat4oZ2urWN4wnkPSAfmz4RKeP4JVoXg==\",\"r\":\"admin\\/getasistentes\"}'),
(1750, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:39:00', '{\"nombre\":\"Clemencia Guadalupe\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"JLmyyylosTOgbMTrW-2hp3zNZfyxshkIsXHT2KHaJ3Nu-929eCSESuIat4oZ2urWN4wnkPSAfmz4RKeP4JVoXg==\",\"r\":\"admin\\/getasistentes\"}'),
(1751, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:39:03', '{\"nombre\":\"Clemencia Guadalupe\",\"apellido_paterno\":\"Morales\",\"apellido_materno\":\"\",\"_csrf\":\"JLmyyylosTOgbMTrW-2hp3zNZfyxshkIsXHT2KHaJ3Nu-929eCSESuIat4oZ2urWN4wnkPSAfmz4RKeP4JVoXg==\",\"r\":\"admin\\/getasistentes\"}'),
(1752, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:39:12', '{\"nombre\":\"Clemencia Guadalupe\",\"apellido_paterno\":\"Morales\",\"apellido_materno\":\"Valadez\",\"_csrf\":\"JLmyyylosTOgbMTrW-2hp3zNZfyxshkIsXHT2KHaJ3Nu-929eCSESuIat4oZ2urWN4wnkPSAfmz4RKeP4JVoXg==\",\"r\":\"admin\\/getasistentes\"}');
INSERT INTO `log` (`id`, `user`, `module`, `controller`, `method`, `time`, `data`) VALUES
(1753, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:39:21', '{\"_csrf\":\"JLmyyylosTOgbMTrW-2hp3zNZfyxshkIsXHT2KHaJ3Nu-929eCSESuIat4oZ2urWN4wnkPSAfmz4RKeP4JVoXg==\",\"Asistente\":{\"nombre\":\"Clemencia Guadalupe\",\"apellido_paterno\":\"Morales\",\"apellido_materno\":\"Valadez\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1754, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:39:22', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113061\"}'),
(1755, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:39:23', '{\"r\":\"admin\\/asistentes\"}'),
(1756, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:39:25', '{\"r\":\"admin\\/asistentecreate\"}'),
(1757, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:39:34', '{\"nombre\":\"Porfiria\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"l1I_0e6-DHmenv9IIyjI3Ri6jxxXhFDFFeaVYjG40czdEFCnv_I5ANzojClhH4OsU_vNcBK2N6Fc0-E1cPee4Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1758, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:39:36', '{\"nombre\":\"Porfiria\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"\",\"_csrf\":\"l1I_0e6-DHmenv9IIyjI3Ri6jxxXhFDFFeaVYjG40czdEFCnv_I5ANzojClhH4OsU_vNcBK2N6Fc0-E1cPee4Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1759, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:39:40', '{\"nombre\":\"Porfiria\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"Santana\",\"_csrf\":\"l1I_0e6-DHmenv9IIyjI3Ri6jxxXhFDFFeaVYjG40czdEFCnv_I5ANzojClhH4OsU_vNcBK2N6Fc0-E1cPee4Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1760, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:39:50', '{\"_csrf\":\"l1I_0e6-DHmenv9IIyjI3Ri6jxxXhFDFFeaVYjG40czdEFCnv_I5ANzojClhH4OsU_vNcBK2N6Fc0-E1cPee4Q==\",\"Asistente\":{\"nombre\":\"Porfiria\",\"apellido_paterno\":\"Caldera\",\"apellido_materno\":\"Santana\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1761, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:39:50', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113062\"}'),
(1762, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:39:58', '{\"r\":\"admin\\/asistentes\"}'),
(1763, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:40:00', '{\"r\":\"admin\\/asistentecreate\"}'),
(1764, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:40:02', '{\"nombre\":\"Juana\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"xRJebRj4xhIaWAXVf_1x4WVZK5L2SbFWv_uCsEHWPf2PUDEbSbTza1gudrQ9yjqQLhhp_rN71jL2zvbnAJly0A==\",\"r\":\"admin\\/getasistentes\"}'),
(1765, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:40:08', '{\"nombre\":\"Juana Maria\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"xRJebRj4xhIaWAXVf_1x4WVZK5L2SbFWv_uCsEHWPf2PUDEbSbTza1gudrQ9yjqQLhhp_rN71jL2zvbnAJly0A==\",\"r\":\"admin\\/getasistentes\"}'),
(1766, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:40:11', '{\"nombre\":\"Juana Maria\",\"apellido_paterno\":\"Davila\",\"apellido_materno\":\"\",\"_csrf\":\"xRJebRj4xhIaWAXVf_1x4WVZK5L2SbFWv_uCsEHWPf2PUDEbSbTza1gudrQ9yjqQLhhp_rN71jL2zvbnAJly0A==\",\"r\":\"admin\\/getasistentes\"}'),
(1767, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:40:24', '{\"_csrf\":\"xRJebRj4xhIaWAXVf_1x4WVZK5L2SbFWv_uCsEHWPf2PUDEbSbTza1gudrQ9yjqQLhhp_rN71jL2zvbnAJly0A==\",\"Asistente\":{\"nombre\":\"Juana Maria\",\"apellido_paterno\":\"Davila\",\"apellido_materno\":\"\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1768, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:40:25', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113063\"}'),
(1769, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:40:28', '{\"r\":\"admin\\/asistentes\"}'),
(1770, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:40:37', '{\"r\":\"admin\\/asistentecreate\"}'),
(1771, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:40:40', '{\"nombre\":\"Cirila\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"pyNeiiLLKYpFvAKcDifDuycqhBx_eLd4kLN34f3a2mHtYTH8c4cc8wfKcf1MEIjKbGvGcDpK0BzZhgO2vJWVTA==\",\"r\":\"admin\\/getasistentes\"}'),
(1772, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:40:42', '{\"nombre\":\"Cirila\",\"apellido_paterno\":\"Santana\",\"apellido_materno\":\"\",\"_csrf\":\"pyNeiiLLKYpFvAKcDifDuycqhBx_eLd4kLN34f3a2mHtYTH8c4cc8wfKcf1MEIjKbGvGcDpK0BzZhgO2vJWVTA==\",\"r\":\"admin\\/getasistentes\"}'),
(1773, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:40:47', '{\"nombre\":\"Cirila\",\"apellido_paterno\":\"Santana\",\"apellido_materno\":\"Mart\\u00ednez\",\"_csrf\":\"pyNeiiLLKYpFvAKcDifDuycqhBx_eLd4kLN34f3a2mHtYTH8c4cc8wfKcf1MEIjKbGvGcDpK0BzZhgO2vJWVTA==\",\"r\":\"admin\\/getasistentes\"}'),
(1774, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:40:55', '{\"_csrf\":\"pyNeiiLLKYpFvAKcDifDuycqhBx_eLd4kLN34f3a2mHtYTH8c4cc8wfKcf1MEIjKbGvGcDpK0BzZhgO2vJWVTA==\",\"Asistente\":{\"nombre\":\"Cirila\",\"apellido_paterno\":\"Santana\",\"apellido_materno\":\"Mart\\u00ednez\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1775, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:40:55', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113064\"}'),
(1776, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:40:57', '{\"r\":\"admin\\/asistentes\"}'),
(1777, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:41:03', '{\"r\":\"admin\\/asistentecreate\"}'),
(1778, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:41:08', '{\"nombre\":\"Concepci\\u00f3n\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"0QP0m0qT-wQ9gIEBCv3hzfnmaRsMzasoE-MRV24SppGbQZvtG9_OfX_28mBIyqq8sqcrd0n_zExa1mUAL13pvA==\",\"r\":\"admin\\/getasistentes\"}'),
(1779, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:41:12', '{\"nombre\":\"Concepci\\u00f3n\",\"apellido_paterno\":\"Ortiz\",\"apellido_materno\":\"\",\"_csrf\":\"0QP0m0qT-wQ9gIEBCv3hzfnmaRsMzasoE-MRV24SppGbQZvtG9_OfX_28mBIyqq8sqcrd0n_zExa1mUAL13pvA==\",\"r\":\"admin\\/getasistentes\"}'),
(1780, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:41:17', '{\"nombre\":\"Concepci\\u00f3n\",\"apellido_paterno\":\"Ortiz\",\"apellido_materno\":\"Escalante\",\"_csrf\":\"0QP0m0qT-wQ9gIEBCv3hzfnmaRsMzasoE-MRV24SppGbQZvtG9_OfX_28mBIyqq8sqcrd0n_zExa1mUAL13pvA==\",\"r\":\"admin\\/getasistentes\"}'),
(1781, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:41:27', '{\"_csrf\":\"0QP0m0qT-wQ9gIEBCv3hzfnmaRsMzasoE-MRV24SppGbQZvtG9_OfX_28mBIyqq8sqcrd0n_zExa1mUAL13pvA==\",\"Asistente\":{\"nombre\":\"Concepci\\u00f3n\",\"apellido_paterno\":\"Ortiz\",\"apellido_materno\":\"Escalante\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1782, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:41:27', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113065\"}'),
(1783, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:41:30', '{\"r\":\"admin\\/asistentes\"}'),
(1784, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:41:31', '{\"r\":\"admin\\/asistentecreate\"}'),
(1785, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:41:42', '{\"nombre\":\"Maria\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"J0iHzMfm8sXc2SgVfmVebeMSMVegKEJ8cjiS3VH8jMttCui6lqrHvJ6vW3Q8UhUcqFNzO-UaJRg7DeaKELPD5g==\",\"r\":\"admin\\/getasistentes\"}'),
(1786, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:41:48', '{\"nombre\":\"Maria Berenice\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"J0iHzMfm8sXc2SgVfmVebeMSMVegKEJ8cjiS3VH8jMttCui6lqrHvJ6vW3Q8UhUcqFNzO-UaJRg7DeaKELPD5g==\",\"r\":\"admin\\/getasistentes\"}'),
(1787, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:41:50', '{\"nombre\":\"Maria Berenice\",\"apellido_paterno\":\"Castro\",\"apellido_materno\":\"\",\"_csrf\":\"J0iHzMfm8sXc2SgVfmVebeMSMVegKEJ8cjiS3VH8jMttCui6lqrHvJ6vW3Q8UhUcqFNzO-UaJRg7DeaKELPD5g==\",\"r\":\"admin\\/getasistentes\"}'),
(1788, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:41:53', '{\"nombre\":\"Maria Berenice\",\"apellido_paterno\":\"Castro\",\"apellido_materno\":\"Santana\",\"_csrf\":\"J0iHzMfm8sXc2SgVfmVebeMSMVegKEJ8cjiS3VH8jMttCui6lqrHvJ6vW3Q8UhUcqFNzO-UaJRg7DeaKELPD5g==\",\"r\":\"admin\\/getasistentes\"}'),
(1789, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:42:02', '{\"_csrf\":\"J0iHzMfm8sXc2SgVfmVebeMSMVegKEJ8cjiS3VH8jMttCui6lqrHvJ6vW3Q8UhUcqFNzO-UaJRg7DeaKELPD5g==\",\"Asistente\":{\"nombre\":\"Maria Berenice\",\"apellido_paterno\":\"Castro\",\"apellido_materno\":\"Santana\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1790, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:42:03', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113066\"}'),
(1791, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:42:05', '{\"r\":\"admin\\/asistentes\"}'),
(1792, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:42:12', '{\"r\":\"admin\\/asistentecreate\"}'),
(1793, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:42:12', '{\"r\":\"admin\\/asistentecreate\"}'),
(1794, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:42:18', '{\"nombre\":\"Ma. Concepci\\u00f3n\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"K8g7QNg6IalN08RMxY6zysTGjVCM6kIZvhLzS_TCLg5hilQ2iXYU0A-lty2Hufi7j4fPPMnYJX33J4cctY1hIw==\",\"r\":\"admin\\/getasistentes\"}'),
(1795, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:42:21', '{\"nombre\":\"Ma. Concepci\\u00f3n\",\"apellido_paterno\":\"Garc\\u00eda\",\"apellido_materno\":\"\",\"_csrf\":\"K8g7QNg6IalN08RMxY6zysTGjVCM6kIZvhLzS_TCLg5hilQ2iXYU0A-lty2Hufi7j4fPPMnYJX33J4cctY1hIw==\",\"r\":\"admin\\/getasistentes\"}'),
(1796, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:42:31', '{\"nombre\":\"Ma. Concepci\\u00f3n\",\"apellido_paterno\":\"Garc\\u00eda\",\"apellido_materno\":\"Hern\\u00e1ndez\",\"_csrf\":\"K8g7QNg6IalN08RMxY6zysTGjVCM6kIZvhLzS_TCLg5hilQ2iXYU0A-lty2Hufi7j4fPPMnYJX33J4cctY1hIw==\",\"r\":\"admin\\/getasistentes\"}'),
(1797, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:42:40', '{\"_csrf\":\"K8g7QNg6IalN08RMxY6zysTGjVCM6kIZvhLzS_TCLg5hilQ2iXYU0A-lty2Hufi7j4fPPMnYJX33J4cctY1hIw==\",\"Asistente\":{\"nombre\":\"Ma. Concepci\\u00f3n\",\"apellido_paterno\":\"Garc\\u00eda\",\"apellido_materno\":\"Hern\\u00e1ndez\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1798, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:42:41', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113067\"}'),
(1799, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:42:48', '{\"r\":\"admin\\/asistentes\"}'),
(1800, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:42:49', '{\"r\":\"admin\\/asistentecreate\"}'),
(1801, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:42:53', '{\"nombre\":\"Teresa\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"nduIhfesZFHXBWfYVRuBZkhy0J4W0M6dT_muGERzatbXmefzpuBRKJVzFLkXLMoXAzOS8lPiqfkGzNpPBTwl-w==\",\"r\":\"admin\\/getasistentes\"}'),
(1802, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:42:57', '{\"nombre\":\"Teresa\",\"apellido_paterno\":\"Falc\\u00f3n\",\"apellido_materno\":\"\",\"_csrf\":\"nduIhfesZFHXBWfYVRuBZkhy0J4W0M6dT_muGERzatbXmefzpuBRKJVzFLkXLMoXAzOS8lPiqfkGzNpPBTwl-w==\",\"r\":\"admin\\/getasistentes\"}'),
(1803, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:43:06', '{\"_csrf\":\"nduIhfesZFHXBWfYVRuBZkhy0J4W0M6dT_muGERzatbXmefzpuBRKJVzFLkXLMoXAzOS8lPiqfkGzNpPBTwl-w==\",\"Asistente\":{\"nombre\":\"Teresa\",\"apellido_paterno\":\"Falc\\u00f3n\",\"apellido_materno\":\"\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1804, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:43:07', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113068\"}'),
(1805, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:43:13', '{\"r\":\"admin\\/asistentes\"}'),
(1806, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:43:14', '{\"r\":\"admin\\/asistentecreate\"}'),
(1807, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:43:19', '{\"nombre\":\"Ma. Antonieta\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"2Cn2TEE9oZl-VStF1HCiw4AjyXZjY4D3jVJ1HuOU82iSa5k6EHGU4DwjWCSWR-myy2KLGiZR55PEZwFJotu8RQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1808, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:43:21', '{\"nombre\":\"Ma. Antonieta\",\"apellido_paterno\":\"Montoya\",\"apellido_materno\":\"\",\"_csrf\":\"2Cn2TEE9oZl-VStF1HCiw4AjyXZjY4D3jVJ1HuOU82iSa5k6EHGU4DwjWCSWR-myy2KLGiZR55PEZwFJotu8RQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1809, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:43:28', '{\"nombre\":\"Ma. Antonieta\",\"apellido_paterno\":\"Montoya\",\"apellido_materno\":\"M.\",\"_csrf\":\"2Cn2TEE9oZl-VStF1HCiw4AjyXZjY4D3jVJ1HuOU82iSa5k6EHGU4DwjWCSWR-myy2KLGiZR55PEZwFJotu8RQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1810, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:43:37', '{\"_csrf\":\"2Cn2TEE9oZl-VStF1HCiw4AjyXZjY4D3jVJ1HuOU82iSa5k6EHGU4DwjWCSWR-myy2KLGiZR55PEZwFJotu8RQ==\",\"Asistente\":{\"nombre\":\"Ma. Antonieta\",\"apellido_paterno\":\"Montoya\",\"apellido_materno\":\"M.\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1811, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:43:37', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113069\"}'),
(1812, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:43:46', '{\"r\":\"admin\\/asistentes\"}'),
(1813, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:43:46', '{\"r\":\"admin\\/asistentes\"}'),
(1814, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:43:47', '{\"r\":\"admin\\/asistentecreate\"}'),
(1815, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:43:52', '{\"nombre\":\"Victoria\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"MN-XibAiXuClzCymv_29p7qSHJURGRYl0VNdRZbomfV6nfj_4W5rmee6X8f9yvbW8dNe-VQrcUGYZikS16fW2A==\",\"r\":\"admin\\/getasistentes\"}'),
(1816, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:43:55', '{\"nombre\":\"Victoria\",\"apellido_paterno\":\"Zaragoza\",\"apellido_materno\":\"\",\"_csrf\":\"MN-XibAiXuClzCymv_29p7qSHJURGRYl0VNdRZbomfV6nfj_4W5rmee6X8f9yvbW8dNe-VQrcUGYZikS16fW2A==\",\"r\":\"admin\\/getasistentes\"}'),
(1817, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:43:58', '{\"nombre\":\"Victoria\",\"apellido_paterno\":\"Zaragoza\",\"apellido_materno\":\"Ramos\",\"_csrf\":\"MN-XibAiXuClzCymv_29p7qSHJURGRYl0VNdRZbomfV6nfj_4W5rmee6X8f9yvbW8dNe-VQrcUGYZikS16fW2A==\",\"r\":\"admin\\/getasistentes\"}'),
(1818, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:44:06', '{\"_csrf\":\"MN-XibAiXuClzCymv_29p7qSHJURGRYl0VNdRZbomfV6nfj_4W5rmee6X8f9yvbW8dNe-VQrcUGYZikS16fW2A==\",\"Asistente\":{\"nombre\":\"Victoria\",\"apellido_paterno\":\"Zaragoza\",\"apellido_materno\":\"Ramos\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1819, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:44:06', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113070\"}'),
(1820, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:44:08', '{\"r\":\"admin\\/asistentes\"}'),
(1821, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 17:44:23', '{\"r\":\"admin\\/datagraphs\"}'),
(1822, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:44:36', '{\"r\":\"admin\\/asistentecreate\"}'),
(1823, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:44:46', '{\"nombre\":\"Martha A.\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"rEeR70sil4bAl1_ZRHBI280-No4BvAWFXmvJ2RUwEq7mBf6ZGm6i_4LhLLgGRwOqhn904kSOYuEXXr2OVH9dgw==\",\"r\":\"admin\\/getasistentes\"}'),
(1824, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:44:52', '{\"nombre\":\"Martha A.\",\"apellido_paterno\":\"Zaragoza\",\"apellido_materno\":\"\",\"_csrf\":\"rEeR70sil4bAl1_ZRHBI280-No4BvAWFXmvJ2RUwEq7mBf6ZGm6i_4LhLLgGRwOqhn904kSOYuEXXr2OVH9dgw==\",\"r\":\"admin\\/getasistentes\"}'),
(1825, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:45:00', '{\"_csrf\":\"rEeR70sil4bAl1_ZRHBI280-No4BvAWFXmvJ2RUwEq7mBf6ZGm6i_4LhLLgGRwOqhn904kSOYuEXXr2OVH9dgw==\",\"Asistente\":{\"nombre\":\"Martha A.\",\"apellido_paterno\":\"Zaragoza\",\"apellido_materno\":\"\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1826, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:45:00', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113071\"}'),
(1827, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:45:09', '{\"r\":\"admin\\/asistentes\"}'),
(1828, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:45:10', '{\"r\":\"admin\\/asistentecreate\"}'),
(1829, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:45:13', '{\"nombre\":\"Catalina\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"rp8R_8YT3BjYX0ju3ZF9KAIDn_Eeo_DwVGMbRwRXWtzk3X6Jl1_pYZopO4-fpjZZSULdnVuRl5QdVm8QRRgV8Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1830, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:45:16', '{\"nombre\":\"Catalina\",\"apellido_paterno\":\"Garc\\u00eda\",\"apellido_materno\":\"\",\"_csrf\":\"rp8R_8YT3BjYX0ju3ZF9KAIDn_Eeo_DwVGMbRwRXWtzk3X6Jl1_pYZopO4-fpjZZSULdnVuRl5QdVm8QRRgV8Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1831, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:45:24', '{\"nombre\":\"Catalina\",\"apellido_paterno\":\"Garc\\u00eda\",\"apellido_materno\":\"de Rodr\\u00edguez\",\"_csrf\":\"rp8R_8YT3BjYX0ju3ZF9KAIDn_Eeo_DwVGMbRwRXWtzk3X6Jl1_pYZopO4-fpjZZSULdnVuRl5QdVm8QRRgV8Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1832, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:45:32', '{\"_csrf\":\"rp8R_8YT3BjYX0ju3ZF9KAIDn_Eeo_DwVGMbRwRXWtzk3X6Jl1_pYZopO4-fpjZZSULdnVuRl5QdVm8QRRgV8Q==\",\"Asistente\":{\"nombre\":\"Catalina\",\"apellido_paterno\":\"Garc\\u00eda\",\"apellido_materno\":\"de Rodr\\u00edguez\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1833, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:45:32', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113072\"}'),
(1834, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:45:34', '{\"r\":\"admin\\/asistentes\"}'),
(1835, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:45:42', '{\"r\":\"admin\\/asistentecreate\"}'),
(1836, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:45:42', '{\"r\":\"admin\\/asistentecreate\"}'),
(1837, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:45:46', '{\"nombre\":\"Catalina\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"pPPV8qfEVAXG2XRACczg9_d0LjTapo2y3Ks6At-JOaLusbqE9ohhfISvByFL-6uGvDVsWJ-U6taVnk5VnsZ2jw==\",\"r\":\"admin\\/getasistentes\"}'),
(1838, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:45:48', '{\"nombre\":\"Catalina\",\"apellido_paterno\":\"Rios\",\"apellido_materno\":\"\",\"_csrf\":\"pPPV8qfEVAXG2XRACczg9_d0LjTapo2y3Ks6At-JOaLusbqE9ohhfISvByFL-6uGvDVsWJ-U6taVnk5VnsZ2jw==\",\"r\":\"admin\\/getasistentes\"}'),
(1839, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:45:51', '{\"nombre\":\"Catalina\",\"apellido_paterno\":\"Rios\",\"apellido_materno\":\"Garc\\u00eda\",\"_csrf\":\"pPPV8qfEVAXG2XRACczg9_d0LjTapo2y3Ks6At-JOaLusbqE9ohhfISvByFL-6uGvDVsWJ-U6taVnk5VnsZ2jw==\",\"r\":\"admin\\/getasistentes\"}'),
(1840, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:46:02', '{\"_csrf\":\"pPPV8qfEVAXG2XRACczg9_d0LjTapo2y3Ks6At-JOaLusbqE9ohhfISvByFL-6uGvDVsWJ-U6taVnk5VnsZ2jw==\",\"Asistente\":{\"nombre\":\"Catalina\",\"apellido_paterno\":\"Rios\",\"apellido_materno\":\"Garc\\u00eda\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1841, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:46:02', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113073\"}'),
(1842, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:46:08', '{\"r\":\"admin\\/asistentes\"}'),
(1843, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:46:16', '{\"r\":\"admin\\/asistentecreate\"}'),
(1844, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:46:21', '{\"nombre\":\"Irma Guadalupe\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"FKfmzBy5rFeQ3_16tbnUqWyKERChUbS0Of4AH_eImDNe5Ym6TfWZLtKpjhv3jp_YJ8tTfORj09Bwy3RItsfXHg==\",\"r\":\"admin\\/getasistentes\"}'),
(1845, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:46:23', '{\"nombre\":\"Irma Guadalupe\",\"apellido_paterno\":\"Moya\",\"apellido_materno\":\"\",\"_csrf\":\"FKfmzBy5rFeQ3_16tbnUqWyKERChUbS0Of4AH_eImDNe5Ym6TfWZLtKpjhv3jp_YJ8tTfORj09Bwy3RItsfXHg==\",\"r\":\"admin\\/getasistentes\"}'),
(1846, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:46:28', '{\"nombre\":\"Irma Guadalupe\",\"apellido_paterno\":\"Moya\",\"apellido_materno\":\"Cervantes\",\"_csrf\":\"FKfmzBy5rFeQ3_16tbnUqWyKERChUbS0Of4AH_eImDNe5Ym6TfWZLtKpjhv3jp_YJ8tTfORj09Bwy3RItsfXHg==\",\"r\":\"admin\\/getasistentes\"}'),
(1847, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:46:36', '{\"_csrf\":\"FKfmzBy5rFeQ3_16tbnUqWyKERChUbS0Of4AH_eImDNe5Ym6TfWZLtKpjhv3jp_YJ8tTfORj09Bwy3RItsfXHg==\",\"Asistente\":{\"nombre\":\"Irma Guadalupe\",\"apellido_paterno\":\"Moya\",\"apellido_materno\":\"Cervantes\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1848, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:46:37', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113074\"}'),
(1849, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:46:44', '{\"r\":\"admin\\/asistentes\"}'),
(1850, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:46:46', '{\"r\":\"admin\\/asistentecreate\"}'),
(1851, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:46:52', '{\"nombre\":\"Maria Dolores\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"5RykawnKnjDZadNklNuzMKee7JpkgMJpBZUfVisebvGvXssdWIarSZsfoAXW7PhB7N-u9iGypQ1MoGsBalEh3A==\",\"r\":\"admin\\/getasistentes\"}'),
(1852, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:46:56', '{\"nombre\":\"Maria Dolores\",\"apellido_paterno\":\"D\\u00edas\",\"apellido_materno\":\"\",\"_csrf\":\"5RykawnKnjDZadNklNuzMKee7JpkgMJpBZUfVisebvGvXssdWIarSZsfoAXW7PhB7N-u9iGypQ1MoGsBalEh3A==\",\"r\":\"admin\\/getasistentes\"}'),
(1853, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:47:04', '{\"nombre\":\"Maria Dolores\",\"apellido_paterno\":\"D\\u00edas\",\"apellido_materno\":\"P\\u00e9rez\",\"_csrf\":\"5RykawnKnjDZadNklNuzMKee7JpkgMJpBZUfVisebvGvXssdWIarSZsfoAXW7PhB7N-u9iGypQ1MoGsBalEh3A==\",\"r\":\"admin\\/getasistentes\"}'),
(1854, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:47:14', '{\"_csrf\":\"5RykawnKnjDZadNklNuzMKee7JpkgMJpBZUfVisebvGvXssdWIarSZsfoAXW7PhB7N-u9iGypQ1MoGsBalEh3A==\",\"Asistente\":{\"nombre\":\"Maria Dolores\",\"apellido_paterno\":\"D\\u00edas\",\"apellido_materno\":\"P\\u00e9rez\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1855, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:47:14', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113075\"}'),
(1856, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:47:16', '{\"r\":\"admin\\/asistentes\"}'),
(1857, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:47:25', '{\"r\":\"admin\\/asistentecreate\"}'),
(1858, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:47:31', '{\"nombre\":\"Maria Josefina\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"ExzDgE_OdeXY-oe-_gK1ams-gJ_nobx8_Z2SNWv6pTdZXqz2HoJAnJqM9N-8Nf4bIH_C86KT2xi0qOZiKrXqGg==\",\"r\":\"admin\\/getasistentes\"}'),
(1859, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:47:34', '{\"nombre\":\"Maria Josefina\",\"apellido_paterno\":\"hern\\u00e1ndez\",\"apellido_materno\":\"\",\"_csrf\":\"ExzDgE_OdeXY-oe-_gK1ams-gJ_nobx8_Z2SNWv6pTdZXqz2HoJAnJqM9N-8Nf4bIH_C86KT2xi0qOZiKrXqGg==\",\"r\":\"admin\\/getasistentes\"}'),
(1860, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:47:42', '{\"nombre\":\"Maria Josefina\",\"apellido_paterno\":\"hern\\u00e1ndez\",\"apellido_materno\":\"M\\u00e1rquez\",\"_csrf\":\"ExzDgE_OdeXY-oe-_gK1ams-gJ_nobx8_Z2SNWv6pTdZXqz2HoJAnJqM9N-8Nf4bIH_C86KT2xi0qOZiKrXqGg==\",\"r\":\"admin\\/getasistentes\"}'),
(1861, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:47:45', '{\"nombre\":\"Maria Josefina\",\"apellido_paterno\":\"Hern\\u00e1ndez\",\"apellido_materno\":\"M\\u00e1rquez\",\"_csrf\":\"ExzDgE_OdeXY-oe-_gK1ams-gJ_nobx8_Z2SNWv6pTdZXqz2HoJAnJqM9N-8Nf4bIH_C86KT2xi0qOZiKrXqGg==\",\"r\":\"admin\\/getasistentes\"}'),
(1862, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:47:54', '{\"_csrf\":\"ExzDgE_OdeXY-oe-_gK1ams-gJ_nobx8_Z2SNWv6pTdZXqz2HoJAnJqM9N-8Nf4bIH_C86KT2xi0qOZiKrXqGg==\",\"Asistente\":{\"nombre\":\"Maria Josefina\",\"apellido_paterno\":\"Hern\\u00e1ndez\",\"apellido_materno\":\"M\\u00e1rquez\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1863, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:47:54', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113076\"}'),
(1864, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:47:57', '{\"r\":\"admin\\/asistentes\"}'),
(1865, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:47:58', '{\"r\":\"admin\\/asistentecreate\"}'),
(1866, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:48:13', '{\"nombre\":\"Cleopatra\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"ipoPzADjhOLHBmVC_D7gz5c8TZzTUv_dvOt2UUT5KqbA2GC6Ua-xm4VwFiO-Cau-3H0P8JZgmLn13gIGBbZliw==\",\"r\":\"admin\\/getasistentes\"}'),
(1867, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:48:19', '{\"nombre\":\"Cleopatra\",\"apellido_paterno\":\"D\\u00e1vila\",\"apellido_materno\":\"\",\"_csrf\":\"ipoPzADjhOLHBmVC_D7gz5c8TZzTUv_dvOt2UUT5KqbA2GC6Ua-xm4VwFiO-Cau-3H0P8JZgmLn13gIGBbZliw==\",\"r\":\"admin\\/getasistentes\"}'),
(1868, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:48:25', '{\"nombre\":\"Cleopatra\",\"apellido_paterno\":\"Davila\",\"apellido_materno\":\"\",\"_csrf\":\"ipoPzADjhOLHBmVC_D7gz5c8TZzTUv_dvOt2UUT5KqbA2GC6Ua-xm4VwFiO-Cau-3H0P8JZgmLn13gIGBbZliw==\",\"r\":\"admin\\/getasistentes\"}'),
(1869, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:48:29', '{\"nombre\":\"Cleopatra\",\"apellido_paterno\":\"Davila\",\"apellido_materno\":\"Rosales\",\"_csrf\":\"ipoPzADjhOLHBmVC_D7gz5c8TZzTUv_dvOt2UUT5KqbA2GC6Ua-xm4VwFiO-Cau-3H0P8JZgmLn13gIGBbZliw==\",\"r\":\"admin\\/getasistentes\"}'),
(1870, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:48:38', '{\"_csrf\":\"ipoPzADjhOLHBmVC_D7gz5c8TZzTUv_dvOt2UUT5KqbA2GC6Ua-xm4VwFiO-Cau-3H0P8JZgmLn13gIGBbZliw==\",\"Asistente\":{\"nombre\":\"Cleopatra\",\"apellido_paterno\":\"Davila\",\"apellido_materno\":\"Rosales\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1871, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:48:38', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113077\"}'),
(1872, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:48:40', '{\"r\":\"admin\\/asistentes\"}'),
(1873, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:48:41', '{\"r\":\"admin\\/asistentecreate\"}'),
(1874, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:48:54', '{\"nombre\":\"Ma del Rosario\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"8TPq3Zfar5BEuDUvibuvB00MBgNoUWyQLuJQLki9HnG7cYWrxpaa6QbORk7LjOR2Bk1Eby1jC_Rn1yR5CfJRXA==\",\"r\":\"admin\\/getasistentes\"}'),
(1875, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:48:59', '{\"nombre\":\"Ma del Rosario\",\"apellido_paterno\":\"Cisneros\",\"apellido_materno\":\"\",\"_csrf\":\"8TPq3Zfar5BEuDUvibuvB00MBgNoUWyQLuJQLki9HnG7cYWrxpaa6QbORk7LjOR2Bk1Eby1jC_Rn1yR5CfJRXA==\",\"r\":\"admin\\/getasistentes\"}'),
(1876, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:49:11', '{\"_csrf\":\"8TPq3Zfar5BEuDUvibuvB00MBgNoUWyQLuJQLki9HnG7cYWrxpaa6QbORk7LjOR2Bk1Eby1jC_Rn1yR5CfJRXA==\",\"Asistente\":{\"nombre\":\"Ma del Rosario\",\"apellido_paterno\":\"Cisneros\",\"apellido_materno\":\"\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1877, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:49:11', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113078\"}'),
(1878, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:49:18', '{\"r\":\"admin\\/asistentes\"}'),
(1879, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:49:20', '{\"r\":\"admin\\/asistentecreate\"}'),
(1880, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:49:27', '{\"nombre\":\"Teresa de Jes\\u00fas\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"yJgSsvEQRsWJnJgLijSMAR_4Mfdsj5aAJokh_IZdOoCC2n3EoFxzvMvq62rIA8dwVLlzmym98eRvvFWrxxJ1rQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1881, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:49:33', '{\"nombre\":\"Teresa de Jes\\u00fas\",\"apellido_paterno\":\"Cisneros\",\"apellido_materno\":\"\",\"_csrf\":\"yJgSsvEQRsWJnJgLijSMAR_4Mfdsj5aAJokh_IZdOoCC2n3EoFxzvMvq62rIA8dwVLlzmym98eRvvFWrxxJ1rQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1882, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:49:38', '{\"nombre\":\"Teresa de Jes\\u00fas\",\"apellido_paterno\":\"Cisneros\",\"apellido_materno\":\"G\\u00f3mez\",\"_csrf\":\"yJgSsvEQRsWJnJgLijSMAR_4Mfdsj5aAJokh_IZdOoCC2n3EoFxzvMvq62rIA8dwVLlzmym98eRvvFWrxxJ1rQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1883, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:49:50', '{\"_csrf\":\"yJgSsvEQRsWJnJgLijSMAR_4Mfdsj5aAJokh_IZdOoCC2n3EoFxzvMvq62rIA8dwVLlzmym98eRvvFWrxxJ1rQ==\",\"Asistente\":{\"nombre\":\"Teresa de Jes\\u00fas\",\"apellido_paterno\":\"Cisneros\",\"apellido_materno\":\"G\\u00f3mez\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1884, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:49:50', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113079\"}'),
(1885, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:49:56', '{\"r\":\"admin\\/asistentes\"}'),
(1886, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:49:56', '{\"r\":\"admin\\/asistentes\"}'),
(1887, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:49:58', '{\"r\":\"admin\\/asistentecreate\"}'),
(1888, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:50:02', '{\"nombre\":\"beatriz\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"7801X8x29UgvvnHhuLKIV3hcyZ79pU-ZTUehS8yUk4Wlj1opnTrAMW3IAoD6hcMmMx2L8riXKP0EctUcjdvcqA==\",\"r\":\"admin\\/getasistentes\"}'),
(1889, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:50:04', '{\"nombre\":\"beatriz\",\"apellido_paterno\":\"olivares\",\"apellido_materno\":\"\",\"_csrf\":\"7801X8x29UgvvnHhuLKIV3hcyZ79pU-ZTUehS8yUk4Wlj1opnTrAMW3IAoD6hcMmMx2L8riXKP0EctUcjdvcqA==\",\"r\":\"admin\\/getasistentes\"}'),
(1890, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:50:09', '{\"nombre\":\"beatriz\",\"apellido_paterno\":\"olivares\",\"apellido_materno\":\"Ba\\u00f1uelos\",\"_csrf\":\"7801X8x29UgvvnHhuLKIV3hcyZ79pU-ZTUehS8yUk4Wlj1opnTrAMW3IAoD6hcMmMx2L8riXKP0EctUcjdvcqA==\",\"r\":\"admin\\/getasistentes\"}'),
(1891, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:50:12', '{\"nombre\":\"Beatriz\",\"apellido_paterno\":\"olivares\",\"apellido_materno\":\"Ba\\u00f1uelos\",\"_csrf\":\"7801X8x29UgvvnHhuLKIV3hcyZ79pU-ZTUehS8yUk4Wlj1opnTrAMW3IAoD6hcMmMx2L8riXKP0EctUcjdvcqA==\",\"r\":\"admin\\/getasistentes\"}'),
(1892, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:50:16', '{\"nombre\":\"Beatriz\",\"apellido_paterno\":\"Olivares\",\"apellido_materno\":\"Ba\\u00f1uelos\",\"_csrf\":\"7801X8x29UgvvnHhuLKIV3hcyZ79pU-ZTUehS8yUk4Wlj1opnTrAMW3IAoD6hcMmMx2L8riXKP0EctUcjdvcqA==\",\"r\":\"admin\\/getasistentes\"}'),
(1893, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:50:24', '{\"_csrf\":\"7801X8x29UgvvnHhuLKIV3hcyZ79pU-ZTUehS8yUk4Wlj1opnTrAMW3IAoD6hcMmMx2L8riXKP0EctUcjdvcqA==\",\"Asistente\":{\"nombre\":\"Beatriz\",\"apellido_paterno\":\"Olivares\",\"apellido_materno\":\"Ba\\u00f1uelos\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1894, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:50:24', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113080\"}'),
(1895, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:50:30', '{\"r\":\"admin\\/asistentes\"}'),
(1896, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:50:31', '{\"r\":\"admin\\/asistentecreate\"}'),
(1897, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:50:35', '{\"nombre\":\"Natividad\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"GEEYTcvJaivZ8jZMaWr977wdQhKS2IgpKcOVRB8tNt5SA3c7moVfUpuERS0rXbae91wAftfq701g9uETXmJ58w==\",\"r\":\"admin\\/getasistentes\"}'),
(1898, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:50:37', '{\"nombre\":\"Natividad\",\"apellido_paterno\":\"Espino\",\"apellido_materno\":\"\",\"_csrf\":\"GEEYTcvJaivZ8jZMaWr977wdQhKS2IgpKcOVRB8tNt5SA3c7moVfUpuERS0rXbae91wAftfq701g9uETXmJ58w==\",\"r\":\"admin\\/getasistentes\"}'),
(1899, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:50:41', '{\"nombre\":\"Natividad\",\"apellido_paterno\":\"Espino\",\"apellido_materno\":\"Garc\\u00eda\",\"_csrf\":\"GEEYTcvJaivZ8jZMaWr977wdQhKS2IgpKcOVRB8tNt5SA3c7moVfUpuERS0rXbae91wAftfq701g9uETXmJ58w==\",\"r\":\"admin\\/getasistentes\"}'),
(1900, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:50:50', '{\"_csrf\":\"GEEYTcvJaivZ8jZMaWr977wdQhKS2IgpKcOVRB8tNt5SA3c7moVfUpuERS0rXbae91wAftfq701g9uETXmJ58w==\",\"Asistente\":{\"nombre\":\"Natividad\",\"apellido_paterno\":\"Espino\",\"apellido_materno\":\"Garc\\u00eda\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1901, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:50:50', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113081\"}'),
(1902, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:50:53', '{\"r\":\"admin\\/asistentes\"}'),
(1903, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:50:59', '{\"r\":\"admin\\/asistentecreate\"}'),
(1904, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:51:03', '{\"nombre\":\"Leticia\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"1DmrtNSLehMAWVXf2ghL8Z2krjc-8Tg9Qy10qlXhO_2ee8TChcdPakIvJr6YPwCA1uXsW3vDX1kKGAD9FK500A==\",\"r\":\"admin\\/getasistentes\"}'),
(1905, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:51:08', '{\"nombre\":\"Leticia\",\"apellido_paterno\":\"Ram\\u00edrez\",\"apellido_materno\":\"\",\"_csrf\":\"1DmrtNSLehMAWVXf2ghL8Z2krjc-8Tg9Qy10qlXhO_2ee8TChcdPakIvJr6YPwCA1uXsW3vDX1kKGAD9FK500A==\",\"r\":\"admin\\/getasistentes\"}'),
(1906, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:51:12', '{\"nombre\":\"Leticia\",\"apellido_paterno\":\"Ram\\u00edrez\",\"apellido_materno\":\"Gonz\\u00e1lez\",\"_csrf\":\"1DmrtNSLehMAWVXf2ghL8Z2krjc-8Tg9Qy10qlXhO_2ee8TChcdPakIvJr6YPwCA1uXsW3vDX1kKGAD9FK500A==\",\"r\":\"admin\\/getasistentes\"}'),
(1907, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:51:28', '{\"_csrf\":\"1DmrtNSLehMAWVXf2ghL8Z2krjc-8Tg9Qy10qlXhO_2ee8TChcdPakIvJr6YPwCA1uXsW3vDX1kKGAD9FK500A==\",\"Asistente\":{\"nombre\":\"Leticia\",\"apellido_paterno\":\"Ram\\u00edrez\",\"apellido_materno\":\"Gonz\\u00e1lez\",\"sexo\":\"M\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1908, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:51:29', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113082\"}'),
(1909, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:51:35', '{\"r\":\"admin\\/asistentes\"}'),
(1910, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:51:48', '{\"r\":\"admin\\/asistentecreate\"}'),
(1911, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:51:55', '{\"nombre\":\"\\u00c1ngel Mateo\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"bwBBrILJ83PIgn-cVwdjhaLkCaWVeTGEJ2kJJdynbp4lQi7a04XGCor0DP0VMCj06aVLydBLVuBuXH1yneghsw==\",\"r\":\"admin\\/getasistentes\"}'),
(1912, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:51:58', '{\"nombre\":\"\\u00c1ngel Mateo\",\"apellido_paterno\":\"Marquez\",\"apellido_materno\":\"\",\"_csrf\":\"bwBBrILJ83PIgn-cVwdjhaLkCaWVeTGEJ2kJJdynbp4lQi7a04XGCor0DP0VMCj06aVLydBLVuBuXH1yneghsw==\",\"r\":\"admin\\/getasistentes\"}'),
(1913, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:52:06', '{\"nombre\":\"\\u00c1ngel Mateo\",\"apellido_paterno\":\"Marquez\",\"apellido_materno\":\"Delgado\",\"_csrf\":\"bwBBrILJ83PIgn-cVwdjhaLkCaWVeTGEJ2kJJdynbp4lQi7a04XGCor0DP0VMCj06aVLydBLVuBuXH1yneghsw==\",\"r\":\"admin\\/getasistentes\"}'),
(1914, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:52:12', '{\"nombre\":\"\\u00c1ngel Mateo\",\"apellido_paterno\":\"Maraquez\",\"apellido_materno\":\"Delgado\",\"_csrf\":\"bwBBrILJ83PIgn-cVwdjhaLkCaWVeTGEJ2kJJdynbp4lQi7a04XGCor0DP0VMCj06aVLydBLVuBuXH1yneghsw==\",\"r\":\"admin\\/getasistentes\"}'),
(1915, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:52:22', '{\"_csrf\":\"bwBBrILJ83PIgn-cVwdjhaLkCaWVeTGEJ2kJJdynbp4lQi7a04XGCor0DP0VMCj06aVLydBLVuBuXH1yneghsw==\",\"Asistente\":{\"nombre\":\"\\u00c1ngel Mateo\",\"apellido_paterno\":\"Maraquez\",\"apellido_materno\":\"Delgado\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1916, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:52:22', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113083\"}'),
(1917, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:52:24', '{\"r\":\"admin\\/asistentes\"}'),
(1918, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:52:33', '{\"r\":\"admin\\/asistentecreate\"}'),
(1919, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:52:33', '{\"r\":\"admin\\/asistentecreate\"}'),
(1920, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:52:38', '{\"nombre\":\"J. \\u00c1ngel\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"pJWDUdFLK6-Mx3FXQifD3u0Fw-ebyRbW0A96epZhU77u1-wngAce1s6xAjYAEIivpkSBi977cbKZOg4t1y4ckw==\",\"r\":\"admin\\/getasistentes\"}'),
(1921, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:52:40', '{\"nombre\":\"J. \\u00c1ngel\",\"apellido_paterno\":\"Valadez\",\"apellido_materno\":\"\",\"_csrf\":\"pJWDUdFLK6-Mx3FXQifD3u0Fw-ebyRbW0A96epZhU77u1-wngAce1s6xAjYAEIivpkSBi977cbKZOg4t1y4ckw==\",\"r\":\"admin\\/getasistentes\"}'),
(1922, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:52:48', '{\"nombre\":\"J. \\u00c1ngel\",\"apellido_paterno\":\"Valadez\",\"apellido_materno\":\"Gonz\\u00e1lez\",\"_csrf\":\"pJWDUdFLK6-Mx3FXQifD3u0Fw-ebyRbW0A96epZhU77u1-wngAce1s6xAjYAEIivpkSBi977cbKZOg4t1y4ckw==\",\"r\":\"admin\\/getasistentes\"}'),
(1923, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:52:57', '{\"_csrf\":\"pJWDUdFLK6-Mx3FXQifD3u0Fw-ebyRbW0A96epZhU77u1-wngAce1s6xAjYAEIivpkSBi977cbKZOg4t1y4ckw==\",\"Asistente\":{\"nombre\":\"J. \\u00c1ngel\",\"apellido_paterno\":\"Valadez\",\"apellido_materno\":\"Gonz\\u00e1lez\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1924, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:52:57', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113084\"}'),
(1925, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:52:59', '{\"r\":\"admin\\/asistentes\"}'),
(1926, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:53:00', '{\"r\":\"admin\\/asistentecreate\"}'),
(1927, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:53:14', '{\"nombre\":\"Alexis Michel\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"eb99_Upa4SNwtrVsSXvXkuw5IZkVi-cJJBbsmr395Zoz_RKLGxbUWjLAxg0LTJzjp3hj9VC5gG1tI5jN_LKqtw==\",\"r\":\"admin\\/getasistentes\"}'),
(1928, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:53:15', '{\"nombre\":\"Alexis Michel\",\"apellido_paterno\":\"Alatorre\",\"apellido_materno\":\"\",\"_csrf\":\"eb99_Upa4SNwtrVsSXvXkuw5IZkVi-cJJBbsmr395Zoz_RKLGxbUWjLAxg0LTJzjp3hj9VC5gG1tI5jN_LKqtw==\",\"r\":\"admin\\/getasistentes\"}'),
(1929, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:53:20', '{\"nombre\":\"Alexis Michel\",\"apellido_paterno\":\"Alatorre\",\"apellido_materno\":\"Lugo\",\"_csrf\":\"eb99_Upa4SNwtrVsSXvXkuw5IZkVi-cJJBbsmr395Zoz_RKLGxbUWjLAxg0LTJzjp3hj9VC5gG1tI5jN_LKqtw==\",\"r\":\"admin\\/getasistentes\"}'),
(1930, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:53:34', '{\"_csrf\":\"eb99_Upa4SNwtrVsSXvXkuw5IZkVi-cJJBbsmr395Zoz_RKLGxbUWjLAxg0LTJzjp3hj9VC5gG1tI5jN_LKqtw==\",\"Asistente\":{\"nombre\":\"Alexis Michel\",\"apellido_paterno\":\"Alatorre\",\"apellido_materno\":\"Lugo\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1931, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:53:34', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113085\"}'),
(1932, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:53:37', '{\"r\":\"admin\\/asistentes\"}'),
(1933, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:53:43', '{\"r\":\"admin\\/asistentecreate\"}'),
(1934, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:53:56', '{\"nombre\":\"Nayib Aratr\\u00f3n\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"dgorQcJwVIU544_TfgS-xbz4X8OcPOw_iGCD79bWQpI8SEQ3kzxh_HuV_LI8M_W097kdr9kOi1vBVfe4l5kNvw==\",\"r\":\"admin\\/getasistentes\"}'),
(1935, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:53:58', '{\"nombre\":\"Nayib Aratr\\u00f3n\",\"apellido_paterno\":\"Vargas\",\"apellido_materno\":\"\",\"_csrf\":\"dgorQcJwVIU544_TfgS-xbz4X8OcPOw_iGCD79bWQpI8SEQ3kzxh_HuV_LI8M_W097kdr9kOi1vBVfe4l5kNvw==\",\"r\":\"admin\\/getasistentes\"}'),
(1936, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:54:04', '{\"nombre\":\"Nayib Aratr\\u00f3n\",\"apellido_paterno\":\"Vargas\",\"apellido_materno\":\"Sifuentes\",\"_csrf\":\"dgorQcJwVIU544_TfgS-xbz4X8OcPOw_iGCD79bWQpI8SEQ3kzxh_HuV_LI8M_W097kdr9kOi1vBVfe4l5kNvw==\",\"r\":\"admin\\/getasistentes\"}'),
(1937, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:54:13', '{\"_csrf\":\"dgorQcJwVIU544_TfgS-xbz4X8OcPOw_iGCD79bWQpI8SEQ3kzxh_HuV_LI8M_W097kdr9kOi1vBVfe4l5kNvw==\",\"Asistente\":{\"nombre\":\"Nayib Aratr\\u00f3n\",\"apellido_paterno\":\"Vargas\",\"apellido_materno\":\"Sifuentes\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1938, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:54:13', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113086\"}'),
(1939, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:54:21', '{\"r\":\"admin\\/asistentes\"}');
INSERT INTO `log` (`id`, `user`, `module`, `controller`, `method`, `time`, `data`) VALUES
(1940, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:54:22', '{\"r\":\"admin\\/asistentecreate\"}'),
(1941, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:54:28', '{\"nombre\":\"Jorge Armando\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"MypKYoqiKqrxWrDhIO--MVnwL4FS_pEb0Jk0GaQH0nd5aCUU2-4f07Msw4Bi2PVAErFt7RfM9n-ZrEBO5UidWg==\",\"r\":\"admin\\/getasistentes\"}'),
(1942, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:54:30', '{\"nombre\":\"Jorge Armando\",\"apellido_paterno\":\"Venegas\",\"apellido_materno\":\"\",\"_csrf\":\"MypKYoqiKqrxWrDhIO--MVnwL4FS_pEb0Jk0GaQH0nd5aCUU2-4f07Msw4Bi2PVAErFt7RfM9n-ZrEBO5UidWg==\",\"r\":\"admin\\/getasistentes\"}'),
(1943, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:54:35', '{\"nombre\":\"Jorge Armando\",\"apellido_paterno\":\"Venegas\",\"apellido_materno\":\"Venegas\",\"_csrf\":\"MypKYoqiKqrxWrDhIO--MVnwL4FS_pEb0Jk0GaQH0nd5aCUU2-4f07Msw4Bi2PVAErFt7RfM9n-ZrEBO5UidWg==\",\"r\":\"admin\\/getasistentes\"}'),
(1944, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:54:43', '{\"_csrf\":\"MypKYoqiKqrxWrDhIO--MVnwL4FS_pEb0Jk0GaQH0nd5aCUU2-4f07Msw4Bi2PVAErFt7RfM9n-ZrEBO5UidWg==\",\"Asistente\":{\"nombre\":\"Jorge Armando\",\"apellido_paterno\":\"Venegas\",\"apellido_materno\":\"Venegas\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1945, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:54:43', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113087\"}'),
(1946, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:54:45', '{\"r\":\"admin\\/asistentes\"}'),
(1947, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:54:47', '{\"r\":\"admin\\/asistentecreate\"}'),
(1948, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:55:00', '{\"nombre\":\"Jaime\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"iPBYBxVdBwHUzP4e14oyJBLL-aftCzSdQij9kZ0NIsfCsjdxRBEyeJa6jX-VvXlVWYq7y6g5U_kLHYnG3EJt6g==\",\"r\":\"admin\\/getasistentes\"}'),
(1949, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:55:02', '{\"nombre\":\"Jaime\",\"apellido_paterno\":\"Arteaga\",\"apellido_materno\":\"\",\"_csrf\":\"iPBYBxVdBwHUzP4e14oyJBLL-aftCzSdQij9kZ0NIsfCsjdxRBEyeJa6jX-VvXlVWYq7y6g5U_kLHYnG3EJt6g==\",\"r\":\"admin\\/getasistentes\"}'),
(1950, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:55:07', '{\"nombre\":\"Jaime\",\"apellido_paterno\":\"Arteaga\",\"apellido_materno\":\"Miramontes\",\"_csrf\":\"iPBYBxVdBwHUzP4e14oyJBLL-aftCzSdQij9kZ0NIsfCsjdxRBEyeJa6jX-VvXlVWYq7y6g5U_kLHYnG3EJt6g==\",\"r\":\"admin\\/getasistentes\"}'),
(1951, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:55:16', '{\"_csrf\":\"iPBYBxVdBwHUzP4e14oyJBLL-aftCzSdQij9kZ0NIsfCsjdxRBEyeJa6jX-VvXlVWYq7y6g5U_kLHYnG3EJt6g==\",\"Asistente\":{\"nombre\":\"Jaime\",\"apellido_paterno\":\"Arteaga\",\"apellido_materno\":\"Miramontes\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1952, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:55:16', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113088\"}'),
(1953, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:55:18', '{\"r\":\"admin\\/asistentes\"}'),
(1954, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:55:20', '{\"r\":\"admin\\/asistentecreate\"}'),
(1955, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:55:31', '{\"nombre\":\"Jos\\u00e9 \\u00c1ngel\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"3Dhukw7IGGc041y0hJwtKgqiz8273vNe9punh2cpXBeWegHlX4QtHnaVL9XGq2ZbQeONof7slDq_rtPQJmYTOg==\",\"r\":\"admin\\/getasistentes\"}'),
(1956, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:55:33', '{\"nombre\":\"Jos\\u00e9 \\u00c1ngel\",\"apellido_paterno\":\"Jacobo\",\"apellido_materno\":\"\",\"_csrf\":\"3Dhukw7IGGc041y0hJwtKgqiz8273vNe9punh2cpXBeWegHlX4QtHnaVL9XGq2ZbQeONof7slDq_rtPQJmYTOg==\",\"r\":\"admin\\/getasistentes\"}'),
(1957, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:55:38', '{\"nombre\":\"Jos\\u00e9 \\u00c1ngel\",\"apellido_paterno\":\"Jacobo\",\"apellido_materno\":\"Guerrero\",\"_csrf\":\"3Dhukw7IGGc041y0hJwtKgqiz8273vNe9punh2cpXBeWegHlX4QtHnaVL9XGq2ZbQeONof7slDq_rtPQJmYTOg==\",\"r\":\"admin\\/getasistentes\"}'),
(1958, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:55:47', '{\"_csrf\":\"3Dhukw7IGGc041y0hJwtKgqiz8273vNe9punh2cpXBeWegHlX4QtHnaVL9XGq2ZbQeONof7slDq_rtPQJmYTOg==\",\"Asistente\":{\"nombre\":\"Jos\\u00e9 \\u00c1ngel\",\"apellido_paterno\":\"Jacobo\",\"apellido_materno\":\"Guerrero\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1959, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:55:47', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113089\"}'),
(1960, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:55:49', '{\"r\":\"admin\\/asistentes\"}'),
(1961, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:55:50', '{\"r\":\"admin\\/asistentecreate\"}'),
(1962, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:56:00', '{\"nombre\":\"Gabriel\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"MaQEx0L-gTHAWELD_eFlSHSGghATmboily9HMgqj1xh75muxE7K0SIIuMaK_1i45P8fAfFar3UbeGjNlS-yYNQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1963, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:56:03', '{\"nombre\":\"Gabriel\",\"apellido_paterno\":\"Rodr\\u00edguez\",\"apellido_materno\":\"\",\"_csrf\":\"MaQEx0L-gTHAWELD_eFlSHSGghATmboily9HMgqj1xh75muxE7K0SIIuMaK_1i45P8fAfFar3UbeGjNlS-yYNQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1964, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:56:08', '{\"nombre\":\"Gabriel\",\"apellido_paterno\":\"Rodr\\u00edguez\",\"apellido_materno\":\"Rosales\",\"_csrf\":\"MaQEx0L-gTHAWELD_eFlSHSGghATmboily9HMgqj1xh75muxE7K0SIIuMaK_1i45P8fAfFar3UbeGjNlS-yYNQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1965, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:56:18', '{\"_csrf\":\"MaQEx0L-gTHAWELD_eFlSHSGghATmboily9HMgqj1xh75muxE7K0SIIuMaK_1i45P8fAfFar3UbeGjNlS-yYNQ==\",\"Asistente\":{\"nombre\":\"Gabriel\",\"apellido_paterno\":\"Rodr\\u00edguez\",\"apellido_materno\":\"Rosales\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1966, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:56:18', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113090\"}'),
(1967, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:56:20', '{\"r\":\"admin\\/asistentes\"}'),
(1968, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:56:21', '{\"r\":\"admin\\/asistentecreate\"}'),
(1969, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:56:29', '{\"nombre\":\"Lorenzo\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"RriOTRCwsmhRTC9eJa-axHW7oWMazVF0j90TUBAy2VgM-uE7QfyHERM6XD9nmNG1PvrjD1__NhDG6GcHUX2WdQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1970, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:56:35', '{\"nombre\":\"Lorenzo\",\"apellido_paterno\":\"G\\u00f3mez\",\"apellido_materno\":\"\",\"_csrf\":\"RriOTRCwsmhRTC9eJa-axHW7oWMazVF0j90TUBAy2VgM-uE7QfyHERM6XD9nmNG1PvrjD1__NhDG6GcHUX2WdQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1971, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:56:39', '{\"nombre\":\"Lorenzo\",\"apellido_paterno\":\"G\\u00f3mez\",\"apellido_materno\":\"Mart\\u00ednez\",\"_csrf\":\"RriOTRCwsmhRTC9eJa-axHW7oWMazVF0j90TUBAy2VgM-uE7QfyHERM6XD9nmNG1PvrjD1__NhDG6GcHUX2WdQ==\",\"r\":\"admin\\/getasistentes\"}'),
(1972, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:56:48', '{\"_csrf\":\"RriOTRCwsmhRTC9eJa-axHW7oWMazVF0j90TUBAy2VgM-uE7QfyHERM6XD9nmNG1PvrjD1__NhDG6GcHUX2WdQ==\",\"Asistente\":{\"nombre\":\"Lorenzo\",\"apellido_paterno\":\"G\\u00f3mez\",\"apellido_materno\":\"Mart\\u00ednez\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1973, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:56:48', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113091\"}'),
(1974, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:56:50', '{\"r\":\"admin\\/asistentes\"}'),
(1975, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:56:58', '{\"r\":\"admin\\/asistentecreate\"}'),
(1976, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:57:06', '{\"nombre\":\"Victor Alejandro\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"Wsvk_e-XFQzPKcrzRsYpDutB6UhYduH0PrP3Ku-Ur-YQiYuLvtsgdY1fuZIE8WJ_oACrJB1EhpB3hoN9rtvgyw==\",\"r\":\"admin\\/getasistentes\"}'),
(1977, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:57:08', '{\"nombre\":\"Victor Alejandro\",\"apellido_paterno\":\"Aguayo\",\"apellido_materno\":\"\",\"_csrf\":\"Wsvk_e-XFQzPKcrzRsYpDutB6UhYduH0PrP3Ku-Ur-YQiYuLvtsgdY1fuZIE8WJ_oACrJB1EhpB3hoN9rtvgyw==\",\"r\":\"admin\\/getasistentes\"}'),
(1978, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:57:12', '{\"nombre\":\"Victor Alejandro\",\"apellido_paterno\":\"Aguayo\",\"apellido_materno\":\"Canales\",\"_csrf\":\"Wsvk_e-XFQzPKcrzRsYpDutB6UhYduH0PrP3Ku-Ur-YQiYuLvtsgdY1fuZIE8WJ_oACrJB1EhpB3hoN9rtvgyw==\",\"r\":\"admin\\/getasistentes\"}'),
(1979, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:57:21', '{\"_csrf\":\"Wsvk_e-XFQzPKcrzRsYpDutB6UhYduH0PrP3Ku-Ur-YQiYuLvtsgdY1fuZIE8WJ_oACrJB1EhpB3hoN9rtvgyw==\",\"Asistente\":{\"nombre\":\"Victor Alejandro\",\"apellido_paterno\":\"Aguayo\",\"apellido_materno\":\"Canales\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1980, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:57:21', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113092\"}'),
(1981, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:57:23', '{\"r\":\"admin\\/asistentes\"}'),
(1982, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:57:44', '{\"r\":\"admin\\/asistentes\",\"page\":\"3\"}'),
(1983, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:58:08', '{\"r\":\"admin\\/asistentecreate\"}'),
(1984, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:58:09', '{\"r\":\"admin\\/asistentecreate\"}'),
(1985, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:58:13', '{\"nombre\":\"Filiberto\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"9qa5b5-Bi1gIm8nkUqfNCkt4RVFfzOtoANzi-POeACu85NYZzs2-IUrtuoUQkIZ7ADkHPRr-jAxJ6ZavstFPBg==\",\"r\":\"admin\\/getasistentes\"}'),
(1986, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:58:19', '{\"nombre\":\"Filiberto\",\"apellido_paterno\":\"Cervantez\",\"apellido_materno\":\"\",\"_csrf\":\"9qa5b5-Bi1gIm8nkUqfNCkt4RVFfzOtoANzi-POeACu85NYZzs2-IUrtuoUQkIZ7ADkHPRr-jAxJ6ZavstFPBg==\",\"r\":\"admin\\/getasistentes\"}'),
(1987, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:58:25', '{\"nombre\":\"Filiberto\",\"apellido_paterno\":\"Cervantez\",\"apellido_materno\":\"Davalos\",\"_csrf\":\"9qa5b5-Bi1gIm8nkUqfNCkt4RVFfzOtoANzi-POeACu85NYZzs2-IUrtuoUQkIZ7ADkHPRr-jAxJ6ZavstFPBg==\",\"r\":\"admin\\/getasistentes\"}'),
(1988, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:58:36', '{\"nombre\":\"Filiberto\",\"apellido_paterno\":\"Cervantes\",\"apellido_materno\":\"Davalos\",\"_csrf\":\"9qa5b5-Bi1gIm8nkUqfNCkt4RVFfzOtoANzi-POeACu85NYZzs2-IUrtuoUQkIZ7ADkHPRr-jAxJ6ZavstFPBg==\",\"r\":\"admin\\/getasistentes\"}'),
(1989, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:58:45', '{\"_csrf\":\"9qa5b5-Bi1gIm8nkUqfNCkt4RVFfzOtoANzi-POeACu85NYZzs2-IUrtuoUQkIZ7ADkHPRr-jAxJ6ZavstFPBg==\",\"Asistente\":{\"nombre\":\"Filiberto\",\"apellido_paterno\":\"Cervantes\",\"apellido_materno\":\"Davalos\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1990, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:58:45', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113093\"}'),
(1991, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:58:48', '{\"r\":\"admin\\/asistentes\"}'),
(1992, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:59:07', '{\"r\":\"admin\\/asistentecreate\"}'),
(1993, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:59:07', '{\"r\":\"admin\\/asistentecreate\"}'),
(1994, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:59:11', '{\"nombre\":\"Joel\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"Rdbx-nGxGilHoWzraFJoN2DnD_Ul6nD4dGQ80-dfkNwPlJ6MIP0vUAXXH4oqZSNGK6ZNmWDYF5w9UUiEphDf8Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1995, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:59:16', '{\"nombre\":\"Joel\",\"apellido_paterno\":\"Chavez\",\"apellido_materno\":\"\",\"_csrf\":\"Rdbx-nGxGilHoWzraFJoN2DnD_Ul6nD4dGQ80-dfkNwPlJ6MIP0vUAXXH4oqZSNGK6ZNmWDYF5w9UUiEphDf8Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1996, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 17:59:20', '{\"nombre\":\"Joel\",\"apellido_paterno\":\"Chavez\",\"apellido_materno\":\"Espino\",\"_csrf\":\"Rdbx-nGxGilHoWzraFJoN2DnD_Ul6nD4dGQ80-dfkNwPlJ6MIP0vUAXXH4oqZSNGK6ZNmWDYF5w9UUiEphDf8Q==\",\"r\":\"admin\\/getasistentes\"}'),
(1997, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 17:59:29', '{\"_csrf\":\"Rdbx-nGxGilHoWzraFJoN2DnD_Ul6nD4dGQ80-dfkNwPlJ6MIP0vUAXXH4oqZSNGK6ZNmWDYF5w9UUiEphDf8Q==\",\"Asistente\":{\"nombre\":\"Joel\",\"apellido_paterno\":\"Chavez\",\"apellido_materno\":\"Espino\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(1998, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 17:59:29', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113094\"}'),
(1999, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:59:31', '{\"r\":\"admin\\/asistentes\"}'),
(2000, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 17:59:49', '{\"r\":\"admin\\/asistentes\",\"page\":\"3\"}'),
(2001, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:00:06', '{\"r\":\"admin\\/asistentecreate\"}'),
(2002, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:00:10', '{\"nombre\":\"Andres\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"Q9UQy15w9P-_gopdWY6pwUCVvn8hycgleX5_dARPjTkJl3-9DzzBhv30-TwbueKwC9T8E2T7r0EwSwsjRQDCFA==\",\"r\":\"admin\\/getasistentes\"}'),
(2003, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:00:12', '{\"nombre\":\"Andres\",\"apellido_paterno\":\"Vega\",\"apellido_materno\":\"\",\"_csrf\":\"Q9UQy15w9P-_gopdWY6pwUCVvn8hycgleX5_dARPjTkJl3-9DzzBhv30-TwbueKwC9T8E2T7r0EwSwsjRQDCFA==\",\"r\":\"admin\\/getasistentes\"}'),
(2004, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:00:18', '{\"nombre\":\"Andres\",\"apellido_paterno\":\"Vega\",\"apellido_materno\":\"Mu\\u00f1oz\",\"_csrf\":\"Q9UQy15w9P-_gopdWY6pwUCVvn8hycgleX5_dARPjTkJl3-9DzzBhv30-TwbueKwC9T8E2T7r0EwSwsjRQDCFA==\",\"r\":\"admin\\/getasistentes\"}'),
(2005, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:00:28', '{\"_csrf\":\"Q9UQy15w9P-_gopdWY6pwUCVvn8hycgleX5_dARPjTkJl3-9DzzBhv30-TwbueKwC9T8E2T7r0EwSwsjRQDCFA==\",\"Asistente\":{\"nombre\":\"Andres\",\"apellido_paterno\":\"Vega\",\"apellido_materno\":\"Mu\\u00f1oz\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2006, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:00:28', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113095\"}'),
(2007, 'saul', 'basic', 'admin', 'asistenteupdate', '2020-11-05 18:00:36', '{\"r\":\"admin\\/asistenteupdate\",\"id\":\"113095\"}'),
(2008, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:00:38', '{\"r\":\"admin\\/asistentes\"}'),
(2009, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:00:39', '{\"r\":\"admin\\/asistentecreate\"}'),
(2010, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:00:43', '{\"nombre\":\"Gerardo\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"6CMfnvhUFWl5DNr5VmVZBXoPHvTD7a5nraYgS70RKV6iYXDoqRggEDt6qZgUUhJ0MU5cmIbfyQPkk1Qc_F5mcw==\",\"r\":\"admin\\/getasistentes\"}'),
(2011, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:00:46', '{\"nombre\":\"Gerardo\",\"apellido_paterno\":\"Cuellar\",\"apellido_materno\":\"\",\"_csrf\":\"6CMfnvhUFWl5DNr5VmVZBXoPHvTD7a5nraYgS70RKV6iYXDoqRggEDt6qZgUUhJ0MU5cmIbfyQPkk1Qc_F5mcw==\",\"r\":\"admin\\/getasistentes\"}'),
(2012, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:00:57', '{\"nombre\":\"Gerardo\",\"apellido_paterno\":\"Cuellar\",\"apellido_materno\":\"Rodr\\u00edguez\",\"_csrf\":\"6CMfnvhUFWl5DNr5VmVZBXoPHvTD7a5nraYgS70RKV6iYXDoqRggEDt6qZgUUhJ0MU5cmIbfyQPkk1Qc_F5mcw==\",\"r\":\"admin\\/getasistentes\"}'),
(2013, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:01:08', '{\"_csrf\":\"6CMfnvhUFWl5DNr5VmVZBXoPHvTD7a5nraYgS70RKV6iYXDoqRggEDt6qZgUUhJ0MU5cmIbfyQPkk1Qc_F5mcw==\",\"Asistente\":{\"nombre\":\"Gerardo\",\"apellido_paterno\":\"Cuellar\",\"apellido_materno\":\"Rodr\\u00edguez\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2014, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:01:08', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113096\"}'),
(2015, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:01:10', '{\"r\":\"admin\\/asistentes\"}'),
(2016, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:01:17', '{\"r\":\"admin\\/asistentecreate\"}'),
(2017, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:01:21', '{\"nombre\":\"gerardo\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"bAE6pb1hywfELDprqfrMKSmRS9t14tToHwDlma_FJwgmQ1XT7C3-foZaSQrrzYdYYtAJtzDQs4xWNZHO7opoJQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2018, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:01:34', '{\"nombre\":\"Elizzar Issac\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"bAE6pb1hywfELDprqfrMKSmRS9t14tToHwDlma_FJwgmQ1XT7C3-foZaSQrrzYdYYtAJtzDQs4xWNZHO7opoJQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2019, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:01:39', '{\"nombre\":\"Elizzar Issac\",\"apellido_paterno\":\"P\\u00e9rez\",\"apellido_materno\":\"\",\"_csrf\":\"bAE6pb1hywfELDprqfrMKSmRS9t14tToHwDlma_FJwgmQ1XT7C3-foZaSQrrzYdYYtAJtzDQs4xWNZHO7opoJQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2020, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:01:44', '{\"nombre\":\"Elizzar Issac\",\"apellido_paterno\":\"P\\u00e9rez\",\"apellido_materno\":\"Montelongo\",\"_csrf\":\"bAE6pb1hywfELDprqfrMKSmRS9t14tToHwDlma_FJwgmQ1XT7C3-foZaSQrrzYdYYtAJtzDQs4xWNZHO7opoJQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2021, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:01:53', '{\"_csrf\":\"bAE6pb1hywfELDprqfrMKSmRS9t14tToHwDlma_FJwgmQ1XT7C3-foZaSQrrzYdYYtAJtzDQs4xWNZHO7opoJQ==\",\"Asistente\":{\"nombre\":\"Elizzar Issac\",\"apellido_paterno\":\"P\\u00e9rez\",\"apellido_materno\":\"Montelongo\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2022, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:01:54', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113097\"}'),
(2023, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:02:11', '{\"r\":\"admin\\/asistentes\"}'),
(2024, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:02:12', '{\"r\":\"admin\\/asistentecreate\"}'),
(2025, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:02:16', '{\"nombre\":\"Jos\\u00e9 Cruz\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"ak9vmPk39WSW8IggJRAC73v-vYjJLWwSdSrQqAp-bjIgDQDuqHvAHdSG-0FnJ0meML__5IwfC3Y8H6T_SzEhHw==\",\"r\":\"admin\\/getasistentes\"}'),
(2026, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:02:20', '{\"nombre\":\"Jos\\u00e9 Cruz\",\"apellido_paterno\":\"de Lira\",\"apellido_materno\":\"\",\"_csrf\":\"ak9vmPk39WSW8IggJRAC73v-vYjJLWwSdSrQqAp-bjIgDQDuqHvAHdSG-0FnJ0meML__5IwfC3Y8H6T_SzEhHw==\",\"r\":\"admin\\/getasistentes\"}'),
(2027, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:02:26', '{\"nombre\":\"Jos\\u00e9 Cruz\",\"apellido_paterno\":\"de Lira\",\"apellido_materno\":\"D\\u00edaz\",\"_csrf\":\"ak9vmPk39WSW8IggJRAC73v-vYjJLWwSdSrQqAp-bjIgDQDuqHvAHdSG-0FnJ0meML__5IwfC3Y8H6T_SzEhHw==\",\"r\":\"admin\\/getasistentes\"}'),
(2028, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:02:34', '{\"_csrf\":\"ak9vmPk39WSW8IggJRAC73v-vYjJLWwSdSrQqAp-bjIgDQDuqHvAHdSG-0FnJ0meML__5IwfC3Y8H6T_SzEhHw==\",\"Asistente\":{\"nombre\":\"Jos\\u00e9 Cruz\",\"apellido_paterno\":\"de Lira\",\"apellido_materno\":\"D\\u00edaz\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2029, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:02:34', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113098\"}'),
(2030, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:02:43', '{\"r\":\"admin\\/asistentes\"}'),
(2031, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:02:45', '{\"r\":\"admin\\/asistentecreate\"}'),
(2032, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:02:51', '{\"nombre\":\"J. Guadalupe\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"DcWyMAD_HRXtJvAWBdde9H6tOP8h2V3rdrpcPBSQ2hVHh91GUbMobK9Qg3dH4BWFNex6k2TrOo8_jyhrVd-VOA==\",\"r\":\"admin\\/getasistentes\"}'),
(2033, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:02:54', '{\"nombre\":\"J. Guadalupe\",\"apellido_paterno\":\"P\\u00e9rez\",\"apellido_materno\":\"\",\"_csrf\":\"DcWyMAD_HRXtJvAWBdde9H6tOP8h2V3rdrpcPBSQ2hVHh91GUbMobK9Qg3dH4BWFNex6k2TrOo8_jyhrVd-VOA==\",\"r\":\"admin\\/getasistentes\"}'),
(2034, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:03:03', '{\"_csrf\":\"DcWyMAD_HRXtJvAWBdde9H6tOP8h2V3rdrpcPBSQ2hVHh91GUbMobK9Qg3dH4BWFNex6k2TrOo8_jyhrVd-VOA==\",\"Asistente\":{\"nombre\":\"J. Guadalupe\",\"apellido_paterno\":\"P\\u00e9rez\",\"apellido_materno\":\"\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2035, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:03:03', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113099\"}'),
(2036, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:03:06', '{\"r\":\"admin\\/asistentes\"}'),
(2037, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:03:22', '{\"r\":\"admin\\/asistentecreate\"}'),
(2038, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:03:25', '{\"nombre\":\"Ruben\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"usQrV70kr_GYe_ql9BLkZxzCq6ApJz7OM4CaQGH8CgjwhkQh7GiaiNoNicS2Ja8WV4PpzGwVWap6te4XILNFJQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2039, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:03:31', '{\"nombre\":\"Rub\\u00e9n\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"usQrV70kr_GYe_ql9BLkZxzCq6ApJz7OM4CaQGH8CgjwhkQh7GiaiNoNicS2Ja8WV4PpzGwVWap6te4XILNFJQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2040, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:03:33', '{\"nombre\":\"Rub\\u00e9n\",\"apellido_paterno\":\"Ruiz\",\"apellido_materno\":\"\",\"_csrf\":\"usQrV70kr_GYe_ql9BLkZxzCq6ApJz7OM4CaQGH8CgjwhkQh7GiaiNoNicS2Ja8WV4PpzGwVWap6te4XILNFJQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2041, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:03:36', '{\"nombre\":\"Rub\\u00e9n\",\"apellido_paterno\":\"Ruiz\",\"apellido_materno\":\"Calvillo\",\"_csrf\":\"usQrV70kr_GYe_ql9BLkZxzCq6ApJz7OM4CaQGH8CgjwhkQh7GiaiNoNicS2Ja8WV4PpzGwVWap6te4XILNFJQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2042, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:03:43', '{\"_csrf\":\"usQrV70kr_GYe_ql9BLkZxzCq6ApJz7OM4CaQGH8CgjwhkQh7GiaiNoNicS2Ja8WV4PpzGwVWap6te4XILNFJQ==\",\"Asistente\":{\"nombre\":\"Rub\\u00e9n\",\"apellido_paterno\":\"Ruiz\",\"apellido_materno\":\"Calvillo\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2043, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:03:44', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113100\"}'),
(2044, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:03:45', '{\"r\":\"admin\\/asistentes\"}'),
(2045, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:03:55', '{\"r\":\"admin\\/asistentecreate\"}'),
(2046, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:03:58', '{\"nombre\":\"Esteban\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"sOUmhGsaYHoqiodaYgzK1rMK3icR7jpfXzsHZQbWdmb6p0nyOlZVA2j89DsgO4Gn-EucS1TcXTsWDnMyR5k5Sw==\",\"r\":\"admin\\/getasistentes\"}'),
(2047, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:04:02', '{\"nombre\":\"Esteban\",\"apellido_paterno\":\"Monsivais\",\"apellido_materno\":\"\",\"_csrf\":\"sOUmhGsaYHoqiodaYgzK1rMK3icR7jpfXzsHZQbWdmb6p0nyOlZVA2j89DsgO4Gn-EucS1TcXTsWDnMyR5k5Sw==\",\"r\":\"admin\\/getasistentes\"}'),
(2048, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:04:07', '{\"nombre\":\"Esteban\",\"apellido_paterno\":\"Monsivais\",\"apellido_materno\":\"Rangel\",\"_csrf\":\"sOUmhGsaYHoqiodaYgzK1rMK3icR7jpfXzsHZQbWdmb6p0nyOlZVA2j89DsgO4Gn-EucS1TcXTsWDnMyR5k5Sw==\",\"r\":\"admin\\/getasistentes\"}'),
(2049, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:04:17', '{\"_csrf\":\"sOUmhGsaYHoqiodaYgzK1rMK3icR7jpfXzsHZQbWdmb6p0nyOlZVA2j89DsgO4Gn-EucS1TcXTsWDnMyR5k5Sw==\",\"Asistente\":{\"nombre\":\"Esteban\",\"apellido_paterno\":\"Monsivais\",\"apellido_materno\":\"Rangel\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2050, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:04:18', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113101\"}'),
(2051, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:04:19', '{\"r\":\"admin\\/asistentes\"}'),
(2052, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:04:28', '{\"r\":\"admin\\/asistentecreate\"}'),
(2053, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:04:33', '{\"nombre\":\"Osvaldo\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"Al5McfShrMusxNDsSgetZAVArd0TpdLIr3gu3kJihbxIHCMHpe2Zsu6yo40IMOYVTgHvsVaXtazmTVqJAy3KkQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2054, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:04:35', '{\"nombre\":\"Osvaldo\",\"apellido_paterno\":\"Lugo\",\"apellido_materno\":\"\",\"_csrf\":\"Al5McfShrMusxNDsSgetZAVArd0TpdLIr3gu3kJihbxIHCMHpe2Zsu6yo40IMOYVTgHvsVaXtazmTVqJAy3KkQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2055, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:04:39', '{\"nombre\":\"Osvaldo\",\"apellido_paterno\":\"Lugo\",\"apellido_materno\":\"Ruiz\",\"_csrf\":\"Al5McfShrMusxNDsSgetZAVArd0TpdLIr3gu3kJihbxIHCMHpe2Zsu6yo40IMOYVTgHvsVaXtazmTVqJAy3KkQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2056, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:04:47', '{\"_csrf\":\"Al5McfShrMusxNDsSgetZAVArd0TpdLIr3gu3kJihbxIHCMHpe2Zsu6yo40IMOYVTgHvsVaXtazmTVqJAy3KkQ==\",\"Asistente\":{\"nombre\":\"Osvaldo\",\"apellido_paterno\":\"Lugo\",\"apellido_materno\":\"Ruiz\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2057, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:04:48', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113102\"}'),
(2058, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 18:04:49', '{\"r\":\"admin\\/datagraphs\"}'),
(2059, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:04:57', '{\"r\":\"admin\\/asistentes\"}'),
(2060, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:04:59', '{\"r\":\"admin\\/asistentecreate\"}'),
(2061, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:05:09', '{\"nombre\":\"Rub\\u00e9n\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"LZf71FCUgAaETsl-VBpsIg3rqYAZmRfMDac0Xt89chhn1ZSiAdi1f8Y4uh8WLSdTRqrr7FyrcKhEkkAJnnI9NQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2062, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:05:13', '{\"nombre\":\"Rub\\u00e9n\",\"apellido_paterno\":\"Garc\\u00eda\",\"apellido_materno\":\"\",\"_csrf\":\"LZf71FCUgAaETsl-VBpsIg3rqYAZmRfMDac0Xt89chhn1ZSiAdi1f8Y4uh8WLSdTRqrr7FyrcKhEkkAJnnI9NQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2063, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:05:18', '{\"nombre\":\"Rub\\u00e9n\",\"apellido_paterno\":\"Garc\\u00eda\",\"apellido_materno\":\"Gonz\\u00e1lez\",\"_csrf\":\"LZf71FCUgAaETsl-VBpsIg3rqYAZmRfMDac0Xt89chhn1ZSiAdi1f8Y4uh8WLSdTRqrr7FyrcKhEkkAJnnI9NQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2064, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:05:26', '{\"_csrf\":\"LZf71FCUgAaETsl-VBpsIg3rqYAZmRfMDac0Xt89chhn1ZSiAdi1f8Y4uh8WLSdTRqrr7FyrcKhEkkAJnnI9NQ==\",\"Asistente\":{\"nombre\":\"Rub\\u00e9n\",\"apellido_paterno\":\"Garc\\u00eda\",\"apellido_materno\":\"Gonz\\u00e1lez\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2065, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:05:26', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113103\"}'),
(2066, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:06:15', '{\"r\":\"admin\\/asistentes\"}'),
(2067, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:06:17', '{\"r\":\"admin\\/asistentecreate\"}'),
(2068, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:06:21', '{\"nombre\":\"Francisco\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"puGCFyLFqyqmXCpC8KJGY4o8KHTmRm6RsDL1nqzkwsfso-1hc4meU-QqWSOylQ0SwX1qGKN0CfX5B4HJ7auN6g==\",\"r\":\"admin\\/getasistentes\"}'),
(2069, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:06:23', '{\"nombre\":\"Francisco\",\"apellido_paterno\":\"F\\u00e9liz\",\"apellido_materno\":\"\",\"_csrf\":\"puGCFyLFqyqmXCpC8KJGY4o8KHTmRm6RsDL1nqzkwsfso-1hc4meU-QqWSOylQ0SwX1qGKN0CfX5B4HJ7auN6g==\",\"r\":\"admin\\/getasistentes\"}'),
(2070, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:06:28', '{\"nombre\":\"Francisco\",\"apellido_paterno\":\"F\\u00e9liz\",\"apellido_materno\":\"Barrios\",\"_csrf\":\"puGCFyLFqyqmXCpC8KJGY4o8KHTmRm6RsDL1nqzkwsfso-1hc4meU-QqWSOylQ0SwX1qGKN0CfX5B4HJ7auN6g==\",\"r\":\"admin\\/getasistentes\"}'),
(2071, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:06:37', '{\"_csrf\":\"puGCFyLFqyqmXCpC8KJGY4o8KHTmRm6RsDL1nqzkwsfso-1hc4meU-QqWSOylQ0SwX1qGKN0CfX5B4HJ7auN6g==\",\"Asistente\":{\"nombre\":\"Francisco\",\"apellido_paterno\":\"F\\u00e9liz\",\"apellido_materno\":\"Barrios\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2072, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:06:37', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113104\"}'),
(2073, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:06:39', '{\"r\":\"admin\\/asistentes\"}'),
(2074, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:06:51', '{\"r\":\"admin\\/asistentecreate\"}'),
(2075, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:06:59', '{\"nombre\":\"Jos\\u00e9 Guillermo\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"Ohe-Z9iBpdlRzhegt7K62952YBdvChABCyiP5zV1UL1wVdERic2QoBO4ZMH1hfGqlTcieyo4d2VCHfuwdDofkA==\",\"r\":\"admin\\/getasistentes\"}'),
(2076, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:07:00', '{\"nombre\":\"Jos\\u00e9 Guillermo\",\"apellido_paterno\":\"Pacheco\",\"apellido_materno\":\"\",\"_csrf\":\"Ohe-Z9iBpdlRzhegt7K62952YBdvChABCyiP5zV1UL1wVdERic2QoBO4ZMH1hfGqlTcieyo4d2VCHfuwdDofkA==\",\"r\":\"admin\\/getasistentes\"}'),
(2077, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:07:04', '{\"nombre\":\"Jos\\u00e9 Guillermo\",\"apellido_paterno\":\"Pacheco\",\"apellido_materno\":\"Gonz\\u00e1lez\",\"_csrf\":\"Ohe-Z9iBpdlRzhegt7K62952YBdvChABCyiP5zV1UL1wVdERic2QoBO4ZMH1hfGqlTcieyo4d2VCHfuwdDofkA==\",\"r\":\"admin\\/getasistentes\"}'),
(2078, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:07:13', '{\"_csrf\":\"Ohe-Z9iBpdlRzhegt7K62952YBdvChABCyiP5zV1UL1wVdERic2QoBO4ZMH1hfGqlTcieyo4d2VCHfuwdDofkA==\",\"Asistente\":{\"nombre\":\"Jos\\u00e9 Guillermo\",\"apellido_paterno\":\"Pacheco\",\"apellido_materno\":\"Gonz\\u00e1lez\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2079, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:07:13', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113105\"}'),
(2080, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:07:15', '{\"r\":\"admin\\/asistentes\"}'),
(2081, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:07:25', '{\"r\":\"admin\\/asistentecreate\"}'),
(2082, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:07:30', '{\"nombre\":\"Carlos Alberto\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"HFm2A8Fy6HAL2C8hweCF_nHb7qzokLloTbH9om5A2odWG9l1kD7dCUmuXECD186POpqswK2i3gwEhIn1Lw-Vqg==\",\"r\":\"admin\\/getasistentes\"}'),
(2083, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:07:32', '{\"nombre\":\"Carlos Alberto\",\"apellido_paterno\":\"Femat\",\"apellido_materno\":\"\",\"_csrf\":\"HFm2A8Fy6HAL2C8hweCF_nHb7qzokLloTbH9om5A2odWG9l1kD7dCUmuXECD186POpqswK2i3gwEhIn1Lw-Vqg==\",\"r\":\"admin\\/getasistentes\"}'),
(2084, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:07:35', '{\"nombre\":\"Carlos Alberto\",\"apellido_paterno\":\"Femat\",\"apellido_materno\":\"Mart\\u00ednez\",\"_csrf\":\"HFm2A8Fy6HAL2C8hweCF_nHb7qzokLloTbH9om5A2odWG9l1kD7dCUmuXECD186POpqswK2i3gwEhIn1Lw-Vqg==\",\"r\":\"admin\\/getasistentes\"}'),
(2085, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:07:45', '{\"_csrf\":\"HFm2A8Fy6HAL2C8hweCF_nHb7qzokLloTbH9om5A2odWG9l1kD7dCUmuXECD186POpqswK2i3gwEhIn1Lw-Vqg==\",\"Asistente\":{\"nombre\":\"Carlos Alberto\",\"apellido_paterno\":\"Femat\",\"apellido_materno\":\"Mart\\u00ednez\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2086, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:07:45', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113106\"}'),
(2087, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:07:47', '{\"r\":\"admin\\/asistentes\"}'),
(2088, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:07:57', '{\"r\":\"admin\\/asistentecreate\"}'),
(2089, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:08:02', '{\"nombre\":\"Jos\\u00e9 Eduardo\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"E8ev-Vl5g8ccOOl3HRW0N2VTobqPYYnUXuVJrFRlXKFZhcCPCDW2vl5OmhZfIv9GLhLj1spT7rAX0D37FSoTjA==\",\"r\":\"admin\\/getasistentes\"}'),
(2090, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:08:05', '{\"nombre\":\"Jos\\u00e9 Eduardo\",\"apellido_paterno\":\"Venegas\",\"apellido_materno\":\"\",\"_csrf\":\"E8ev-Vl5g8ccOOl3HRW0N2VTobqPYYnUXuVJrFRlXKFZhcCPCDW2vl5OmhZfIv9GLhLj1spT7rAX0D37FSoTjA==\",\"r\":\"admin\\/getasistentes\"}'),
(2091, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:08:11', '{\"nombre\":\"Jos\\u00e9 Eduardo\",\"apellido_paterno\":\"Venegas\",\"apellido_materno\":\"Pacheco\",\"_csrf\":\"E8ev-Vl5g8ccOOl3HRW0N2VTobqPYYnUXuVJrFRlXKFZhcCPCDW2vl5OmhZfIv9GLhLj1spT7rAX0D37FSoTjA==\",\"r\":\"admin\\/getasistentes\"}'),
(2092, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:08:20', '{\"_csrf\":\"E8ev-Vl5g8ccOOl3HRW0N2VTobqPYYnUXuVJrFRlXKFZhcCPCDW2vl5OmhZfIv9GLhLj1spT7rAX0D37FSoTjA==\",\"Asistente\":{\"nombre\":\"Jos\\u00e9 Eduardo\",\"apellido_paterno\":\"Venegas\",\"apellido_materno\":\"Pacheco\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2093, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:08:20', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113107\"}'),
(2094, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:08:22', '{\"r\":\"admin\\/asistentes\"}'),
(2095, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:08:31', '{\"r\":\"admin\\/asistentecreate\"}'),
(2096, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:08:36', '{\"nombre\":\"Francisco\",\"apellido_paterno\":\"\",\"apellido_materno\":\"\",\"_csrf\":\"IpsYRayG1ZRpxg_o_bVCq9J32ySELAgEeDtVLet8SRho2Xcz_crg7SuwfIm_ggnamTaZSMEeb2AxDiF6qjMGNQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2097, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:08:42', '{\"nombre\":\"Francisco\",\"apellido_paterno\":\"Gayt\\u00e1n\",\"apellido_materno\":\"\",\"_csrf\":\"IpsYRayG1ZRpxg_o_bVCq9J32ySELAgEeDtVLet8SRho2Xcz_crg7SuwfIm_ggnamTaZSMEeb2AxDiF6qjMGNQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2098, 'saul', 'basic', 'admin', 'getasistentes', '2020-11-05 18:08:46', '{\"nombre\":\"Francisco\",\"apellido_paterno\":\"Gayt\\u00e1n\",\"apellido_materno\":\"Robles\",\"_csrf\":\"IpsYRayG1ZRpxg_o_bVCq9J32ySELAgEeDtVLet8SRho2Xcz_crg7SuwfIm_ggnamTaZSMEeb2AxDiF6qjMGNQ==\",\"r\":\"admin\\/getasistentes\"}'),
(2099, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 18:08:56', '{\"_csrf\":\"IpsYRayG1ZRpxg_o_bVCq9J32ySELAgEeDtVLet8SRho2Xcz_crg7SuwfIm_ggnamTaZSMEeb2AxDiF6qjMGNQ==\",\"Asistente\":{\"nombre\":\"Francisco\",\"apellido_paterno\":\"Gayt\\u00e1n\",\"apellido_materno\":\"Robles\",\"sexo\":\"H\",\"folio\":\"\",\"imputado\":\"0\",\"numero_de_causa\":\"\",\"municipio\":\"\",\"supervisor\":\"\",\"numero_de_telefono\":\"\",\"fecha_de_canalizacion\":\"\",\"fecha_de_entrevista\":\"\",\"notas_psicologicas\":\"\",\"observaciones\":\"\",\"entrevista\":\"0\",\"suspendido\":\"0\",\"fecha_de_suspencion\":\"\"},\"r\":\"admin\\/asistentecreate\"}'),
(2100, 'saul', 'basic', 'admin', 'asistenteview', '2020-11-05 18:08:56', '{\"r\":\"admin\\/asistenteview\",\"id\":\"113108\"}'),
(2101, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 18:08:57', '{\"r\":\"admin\\/asistentes\"}'),
(2102, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 18:09:05', '{\"r\":\"admin\\/datagraphs\"}'),
(2103, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 18:48:43', '{\"r\":\"admin\\/datagraphs\"}'),
(2104, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 18:55:29', '{\"r\":\"admin\\/servicios\"}'),
(2105, 'saul', 'basic', 'admin', 'serviciocreate', '2020-11-05 18:55:32', '{\"r\":\"admin\\/serviciocreate\"}'),
(2106, 'saul', 'basic', 'admin', 'serviciocreate', '2020-11-05 18:55:42', '{\"_csrf\":\"H63aBlpAMZt-ooAUpru7FEu0w4FpUrBVj9-igOF3SslV77VwCwwE4jzU83XkjPBlAPWB7Sxg1zHG6tbXoDgF5A==\",\"Servicio\":{\"tipo_de_servicio_id\":\"1\",\"nombre\":\"20RM001\",\"cerrado\":\"0\"},\"r\":\"admin\\/serviciocreate\"}'),
(2107, 'saul', 'basic', 'admin', 'serviciocreatesteptwo', '2020-11-05 18:55:43', '{\"r\":\"admin\\/serviciocreatesteptwo\",\"id\":\"41432\"}'),
(2108, 'saul', 'basic', 'admin', 'serviciocreatesteptwo', '2020-11-05 18:56:09', '{\"_csrf\":\"u9u1ThAgQMObVPQY5jGRMS-GP3xWhaXBfIwaHO6VqCjxmdo4QWx1utkih3mkBtpAZMd9EBO3wqU1uW5Lr9rnBQ==\",\"DetalleDeServicio\":{\"fecha_de_inicio\":\"2020-08-02\",\"fecha_de_cierre\":\"2020-12-11\",\"hora\":\"03:00\"},\"r\":\"admin\\/serviciocreatesteptwo\",\"id\":\"41432\"}'),
(2109, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:56:09', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2110, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 18:56:39', '{\"r\":\"admin\\/asistenteassign\",\"id\":\"41432\"}'),
(2111, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 18:57:04', '{\"_csrf\":\"7ED9iNEv7MBuUPmS2Hr40_HvsdBfEt14sCI4RRcmsCOmApL-gGPZuSwmivOaTbOiuq7zvBoguhz5F0wSVmn_Dg==\",\"asistente_id\":\"Sa\\u00fal Alonso Ibarra Luevano\",\"AsistenteDeServicio\":{\"asistente_id\":\"113047\",\"servicio_id\":\"41432\"},\"r\":\"admin\\/asistenteassign\",\"id\":\"41432\"}'),
(2112, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:57:04', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2113, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:15', '{\"r\":\"admin\\/sesionview\",\"id\":\"163\"}'),
(2114, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:17', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"163\"}'),
(2115, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:20', '{\"_csrf\":\"J8XM_e1rugnLS4R2x4Kb9NTFayQ7NwSzP4ahf1Il1oxth6OLvCePcIk99xeFtdCFn4QpSH4FY9d2s9UoE2qZoQ==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"163\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"163\"}'),
(2116, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:20', '{\"r\":\"admin\\/sesionview\",\"id\":\"163\"}'),
(2117, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:57:23', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2118, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:25', '{\"r\":\"admin\\/sesionview\",\"id\":\"164\"}'),
(2119, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:27', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"164\"}'),
(2120, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:29', '{\"_csrf\":\"Xljhin-hmU3s-emHltSDr8JNnurbm1E9RdQJe1iLq1kUGo78Lu2sNK6PmubU48jeiQzchp6pNlkM4X0sGcTkdA==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"164\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"164\"}'),
(2121, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:29', '{\"r\":\"admin\\/sesionview\",\"id\":\"164\"}'),
(2122, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:57:30', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2123, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:32', '{\"r\":\"admin\\/sesionview\",\"id\":\"165\"}'),
(2124, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:34', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"165\"}'),
(2125, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:36', '{\"_csrf\":\"MuWpqWvfbghzeDLrUz7DGZ60ZcLdLKN_qll8WswR_714p8bfOpNbcTEOQYoRCYho1fUnrpgexBvjbAgNjV6wkA==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"165\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"165\"}'),
(2126, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:36', '{\"r\":\"admin\\/sesionview\",\"id\":\"165\"}'),
(2127, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:57:37', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2128, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:39', '{\"r\":\"admin\\/sesionview\",\"id\":\"166\"}'),
(2129, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:41', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"166\"}'),
(2130, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:43', '{\"_csrf\":\"IRyiDMCW2u_9btD64vP-uPMdx_Doo8WQB_Wtx7wL4XBrXs16kdrvlr8Yo5ugxLXJuFyFnK2RovROwNmQ_USuXQ==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"166\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"166\"}'),
(2131, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:43', '{\"r\":\"admin\\/sesionview\",\"id\":\"166\"}'),
(2132, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:57:44', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2133, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:47', '{\"r\":\"admin\\/sesionview\",\"id\":\"167\"}'),
(2134, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:48', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"167\"}'),
(2135, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:50', '{\"_csrf\":\"2-esZHj4AKCyfRhMw54hPOSOQGZZqve6DxgkvsEHnIORpcMSKbQ12fALay2BqWpNr88CChyYkN5GLVDpgEjTrg==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"167\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"167\"}'),
(2136, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:50', '{\"r\":\"admin\\/sesionview\",\"id\":\"167\"}'),
(2137, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:57:51', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2138, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:54', '{\"r\":\"admin\\/sesionview\",\"id\":\"168\"}'),
(2139, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:55', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"168\"}'),
(2140, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:57:57', '{\"_csrf\":\"9gX4lNu87XToW3KpE8iZQdKSpDndyT1ziAwXoNS1K1S8R5fiivDYDaotAchR_9IwmdPmVZj7WhfBOWP3lfpkeQ==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"168\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"168\"}'),
(2141, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:57:58', '{\"r\":\"admin\\/sesionview\",\"id\":\"168\"}'),
(2142, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:58:00', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2143, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:03', '{\"r\":\"admin\\/sesionview\",\"id\":\"169\"}');
INSERT INTO `log` (`id`, `user`, `module`, `controller`, `method`, `time`, `data`) VALUES
(2144, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:05', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"169\"}'),
(2145, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:07', '{\"_csrf\":\"fNhpcVQ11dEchj516SIupj_Th33BWVUUs7a2YTkzXPo2mgYHBXngqF7wTRSrFWXXdJLFEYRrMnD6g8I2eHwT1w==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"169\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"169\"}'),
(2146, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:07', '{\"r\":\"admin\\/sesionview\",\"id\":\"169\"}'),
(2147, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:58:08', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2148, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:11', '{\"r\":\"admin\\/sesionview\",\"id\":\"170\"}'),
(2149, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:13', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"170\"}'),
(2150, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:14', '{\"_csrf\":\"bjOPsdlx_NOFyW2r-FqkBTG4-d-04PsLUrBgX1rbTDokceDHiD3Jqse_Hsq6be90evm7s_HSnG8bhRQIG5QDFw==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"170\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"170\"}'),
(2151, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:15', '{\"r\":\"admin\\/sesionview\",\"id\":\"170\"}'),
(2152, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:58:16', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2153, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:19', '{\"r\":\"admin\\/sesionview\",\"id\":\"171\"}'),
(2154, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:23', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"171\"}'),
(2155, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:26', '{\"_csrf\":\"MN8MVmCuIKyPwGCDTSMcd58gw-dppWPElmchO6lb4MF6nWMgMeIV1c22E-IPFFcG1GGBiyyXBKDfUlVs6BSv7A==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"171\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"171\"}'),
(2156, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:26', '{\"r\":\"admin\\/sesionview\",\"id\":\"171\"}'),
(2157, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:58:29', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2158, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:32', '{\"r\":\"admin\\/sesionview\",\"id\":\"172\"}'),
(2159, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:34', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"172\"}'),
(2160, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:36', '{\"_csrf\":\"ovshCsuxlAPJQJfvXkxTCq4EReQA7On7ay8jx2OlhaLouU58mv2heos25I4cexh75UUHiEXejp8iGleQIurKjw==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"172\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"172\"}'),
(2161, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:36', '{\"r\":\"admin\\/sesionview\",\"id\":\"172\"}'),
(2162, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:58:37', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2163, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:58:39', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\",\"page\":\"2\",\"per-page\":\"10\"}'),
(2164, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:42', '{\"r\":\"admin\\/sesionview\",\"id\":\"173\"}'),
(2165, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:43', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"173\"}'),
(2166, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:45', '{\"_csrf\":\"oM42Nkq9w_TLzhJ0hQZdZwt0-fPOYtz1y_fKKfBt9fHqjFlAG_H2jYm4YRXHMRYWQDW7n4tQu5GCwr5-sSK63A==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"173\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"173\"}'),
(2167, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:46', '{\"r\":\"admin\\/sesionview\",\"id\":\"173\"}'),
(2168, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:58:48', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2169, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:58:51', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\",\"page\":\"2\",\"per-page\":\"10\"}'),
(2170, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:54', '{\"r\":\"admin\\/sesionview\",\"id\":\"174\"}'),
(2171, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:56', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"174\"}'),
(2172, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:58:58', '{\"_csrf\":\"ZSPjzTc77MBwKDKfAc6NPrZJfaAGF3e8a3eZkJDmPg0vYYy7ZnfZuTJeQf5D-cZP_Qg_zEMlENgiQu3H0alxIA==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"174\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"174\"}'),
(2173, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:58:58', '{\"r\":\"admin\\/sesionview\",\"id\":\"174\"}'),
(2174, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:58:59', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2175, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:59:02', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\",\"page\":\"2\",\"per-page\":\"10\"}'),
(2176, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:59:06', '{\"r\":\"admin\\/sesionview\",\"id\":\"175\"}'),
(2177, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:59:07', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"175\"}'),
(2178, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:59:09', '{\"_csrf\":\"sIg9tL9yeGIoUfPiYJIJph6G-lBmkJVWiymMcoQB86r6ylLC7j5NG2ongIMipULXVce4PCOi8jLCHPglxU68hw==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"175\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"175\"}'),
(2179, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:59:09', '{\"r\":\"admin\\/sesionview\",\"id\":\"175\"}'),
(2180, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:59:10', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2181, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:59:12', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\",\"page\":\"2\",\"per-page\":\"10\"}'),
(2182, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:59:15', '{\"r\":\"admin\\/sesionview\",\"id\":\"176\"}'),
(2183, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:59:16', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"176\"}'),
(2184, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:59:18', '{\"_csrf\":\"bxTdstFX3Hqh3n61IDpQRDtAkfCjVe8QTUoiVYPhmBolVrLEgBvpA-OoDdRiDRs1cAHTnOZniHQEf1YCwq7XNw==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"176\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"176\"}'),
(2185, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:59:18', '{\"r\":\"admin\\/sesionview\",\"id\":\"176\"}'),
(2186, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:59:20', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"176\"}'),
(2187, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:59:21', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2188, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:59:24', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\",\"page\":\"2\",\"per-page\":\"10\"}'),
(2189, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:59:26', '{\"r\":\"admin\\/sesionview\",\"id\":\"177\"}'),
(2190, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:59:28', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"177\"}'),
(2191, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 18:59:29', '{\"_csrf\":\"hMMkeIl2RV5wskPWjgPbuRXtOu8nfpWYxmhmGitrRvPOgUsO2DpwJzLEMLfMNJDIXqx4g2JM8vyPXRJNaiQJ3g==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"177\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"177\"}'),
(2192, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 18:59:30', '{\"r\":\"admin\\/sesionview\",\"id\":\"177\"}'),
(2193, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 18:59:33', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2194, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:29:47', '{\"r\":\"admin\\/datagraphs\"}'),
(2195, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:30:08', '{\"r\":\"admin\\/datagraphs\"}'),
(2196, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:30:15', '{\"r\":\"admin\\/datagraphs\"}'),
(2197, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:30:36', '{\"r\":\"admin\\/datagraphs\"}'),
(2198, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 19:31:18', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2199, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:31:20', '{\"r\":\"admin\\/datagraphs\"}'),
(2200, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:32:00', '{\"r\":\"admin\\/datagraphs\"}'),
(2201, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:32:18', '{\"r\":\"admin\\/datagraphs\"}'),
(2202, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:33:44', '{\"r\":\"admin\\/datagraphs\"}'),
(2203, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:35:00', '{\"r\":\"admin\\/datagraphs\"}'),
(2204, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:35:13', '{\"r\":\"admin\\/datagraphs\"}'),
(2205, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:37:41', '{\"r\":\"admin\\/datagraphs\"}'),
(2206, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:38:07', '{\"r\":\"admin\\/datagraphs\"}'),
(2207, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:38:48', '{\"r\":\"admin\\/datagraphs\"}'),
(2208, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:39:11', '{\"r\":\"admin\\/datagraphs\"}'),
(2209, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:39:55', '{\"r\":\"admin\\/datagraphs\"}'),
(2210, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:40:23', '{\"r\":\"admin\\/datagraphs\"}'),
(2211, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:40:37', '{\"r\":\"admin\\/datagraphs\"}'),
(2212, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:41:32', '{\"r\":\"admin\\/datagraphs\"}'),
(2213, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:41:42', '{\"r\":\"admin\\/datagraphs\"}'),
(2214, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:46:51', '{\"r\":\"admin\\/datagraphs\"}'),
(2215, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:50:40', '{\"r\":\"admin\\/datagraphs\"}'),
(2216, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:50:51', '{\"r\":\"admin\\/datagraphs\"}'),
(2217, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:52:31', '{\"r\":\"admin\\/datagraphs\"}'),
(2218, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:52:55', '{\"r\":\"admin\\/datagraphs\"}'),
(2219, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:53:43', '{\"r\":\"admin\\/datagraphs\"}'),
(2220, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:54:35', '{\"r\":\"admin\\/datagraphs\"}'),
(2221, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:55:09', '{\"r\":\"admin\\/datagraphs\"}'),
(2222, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:55:53', '{\"r\":\"admin\\/datagraphs\"}'),
(2223, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 19:59:37', '{\"r\":\"admin\\/datagraphs\"}'),
(2224, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:00:46', '{\"r\":\"admin\\/datagraphs\"}'),
(2225, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:01:24', '{\"r\":\"admin\\/datagraphs\"}'),
(2226, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:02:27', '{\"r\":\"admin\\/datagraphs\"}'),
(2227, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:03:18', '{\"r\":\"admin\\/datagraphs\"}'),
(2228, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:04:53', '{\"r\":\"admin\\/datagraphs\"}'),
(2229, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:05:46', '{\"r\":\"admin\\/datagraphs\"}'),
(2230, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:05:53', '{\"r\":\"admin\\/datagraphs\"}'),
(2231, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:06:25', '{\"r\":\"admin\\/datagraphs\"}'),
(2232, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:09:10', '{\"r\":\"admin\\/datagraphs\"}'),
(2233, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:09:25', '{\"r\":\"admin\\/datagraphs\"}'),
(2234, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:09:45', '{\"r\":\"admin\\/datagraphs\"}'),
(2235, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:10:22', '{\"r\":\"admin\\/datagraphs\"}'),
(2236, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:10:53', '{\"r\":\"admin\\/datagraphs\"}'),
(2237, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:12:14', '{\"r\":\"admin\\/datagraphs\"}'),
(2238, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:14:35', '{\"r\":\"admin\\/datagraphs\"}'),
(2239, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:14:46', '{\"r\":\"admin\\/datagraphs\"}'),
(2240, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:14:57', '{\"r\":\"admin\\/datagraphs\"}'),
(2241, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:15:12', '{\"r\":\"admin\\/datagraphs\"}'),
(2242, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:15:21', '{\"r\":\"admin\\/datagraphs\"}'),
(2243, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:15:37', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\",\"page\":\"2\",\"per-page\":\"10\"}'),
(2244, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:15:43', '{\"r\":\"admin\\/sesionview\",\"id\":\"178\"}'),
(2245, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:15:45', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"178\"}'),
(2246, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:15:47', '{\"_csrf\":\"dWZphCxSfEWZw28AddipjtViSfroisUktvSgSh4cksY_JAbyfR5JPNu1HGE37-L_niMLlq24okD_wdQdX1Pd6w==\",\"Asistencia\":{\"asistente_id\":\"113047\",\"observaciones\":\"\",\"sesion_id\":\"178\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"178\"}'),
(2247, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:15:47', '{\"r\":\"admin\\/sesionview\",\"id\":\"178\"}'),
(2248, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:15:53', '{\"r\":\"admin\\/datagraphs\"}'),
(2249, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:19:49', '{\"r\":\"admin\\/datagraphs\"}'),
(2250, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:19:59', '{\"r\":\"admin\\/datagraphs\"}'),
(2251, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:20:20', '{\"r\":\"admin\\/datagraphs\"}'),
(2252, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 20:25:43', '{\"r\":\"admin\\/servicios\"}'),
(2253, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:25:45', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2254, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 20:25:48', '{\"r\":\"admin\\/asistenteassign\",\"id\":\"41432\"}'),
(2255, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 20:26:01', '{\"_csrf\":\"soWw07arHvV1N_Aa0QgESsTJbV4lE72m_LiFwWQrwun4x9-l5-crjDdBg3uTP087j4gvMmAh2sK1jfGWJWSNxA==\",\"asistente_id\":\"Maria Auxilio Gonz\\u00e1lez Medrano\",\"AsistenteDeServicio\":{\"asistente_id\":\"113048\",\"servicio_id\":\"41432\"},\"r\":\"admin\\/asistenteassign\",\"id\":\"41432\"}'),
(2256, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:26:01', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2257, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 20:26:14', '{\"r\":\"admin\\/servicios\"}'),
(2258, 'saul', 'basic', 'admin', 'serviciocreate', '2020-11-05 20:26:15', '{\"r\":\"admin\\/serviciocreate\"}'),
(2259, 'saul', 'basic', 'admin', 'serviciocreate', '2020-11-05 20:26:25', '{\"_csrf\":\"A4_8YlCg1joVsre6JVvQOyidRBjDbmmhB_jLo7c16otJzZMUAezjQ1fExNtnbJtKY9wGdIZcDsVOzb_09nqlpg==\",\"Servicio\":{\"tipo_de_servicio_id\":\"1\",\"nombre\":\"20RM002\",\"cerrado\":\"0\"},\"r\":\"admin\\/serviciocreate\"}'),
(2260, 'saul', 'basic', 'admin', 'serviciocreatesteptwo', '2020-11-05 20:26:26', '{\"r\":\"admin\\/serviciocreatesteptwo\",\"id\":\"41433\"}'),
(2261, 'saul', 'basic', 'admin', 'serviciocreatesteptwo', '2020-11-05 20:26:44', '{\"_csrf\":\"zjKo8Qf6XmbGK6ANcT_Mw2qt8BNcL8bAbi-vSmkHJTqEcMeHVrZrH4Rd02wzCIeyIeyyfxkdoaQnGtsdKEhqFw==\",\"DetalleDeServicio\":{\"fecha_de_inicio\":\"2021-01-04\",\"fecha_de_cierre\":\"2021-07-23\",\"hora\":\"15:00\"},\"r\":\"admin\\/serviciocreatesteptwo\",\"id\":\"41433\"}'),
(2262, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:26:44', '{\"r\":\"admin\\/servicioview\",\"id\":\"41433\"}'),
(2263, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 20:26:49', '{\"r\":\"admin\\/asistenteassign\",\"id\":\"41433\"}'),
(2264, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 20:26:54', '{\"_csrf\":\"x6pdrzRO-NFtE7ZwcYAzU50gjUnxj6uIrY6rypd0ImWN6DLZZQLNqC9lxREzt3gi1mHPJbS9zOzku9-d1jttSA==\",\"asistente_id\":\"Maria Auxilio Gonz\\u00e1lez Medrano\",\"AsistenteDeServicio\":{\"asistente_id\":\"113048\",\"servicio_id\":\"41433\"},\"r\":\"admin\\/asistenteassign\",\"id\":\"41433\"}'),
(2265, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:26:55', '{\"r\":\"admin\\/servicioview\",\"id\":\"41433\"}'),
(2266, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 20:26:57', '{\"r\":\"admin\\/asistenteassign\",\"id\":\"41433\"}'),
(2267, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 20:27:13', '{\"_csrf\":\"ckvQ0DaiTKQXRC1nVKm8SS8n0TeCXW0RJPUYBSdPPUY4Cb-mZ-553VUyXgYWnvc4ZGaTW8dvCnVtwGxSZgByaw==\",\"asistente_id\":\"Maria Trinidad Caldera Carrillo\",\"AsistenteDeServicio\":{\"asistente_id\":\"113060\",\"servicio_id\":\"41433\"},\"r\":\"admin\\/asistenteassign\",\"id\":\"41433\"}'),
(2268, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:27:14', '{\"r\":\"admin\\/servicioview\",\"id\":\"41433\"}'),
(2269, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 20:27:18', '{\"r\":\"admin\\/servicios\"}'),
(2270, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:27:24', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2271, 'saul', 'basic', 'admin', 'asistentedelete', '2020-11-05 20:27:29', '{\"_csrf\":\"3ABXT1tiSwFw6z1Jdr_i9G_YViFf9riDtg85A8_Fs_eWQjg5Ci5-eDKdTig0iKmFJJkUTRrE3-f_Ok1Ujor82g==\",\"r\":\"admin\\/asistentedelete\",\"id\":\"18\"}'),
(2272, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:27:30', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2273, 'saul', 'basic', 'admin', 'servicioupdate', '2020-11-05 20:27:36', '{\"r\":\"admin\\/servicioupdate\",\"id\":\"41432\"}'),
(2274, 'saul', 'basic', 'admin', 'servicioupdate', '2020-11-05 20:27:42', '{\"_csrf\":\"N00bbVAd1wIc2xY8Nba2aWFjU7LMs_uDP3ooMUQ2qXp9D3QbAVHie16tZV13gf0YKiIR3omBnOd2T1xmBXnmVw==\",\"Servicio\":{\"tipo_de_servicio_id\":\"1\",\"nombre\":\"20RH001\",\"cerrado\":\"0\"},\"r\":\"admin\\/servicioupdate\",\"id\":\"41432\"}'),
(2275, 'saul', 'basic', 'admin', 'servicioupdatesteptwo', '2020-11-05 20:27:42', '{\"r\":\"admin\\/servicioupdatesteptwo\",\"id\":\"41432\"}'),
(2276, 'saul', 'basic', 'admin', 'servicioupdatesteptwo', '2020-11-05 20:27:44', '{\"_csrf\":\"1C1-k0dEy-BHLkSle5KJ43CsDynPZtMPCqKNWom3f9mebxHlFgj-mQVYN8Q5pcKSO-1NRYpUtGtDl_kNyPgw9A==\",\"DetalleDeServicio\":{\"fecha_de_inicio\":\"2020-08-02\",\"fecha_de_cierre\":\"2020-12-11\",\"hora\":\"03:00\"},\"r\":\"admin\\/servicioupdatesteptwo\",\"id\":\"41432\"}'),
(2277, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:27:44', '{\"r\":\"admin\\/servicioview\",\"id\":\"41432\"}'),
(2278, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 20:27:46', '{\"r\":\"admin\\/servicios\"}'),
(2279, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 20:29:41', '{\"r\":\"admin\\/asistentes\"}'),
(2280, 'saul', 'basic', 'admin', 'asistentecreate', '2020-11-05 20:29:42', '{\"r\":\"admin\\/asistentecreate\"}'),
(2281, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 20:29:51', '{\"r\":\"admin\\/servicios\"}'),
(2282, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:35:50', '{\"r\":\"admin\\/datagraphs\"}'),
(2283, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:36:18', '{\"r\":\"admin\\/datagraphs\"}'),
(2284, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:40:06', '{\"r\":\"admin\\/datagraphs\"}'),
(2285, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:40:45', '{\"r\":\"admin\\/datagraphs\"}'),
(2286, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:41:04', '{\"r\":\"admin\\/datagraphs\"}'),
(2287, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:42:33', '{\"r\":\"admin\\/datagraphs\"}'),
(2288, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:42:41', '{\"r\":\"admin\\/servicioview\",\"id\":\"41433\"}'),
(2289, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:43:22', '{\"r\":\"admin\\/datagraphs\"}'),
(2290, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:43:38', '{\"r\":\"admin\\/datagraphs\"}'),
(2291, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 20:43:50', '{\"r\":\"admin\\/servicios\"}'),
(2292, 'saul', 'basic', 'admin', 'serviciocreate', '2020-11-05 20:43:52', '{\"r\":\"admin\\/serviciocreate\"}'),
(2293, 'saul', 'basic', 'admin', 'serviciocreate', '2020-11-05 20:44:04', '{\"_csrf\":\"IpcnY7PjS-3Y82kTKc-FtwtL0I6bAsQp5IYA7ZoWCyZo1UgV4q9-lJqFGnJr-M7GQAqS4t4wo02ts3S621lECw==\",\"Servicio\":{\"tipo_de_servicio_id\":\"1\",\"nombre\":\"20RM003\",\"cerrado\":\"0\"},\"r\":\"admin\\/serviciocreate\"}'),
(2294, 'saul', 'basic', 'admin', 'serviciocreatesteptwo', '2020-11-05 20:44:04', '{\"r\":\"admin\\/serviciocreatesteptwo\",\"id\":\"41434\"}'),
(2295, 'saul', 'basic', 'admin', 'serviciocreatesteptwo', '2020-11-05 20:44:21', '{\"_csrf\":\"0MROm5Sko1ZpOd6MrXp1tvnfxNEKwXc5CFLXxbe7AWuahiHtxeiWLytPre3vTT7Hsp6GvU_zEF1BZ6OS9vRORg==\",\"DetalleDeServicio\":{\"fecha_de_inicio\":\"2020-08-03\",\"fecha_de_cierre\":\"2020-12-18\",\"hora\":\"12:00\"},\"r\":\"admin\\/serviciocreatesteptwo\",\"id\":\"41434\"}'),
(2296, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:44:21', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2297, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 20:44:38', '{\"r\":\"admin\\/asistenteassign\",\"id\":\"41434\"}'),
(2298, 'saul', 'basic', 'admin', 'asistentes', '2020-11-05 20:44:42', '{\"r\":\"admin\\/asistentes\"}'),
(2299, 'saul', 'basic', 'admin', 'servicios', '2020-11-05 20:44:47', '{\"r\":\"admin\\/servicios\"}'),
(2300, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:44:52', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2301, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 20:44:56', '{\"r\":\"admin\\/asistenteassign\",\"id\":\"41434\"}'),
(2302, 'saul', 'basic', 'admin', 'asistenteassign', '2020-11-05 20:45:01', '{\"_csrf\":\"nPB4-Qj1t_wf-DQE3qdb4j6cjYuD3Lj1gHwW7dzRc23WshePWbmChV2OR2WckBCTdd3P58bu35HJSWK6nZ48QA==\",\"asistente_id\":\"Cirila Santana Mart\\u00ednez\",\"AsistenteDeServicio\":{\"asistente_id\":\"113064\",\"servicio_id\":\"41434\"},\"r\":\"admin\\/asistenteassign\",\"id\":\"41434\"}'),
(2303, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:45:01', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2304, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:45:12', '{\"r\":\"admin\\/datagraphs\"}'),
(2305, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:45:39', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2306, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:47:45', '{\"r\":\"admin\\/datagraphs\"}'),
(2307, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:48:09', '{\"r\":\"admin\\/sesionview\",\"id\":\"213\"}'),
(2308, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:48:11', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"213\"}'),
(2309, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:48:13', '{\"_csrf\":\"_LHfz1yUblE68u1yCof293qR2k7LHaA1_cjh2T2Yt5S287C5DdhbKHiEnhNIsL2GMdCYIo4vx1G0_ZWOfNf4uQ==\",\"Asistencia\":{\"asistente_id\":\"113064\",\"observaciones\":\"\",\"sesion_id\":\"213\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"213\"}'),
(2310, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:48:13', '{\"r\":\"admin\\/sesionview\",\"id\":\"213\"}'),
(2311, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:48:15', '{\"r\":\"admin\\/datagraphs\"}'),
(2312, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:48:26', '{\"r\":\"admin\\/datagraphs\"}'),
(2313, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:48:35', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2314, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:48:38', '{\"r\":\"admin\\/sesionview\",\"id\":\"214\"}'),
(2315, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:48:39', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"214\"}'),
(2316, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:48:42', '{\"_csrf\":\"BOqHo9ItW-s3cFCwKEiyrE40l_FwgZh3yqomWMHfXfROqOjVg2FuknUGI9Fqf_ndBXXVnTWz_xODn1IPgJAS2Q==\",\"Asistencia\":{\"asistente_id\":\"113064\",\"observaciones\":\"\",\"sesion_id\":\"214\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"214\"}'),
(2317, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:48:43', '{\"r\":\"admin\\/sesionview\",\"id\":\"214\"}'),
(2318, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:48:45', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2319, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:48:46', '{\"r\":\"admin\\/datagraphs\"}'),
(2320, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:48:59', '{\"r\":\"admin\\/sesionview\",\"id\":\"220\"}'),
(2321, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:49:00', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"220\"}'),
(2322, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:49:02', '{\"_csrf\":\"8a32GLRoOTZcSnqsmFNd8h__CJkTZv9jkoV9bUiey-C775lu5SQMTx48Cc3aZBaDVL5K9VZUmAfbsAk6CdGEzQ==\",\"Asistencia\":{\"asistente_id\":\"113064\",\"observaciones\":\"\",\"sesion_id\":\"220\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"220\"}'),
(2323, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:49:03', '{\"r\":\"admin\\/sesionview\",\"id\":\"220\"}'),
(2324, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:49:04', '{\"r\":\"admin\\/datagraphs\"}'),
(2325, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:49:12', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2326, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:49:19', '{\"r\":\"admin\\/sesionview\",\"id\":\"221\"}'),
(2327, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:49:25', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"221\"}'),
(2328, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:49:28', '{\"_csrf\":\"q4McXmz3R0rkN48e5_BdmgrOgTZ3wtcEvtGQDdJ1FnXhwXMoPbtyM6ZB_H-lxxbrQY_DWjLwsGD35ORakzpZWA==\",\"Asistencia\":{\"asistente_id\":\"113064\",\"observaciones\":\"\",\"sesion_id\":\"221\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"221\"}'),
(2329, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:49:28', '{\"r\":\"admin\\/sesionview\",\"id\":\"221\"}'),
(2330, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:49:30', '{\"r\":\"admin\\/datagraphs\"}'),
(2331, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:49:36', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2332, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:49:41', '{\"r\":\"admin\\/sesionview\",\"id\":\"219\"}'),
(2333, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:49:43', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"219\"}'),
(2334, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:49:45', '{\"_csrf\":\"g-e6ILCRxseyBCPTxDr8wqPJtJvlEHNinJ__dTo14aDJpdVW4d3zvvByULKGDbez6Ij296AiFAbVqosie3qujQ==\",\"Asistencia\":{\"asistente_id\":\"113064\",\"observaciones\":\"\",\"sesion_id\":\"219\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"219\"}'),
(2335, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:49:45', '{\"r\":\"admin\\/sesionview\",\"id\":\"219\"}'),
(2336, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:57:16', '{\"r\":\"admin\\/sesionview\",\"id\":\"219\"}'),
(2337, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:57:23', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2338, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:57:30', '{\"r\":\"admin\\/sesionview\",\"id\":\"222\"}'),
(2339, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:57:32', '{\"r\":\"admin\\/asistenciacreate\",\"id\":\"222\"}'),
(2340, 'saul', 'basic', 'admin', 'asistenciacreate', '2020-11-05 20:57:35', '{\"_csrf\":\"1Ew1oKnbiVmiQ6gMGIMnaVxTwKtWH3xSMx58wyN4oAGeDlrW-Je8IOA1221atGwYFxKCxxMtGzZ6KwiUYjfvLA==\",\"Asistencia\":{\"asistente_id\":\"113064\",\"observaciones\":\"\",\"sesion_id\":\"222\"},\"r\":\"admin\\/asistenciacreate\",\"id\":\"222\"}'),
(2341, 'saul', 'basic', 'admin', 'sesionview', '2020-11-05 20:57:35', '{\"r\":\"admin\\/sesionview\",\"id\":\"222\"}'),
(2342, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-05 20:57:38', '{\"r\":\"admin\\/datagraphs\"}'),
(2343, 'saul', 'basic', 'admin', 'servicioview', '2020-11-05 20:57:49', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2344, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-06 14:28:35', '{\"r\":\"admin\\/datagraphs\"}'),
(2345, 'saul', 'basic', 'admin', 'servicioview', '2020-11-06 14:28:51', '{\"r\":\"admin\\/servicioview\",\"id\":\"41434\"}'),
(2346, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-06 14:32:55', '{\"r\":\"admin\\/datagraphs\"}'),
(2347, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-06 14:33:40', '{\"r\":\"admin\\/datagraphs\"}'),
(2348, 'saul', 'basic', 'admin', 'datagraphs', '2020-11-06 14:34:32', '{\"r\":\"admin\\/datagraphs\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int NOT NULL,
  `tipo_de_servicio_id` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cerrado` tinyint(1) NOT NULL,
  `fecha_de_cierre` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `tipo_de_servicio_id`, `nombre`, `created_at`, `cerrado`, `fecha_de_cierre`) VALUES
(41432, 1, '20RH001', '2020-11-05 18:55:42', 0, NULL),
(41433, 1, '20RM002', '2020-11-05 20:26:25', 0, NULL),
(41434, 1, '20RM003', '2020-11-05 20:44:04', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titulo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_de_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `servicio_id` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`id`, `created_at`, `titulo`, `fecha_de_registro`, `servicio_id`, `fecha`, `hora`) VALUES
(163, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-08-02', NULL),
(164, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-08-09', NULL),
(165, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-08-16', NULL),
(166, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-08-23', NULL),
(167, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-08-30', NULL),
(168, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-09-06', NULL),
(169, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-09-13', NULL),
(170, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-09-20', NULL),
(171, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-09-27', NULL),
(172, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-10-04', NULL),
(173, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-10-11', NULL),
(174, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-10-18', NULL),
(175, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-10-25', NULL),
(176, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-11-01', NULL),
(177, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-11-08', NULL),
(178, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-11-15', NULL),
(179, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-11-22', NULL),
(180, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-11-29', NULL),
(181, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-12-06', NULL),
(182, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-12-13', NULL),
(183, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-12-20', NULL),
(184, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2020-12-27', NULL),
(185, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2021-01-03', NULL),
(186, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2021-01-10', NULL),
(187, '2020-11-05 18:56:09', NULL, '2020-11-05 18:56:09', 41432, '2021-01-17', NULL),
(188, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-01-04', NULL),
(189, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-01-11', NULL),
(190, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-01-18', NULL),
(191, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-01-25', NULL),
(192, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-02-01', NULL),
(193, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-02-08', NULL),
(194, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-02-15', NULL),
(195, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-02-22', NULL),
(196, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-03-01', NULL),
(197, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-03-08', NULL),
(198, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-03-15', NULL),
(199, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-03-22', NULL),
(200, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-03-29', NULL),
(201, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-04-05', NULL),
(202, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-04-12', NULL),
(203, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-04-19', NULL),
(204, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-04-26', NULL),
(205, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-05-03', NULL),
(206, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-05-10', NULL),
(207, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-05-17', NULL),
(208, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-05-24', NULL),
(209, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-05-31', NULL),
(210, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-06-07', NULL),
(211, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-06-14', NULL),
(212, '2020-11-05 20:26:44', NULL, '2020-11-05 20:26:44', 41433, '2021-06-21', NULL),
(213, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-08-03', NULL),
(214, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-08-10', NULL),
(215, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-08-17', NULL),
(216, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-08-24', NULL),
(217, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-08-31', NULL),
(218, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-09-07', NULL),
(219, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-09-14', NULL),
(220, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-09-21', NULL),
(221, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-09-28', NULL),
(222, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-10-05', NULL),
(223, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-10-12', NULL),
(224, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-10-19', NULL),
(225, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-10-26', NULL),
(226, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-11-02', NULL),
(227, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-11-09', NULL),
(228, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-11-16', NULL),
(229, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-11-23', NULL),
(230, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-11-30', NULL),
(231, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-12-07', NULL),
(232, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-12-14', NULL),
(233, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-12-21', NULL),
(234, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2020-12-28', NULL),
(235, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2021-01-04', NULL),
(236, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2021-01-11', NULL),
(237, '2020-11-05 20:44:21', NULL, '2020-11-05 20:44:21', 41434, '2021-01-18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_de_servicios`
--

CREATE TABLE `tipos_de_servicios` (
  `id` int NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipos_de_servicios`
--

INSERT INTO `tipos_de_servicios` (`id`, `nombre`) VALUES
(1, 'Atención Grupal'),
(2, 'Atención individual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_paterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_materno` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ultimo_acceso` timestamp NULL DEFAULT NULL,
  `accessToken` varchar(65) COLLATE utf8_spanish_ci NOT NULL,
  `authKey` varchar(65) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `enabled`, `nombre`, `apellido_paterno`, `apellido_materno`, `ultimo_acceso`, `accessToken`, `authKey`, `created_at`) VALUES
(1, 'root', '$2y$13$Xz.PPrc6epcXw9NUhnHyIOu9qs/wgUv9iy4HAx5wIMdr2oc1f.7ly', 1, 'root', 'cepavif', '', '2020-11-04 00:20:45', '655541282e9c4846fc2335c3ce458e006c1ef246f0a0aa363cca9454e99a0cf3', 'b205127679875adf7ce784d0266ddf391b169afcdd76ea340e99781aebd8ff8a', '2020-11-03 18:17:07'),
(3, 'saul', '$2y$13$ABI64oaD8y0/UbC8AkCD4.p8wiYcTEM.YLWQtAWSM2fmOozoias.S', 1, 'Saúl Alonso', 'Ibarra', 'Luévano', '2020-11-05 02:27:59', '4c35ed1983752b892fb85e9f3672f3530b14450fc0ee0d7f0cf7a93a1d4eaa66', '26ff52065e59679da924d1140791e6fa31ffe87016cb755671a2f09de994be7e', '2020-10-25 23:00:31'),
(10, 'yolanda.campos', '$2y$13$Wf5FRV8qa2kL84lZg27zXu.my1fgN2zTqk1kC9KuRySfnInnBHGxu', 1, 'Yolanda', 'Campos', 'Calzada', NULL, '26e9b6d4421b0eb7c6c3881838341a3c83f818ee66fb5b7f9c53ce250bcabb9a', 'e9385e6604c0320139822294d10355f82d46e823391da76fee37a6f858bb964c', '2020-11-05 17:07:02'),
(11, 'abraham.ortiz', '$2y$13$tdhVmojQNFG282N/LNFqz.Cv/QulCsFVELyzKJr5IMGu9NjZ6a2Ty', 1, 'Abraham', 'Ortiz', 'Lara', NULL, '1d57b463be70e5d1f98c062c645af154d5fcac6a59137274d33923fee43c4b8c', '38d07b81b00e2bc4b4745df3606a2f745622e7c1ce28d0e6d835112aa982a9d8', '2020-11-05 17:07:45'),
(12, 'homero.ibarra', '$2y$13$YRe8obglLytqTxXlpG0oz.YjG6jWUAqZl04a53f9ddTcZcU1Kh9jC', 1, 'Homero', 'Ibarra', 'Méndez', NULL, '818a8335caaf65b81c530e37565f32ad74be1e6cc89b71c533b91a78c3ba49c0', 'bc82a95d93c01123ea5ee659c2c233256ee17ac85b0dcaefc9beb27e1602af06', '2020-11-05 17:08:36'),
(13, 'arturo.martinez', '$2y$13$XF6ZnFZ1HDjo7tblHD.lreNeiVGEKxzC5.JtPW9HC9z5DrhWhNfEq', 1, 'Arturo', 'Martínez', 'Murga', NULL, '0d28f14c117d3bde83394c1ca238459210da300e9b9e99ee2dfa424cb66796cf', 'fd37ffaf6411c60a4fbd5956442ac225cbe7fede98a5d7c2ae5b260ffc0dad09', '2020-11-05 17:09:22'),
(14, 'silvia.jara', '$2y$13$zd6vNiLSRvGVBm.X6FpWAOxrkFNxOL4h5oT7FR//pqwOYVuPUqNRS', 1, 'Silvia', 'Jara', 'Barrios', NULL, 'f4f1381fe6c024a72e2e6eaca4bf7dfbe410598c80cf67baa58619a9debd7cad', 'e20e02b6a32283745befc84f423ab65a734d8eb1faf9c8a45bbc9fbd994311e0', '2020-11-05 17:10:03'),
(15, 'evelia.gallegos', '$2y$13$7vL8Vbd3pyNGZjN8imCQWu.8/XPZdEZeTuX6SA26hyZioMqCeRMIW', 1, 'Evelia', 'Gallegos', 'Galaviz', NULL, 'e4efef1749fb1600a285567add5f539e6ea11a3d98995639eaef8cd2fbcb17c3', 'a6884678a8c6482989d9a3a23dfea4fefcaf1c5ec2a5a8d68bda5b73b1d99aae', '2020-11-05 17:11:16'),
(16, 'denise.valadez', '$2y$13$3pqxhMgL1E.OSHAw401LQO/nRBL.pE3SldRmy2p/OfktauqbjqvCe', 1, 'Denise del Carmen', 'Valadez', 'Escobedo', NULL, '5f2e2b8f24ed153a572d320055ee9d3bffc0a33f5cb8f89e9eb5b4f13ec1e8cc', '12a7995d9cd785ae7230a6069d74d812abc769e705b5b8f3d16a5678fff6c709', '2020-11-05 17:12:16'),
(17, 'miguel.bocanegra', '$2y$13$k/9sp0jAXaalDO2b6nm8nOObwh.aIL4Tp8VSzcd9DjoK6Utlktw6C', 1, 'Miguel Felipe', 'Bocanegra', 'Vargas', NULL, '2517891a50be36d1888c5286abe95e87af6428386429490beae413bf940bd20c', '51ada428d9f3e6d2abd2a5dc05a6079583bdab9c5a84900458fa29f9d6191a72', '2020-11-05 17:12:58'),
(18, 'niria.deavila', '$2y$13$AjBPPT1NKZpld81HjcGwieHgn8p1nvxj804S63/yhDfQyUTvnqX8e', 1, 'Niria Dennise', 'de Avila', 'de Santiago', NULL, '3e85ac5bfb123784ef35e3291b503983624037e21a3d7215e46f1231966b4434', 'ca1d5aa11741c75a6ad1e5f0ad00fdc3ccb44863af66464dd6c05d93694a8e13', '2020-11-05 17:13:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_servicios`
--

CREATE TABLE `users_servicios` (
  `user_id` int NOT NULL,
  `servicio_id` int NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_asistencias_de_sesion` (`asistente_id`,`sesion_id`),
  ADD KEY `fk_asistencias_sesiones` (`sesion_id`);

--
-- Indices de la tabla `asistentes`
--
ALTER TABLE `asistentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistentes_a_servicio`
--
ALTER TABLE `asistentes_a_servicio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_asistentes_de_servicio` (`asistente_id`,`servicio_id`),
  ADD KEY `fk_ag_servicios` (`servicio_id`);

--
-- Indices de la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_auth_user_id` (`user_id`,`authority`);

--
-- Indices de la tabla `detalle_de_servicio`
--
ALTER TABLE `detalle_de_servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicio_id` (`servicio_id`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_de_servicio_id` (`tipo_de_servicio_id`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sesiones_servicio` (`servicio_id`);

--
-- Indices de la tabla `tipos_de_servicios`
--
ALTER TABLE `tipos_de_servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_servicios`
--
ALTER TABLE `users_servicios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_grupos` (`user_id`,`servicio_id`),
  ADD KEY `fk_ug_grupos` (`servicio_id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `asistentes`
--
ALTER TABLE `asistentes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113109;

--
-- AUTO_INCREMENT de la tabla `asistentes_a_servicio`
--
ALTER TABLE `asistentes_a_servicio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `authorities`
--
ALTER TABLE `authorities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `detalle_de_servicio`
--
ALTER TABLE `detalle_de_servicio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2349;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41435;

--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT de la tabla `tipos_de_servicios`
--
ALTER TABLE `tipos_de_servicios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `users_servicios`
--
ALTER TABLE `users_servicios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `fk_asistencias_asistentes` FOREIGN KEY (`asistente_id`) REFERENCES `asistentes` (`id`),
  ADD CONSTRAINT `fk_asistencias_sesiones` FOREIGN KEY (`sesion_id`) REFERENCES `sesiones` (`id`);

--
-- Filtros para la tabla `asistentes_a_servicio`
--
ALTER TABLE `asistentes_a_servicio`
  ADD CONSTRAINT `fk_ag_asistentes` FOREIGN KEY (`asistente_id`) REFERENCES `asistentes` (`id`),
  ADD CONSTRAINT `fk_ag_servicio` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);

--
-- Filtros para la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_de_servicio`
--
ALTER TABLE `detalle_de_servicio`
  ADD CONSTRAINT `detalle_de_servicio_ibfk_1` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`tipo_de_servicio_id`) REFERENCES `tipos_de_servicios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD CONSTRAINT `fk_sesiones_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);

--
-- Filtros para la tabla `users_servicios`
--
ALTER TABLE `users_servicios`
  ADD CONSTRAINT `fk_us_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`),
  ADD CONSTRAINT `fk_us_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

