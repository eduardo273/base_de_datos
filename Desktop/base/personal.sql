-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2023 a las 02:12:34
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `personal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `id` int(11) NOT NULL,
  `id_empleados` int(11) DEFAULT NULL,
  `id_sector` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `creditos`
--

INSERT INTO `creditos` (`id`, `id_empleados`, `id_sector`, `cantidad`) VALUES
(38, 1, NULL, 1),
(39, 2, NULL, 1),
(40, 3, NULL, 1),
(41, 4, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `puesto` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` int(50) NOT NULL,
  `sector` text COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `puesto`, `direccion`, `telefono`, `sector`) VALUES
(1, 'Maria', 'Segovia', 'maquinista', 'barrio 325 manz k casa 3', 489990, 'operario'),
(2, 'Ester', 'Rojas', 'maquinista', 'barrio belgrano casa 45', 489670, 'operario'),
(3, 'Felix', 'Mendez', 'C. Calidad', 'barrio belgrano manz. c casa 4', 5643322, 'administración'),
(4, 'Marcelino ', 'Mendez', 'C. Calidad', 'barrio belgrano manz. c casa 8', 509988, 'administración'),
(5, 'Daniel', 'Ayala', 'ayudante', 'barrio san martin manz d casa 14', 4567655, 'operario'),
(7, 'Clemente', 'Ayala', 'ordenanza', 'barrio epan casa 12', 453211, 'operario'),
(10, 'Orlando', 'Maidana', 'chofer', 'barrio cesareo calle santa cruz 1234', 5097666, 'operario'),
(11, 'jose ', 'Bouroski     ', 'mecanico', 'barrio cesareoSAN LUIS 2234', 486796, 'taller'),
(12, 'Evangelina', 'Mendez', 'maquinista', 'barrio vuelta del ombu casa 34', 453321, 'operario'),
(13, 'Evangelina', 'Mendez', 'maquinista', 'barrio vuelta del ombu casa 34', 453321, 'operario'),
(14, 'Maria', 'Benitez', 'maquinista', 'barrio belgrano manz. c casa 6', 509877, 'operario'),
(15, 'Mario', 'De Nacimento', 'maquinista', 'barrio 202 casa 23', 450987, 'operario'),
(16, 'Lorena', 'Vargas', 'maquinista', 'barrio vuelta del ombu casa 37', 509876, 'operario'),
(17, 'Liliana', 'Aquino', 'maquinista', 'barrio 202 casa 29', 5097664, 'operario'),
(18, 'Malvina', 'Ferreira', 'maquinista', 'barrio belgrano manz. c casa 12', 453320, 'operario'),
(19, 'Sergio', 'Vargas', 'supervisor', 'barrio centro lavalle 3347', 456662, 'supervisión'),
(20, 'Mauro', 'Chavez', 'maquinista', 'barrio alfonsin manz f casa 23', 453244, 'operario'),
(21, 'Diego', 'Florez', 'maquinista', 'barrio vuelta del ombu casa 30', 453329, 'operario'),
(22, 'Jorge', 'Bogado', 'maquinista', 'barrio cesareo calle santa cruz 1236', 456234, 'operario'),
(23, 'Ariel', 'Silva', 'maquinista', 'barrio belgrano manz. c casa 45', 509777, 'operario'),
(27, 'Alejandro', 'Perez', 'maquinista', 'barrio belgrano manz. c casa 8', 490876, 'operario'),
(28, 'Maria Ester', 'villalba', 'maquinista', 'barrio belgrano manz. c casa 40', 2147483647, ''),
(29, 'Lorena', 'Atamañuk', 'maquinista', 'barrio belgrano manz. c casa 20', 346536679, ''),
(30, 'Fernando ', 'Arriola ', 'maquinista', 'barrio belgrano manz. c casa 34', 2147483647, ''),
(31, 'Gisela', 'Rios', 'maquinista', 'barrio 325 manz o casa 14', 2147483647, ''),
(32, 'Alejandra ', 'Campos', 'maquinista', 'barrio cesareo calle santa cruz 1233', 2147483647, ''),
(33, 'Mario', 'Ortwski', 'mecanico', 'barrio 202 casa 21', 2147483647, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE `entrega` (
  `id` int(11) NOT NULL,
  `id_empleados` int(11) DEFAULT NULL,
  `id_creditos` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_horarios`
--

CREATE TABLE `registros_horarios` (
  `id` int(11) NOT NULL,
  `empleado_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `id` int(11) NOT NULL,
  `id_creditos` int(50) NOT NULL,
  `cantidad` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id`, `nombre`, `descripcion`, `cantidad`) VALUES
(1, 'camisa beige', 'talle s', 13),
(2, 'camisa beige', 'talle m', 49),
(3, 'camisa beige', 'talle g', 49),
(4, 'camisa beige', 'talle x', 50),
(5, 'remera verde', 'talle s', 49),
(6, 'remera verde', 'talle m', 50),
(7, 'remera verde', 'talle g', 50),
(8, 'remera verde', 'talle x', 50),
(9, 'chomba gris', 'talle s', 50),
(10, 'chomba gris', 'talle m', 50),
(11, 'chomba gris', 'talle s', 20),
(12, 'chomba gris', 'talle m', 20),
(13, 'chomba gris', 'talle g', 20),
(14, 'chomba gris', 'talle x', 20),
(15, 'camisa azul', 'talle s', 20),
(16, 'camisa azul', 'talle m', 20),
(17, 'camisa azul', 'talle g', 19),
(18, 'camisa azul', 'talle x', 20),
(19, 'pantalon beige', 'talle 38', 50),
(20, 'pantalon beige', 'talle 40', 50),
(21, 'pantalon beige', 'talle 42', 49),
(22, 'pantalon beige', 'talle 44', 50),
(23, 'pantalon jean azul', 'talle 38', 20),
(24, 'pantalon jean azul', 'talle 40', 20),
(25, 'pantalon jean azul', 'talle 42', 19),
(26, 'pantalon jean azul', 'talle 44', 20),
(27, 'pantalon azul', 'talle 38', 20),
(28, 'pantalon azul', 'talle 40', 20),
(29, 'pantalon azul', 'talle 42', 20),
(30, 'pantalon azul', 'talle 44', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `contrasena` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`) VALUES
(1, 'admin', '1111');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empleados` (`id_empleados`),
  ADD KEY `id_stock` (`id_sector`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empleados` (`id_empleados`),
  ADD KEY `id_creditos` (`id_creditos`);

--
-- Indices de la tabla `registros_horarios`
--
ALTER TABLE `registros_horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleado_id` (`empleado_id`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `registros_horarios`
--
ALTER TABLE `registros_horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD CONSTRAINT `creditos_ibfk_1` FOREIGN KEY (`id_empleados`) REFERENCES `empleados` (`id`),
  ADD CONSTRAINT `creditos_ibfk_2` FOREIGN KEY (`id_sector`) REFERENCES `stock` (`id`);

--
-- Filtros para la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `entrega_ibfk_1` FOREIGN KEY (`id_empleados`) REFERENCES `empleados` (`id`),
  ADD CONSTRAINT `entrega_ibfk_2` FOREIGN KEY (`id_creditos`) REFERENCES `creditos` (`id`);

--
-- Filtros para la tabla `registros_horarios`
--
ALTER TABLE `registros_horarios`
  ADD CONSTRAINT `registros_horarios_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
