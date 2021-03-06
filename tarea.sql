-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2021 a las 14:30:05
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tarea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testado`
--

CREATE TABLE `testado` (
  `nombreEstado` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `testado`
--

INSERT INTO `testado` (`nombreEstado`) VALUES
('finalizado'),
('nofinalizado'),
('pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ttarea`
--

CREATE TABLE `ttarea` (
  `nombreTarea` varchar(20) COLLATE utf8_bin NOT NULL,
  `fechaInicioProyectada` varchar(20) COLLATE utf8_bin NOT NULL,
  `fechaVenceProyectada` varchar(20) COLLATE utf8_bin NOT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `nombreUsuario` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ttarea`
--

INSERT INTO `ttarea` (`nombreTarea`, `fechaInicioProyectada`, `fechaVenceProyectada`, `descripcion`, `nombreUsuario`) VALUES
('Desarrollar', '17/12/2021', '18/12/2021', 'Se entrega codigo generico', 'jhonheiler'),
('consulta', '17/12/2021', '18/12/2021', 'realiza consulta', 'rosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `nombreUsuario` varchar(20) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`nombreUsuario`, `contrasena`) VALUES
('Admin', 'Admin'),
('Jhonheiler', 'heiler'),
('jhon', 'jhon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuarioxttarea`
--

CREATE TABLE `tusuarioxttarea` (
  `nombreUsuario` varchar(20) COLLATE utf8_bin NOT NULL,
  `nombreTarea` varchar(20) COLLATE utf8_bin NOT NULL,
  `fechaAsignacion` varchar(20) COLLATE utf8_bin NOT NULL,
  `fechaATerminar` varchar(20) COLLATE utf8_bin NOT NULL,
  `nombreEstado` varchar(20) COLLATE utf8_bin NOT NULL,
  `observacion` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tusuarioxttarea`
--

INSERT INTO `tusuarioxttarea` (`nombreUsuario`, `nombreTarea`, `fechaAsignacion`, `fechaATerminar`, `nombreEstado`, `observacion`) VALUES
('Heiler', 'Desarrollar', '16/12/2021', '19/12/2021', 'finalizado', 'realiza documentacion de codigo '),
('heiler', 'Desarrollar', '17/12/2021', '19/12/2021', 'nofinalizado', 'realiza documentacion de codigo ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `testado`
--
ALTER TABLE `testado`
  ADD PRIMARY KEY (`nombreEstado`);

--
-- Indices de la tabla `ttarea`
--
ALTER TABLE `ttarea`
  ADD PRIMARY KEY (`nombreTarea`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`nombreUsuario`);

--
-- Indices de la tabla `tusuarioxttarea`
--
ALTER TABLE `tusuarioxttarea`
  ADD PRIMARY KEY (`nombreUsuario`,`nombreTarea`,`nombreEstado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
