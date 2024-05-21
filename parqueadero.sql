-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2021 a las 10:15:37
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parqueadero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(20) NOT NULL,
  `estado` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `estado`) VALUES
(1, 'ACTIVO'),
(2, 'INACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(20) NOT NULL,
  `codigoFactura` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `horaIngreso` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `horaSalida` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `tiempo` int(20) DEFAULT NULL,
  `costo` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha` date NOT NULL,
  `id_estado` int(20) DEFAULT NULL,
  `id_vehiculo` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `codigoFactura`, `horaIngreso`, `horaSalida`, `tiempo`, `costo`, `fecha`, `id_estado`, `id_vehiculo`) VALUES
(28, 'h6dvv16r', '08:57:22', '08:57:41', 0, '0', '2018-09-20', 1, 1),
(29, '76sr0uj0', '08:57:25', '08:57:44', 0, '0', '2018-09-20', 1, 3),
(30, 'up6cj7ja', '08:57:58', '02:06:16', -411, '-616.500', '2018-09-20', 2, 4),
(31, '27itub3f', '08:59:40', '09:08:56', 9, '31.500', '2018-09-20', 1, 3),
(32, 'vt1vtat2', '08:59:47', '09:01:13', 2, '6.000', '2018-09-20', 1, 1),
(33, '2ak9cjk2', '09:01:19', '09:05:35', 4, '12.000', '2018-09-20', 1, 1),
(34, 'n8n7dlre', '09:05:38', '09:08:31', 3, '9.000', '2018-09-20', 1, 1),
(35, '93ufg0gd', '09:08:34', '09:08:36', 0, '0', '2018-09-20', 1, 1),
(36, 'glho81kl', '09:08:40', '09:08:41', 0, '0', '2018-09-20', 1, 1),
(37, '9qro6kq3', '09:08:51', '09:08:52', 0, '0', '2018-09-20', 1, 1),
(38, 'pcmm04ko', '09:08:59', '09:09:00', 1, '3.500', '2018-09-20', 1, 3),
(39, 'raf0lis7', '09:09:13', '09:09:16', 0, '0', '2018-09-20', 1, 3),
(40, 'plrc8sj6', '09:09:55', '10:53:10', 104, '364.000', '2018-09-20', 1, 3),
(41, 'tr5sf193', '09:10:01', '11:00:28', 110, '330.000', '2018-09-20', 1, 1),
(42, '846aqkik', '10:58:42', '10:58:44', 0, '0', '2018-09-20', 1, 3),
(43, 'eb0qdspg', '11:00:33', '11:00:36', 0, '0', '2018-09-20', 1, 1),
(44, '6h0q2q6f', '11:01:23', '11:01:25', 0, '0', '2018-09-20', 1, 3),
(45, 'nq7ecc8c', '11:03:34', '11:03:37', 0, '0', '2018-09-20', 1, 1),
(46, 'c2ln9p96', '11:04:28', '11:04:30', 0, '0', '2018-09-20', 1, 3),
(47, 'pu2g4pdd', '11:05:13', '11:05:14', 0, '0', '2018-09-20', 1, 3),
(48, '775iemi0', '11:05:20', '11:05:22', 0, '0', '2018-09-20', 1, 1),
(49, 'i3jj0e17', '11:17:21', '11:17:24', 0, '0', '2018-09-20', 1, 3),
(50, '5jr2c3o3', '11:17:39', '11:17:49', 0, '0', '2018-09-20', 1, 3),
(51, 'dig2ofpq', '11:39:55', '11:39:56', 0, '0', '2018-09-20', 1, 3),
(52, 'ssdvo02f', '11:43:17', '11:43:20', 0, '0', '2018-09-20', 1, 3),
(53, 'hj6jecon', '12:00:54', '12:01:01', 1, '3.500', '2018-09-20', 1, 3),
(54, '939baee5', '12:01:32', '12:01:34', 0, '0', '2018-09-20', 1, 3),
(55, 'jrq8qm07', '12:08:44', '12:08:48', 0, '0', '2018-09-20', 1, 3),
(56, '7qicmcvp', '12:08:53', '12:08:55', 0, '0', '2018-09-20', 1, 3),
(57, 'qeekksal', '12:08:59', '12:09:01', 1, '3.500', '2018-09-20', 1, 3),
(58, 'bam8jnj', '12:09:09', '12:09:10', 0, '0', '2018-09-20', 1, 3),
(59, '35ibrh6n', '12:09:30', '12:09:31', 0, '0', '2018-09-20', 1, 1),
(60, 'k1dht7jp', '12:10:11', '12:10:14', 0, '0', '2018-09-20', 1, 3),
(61, 'm9pcs705', '12:10:23', '12:10:26', 0, '0', '2018-09-20', 1, 3),
(62, 'arfdg013', '12:10:34', '12:10:36', 0, '0', '2018-09-20', 1, 1),
(63, '33ed2gch', '12:27:24', '12:27:27', 0, '0', '2018-09-20', 1, 3),
(64, 'cns0aitj', '12:32:13', '12:32:16', 0, '0', '2018-09-20', 1, 3),
(65, '919qgus6', '12:32:27', '12:32:54', 0, '0', '2018-09-20', 1, 3),
(66, 'gd84fmgq', '12:32:35', '12:32:36', 0, '0', '2018-09-20', 1, 1),
(67, 'o6iihe02', '12:33:06', '12:34:05', 1, '3.500', '2018-09-20', 1, 3),
(68, 'kddk9k4a', '12:34:15', '12:34:17', 0, '0', '2018-09-20', 1, 3),
(69, 'uhmnevr7', '12:34:29', '12:34:30', 0, '0', '2018-09-20', 1, 1),
(70, 'qio1ep79', '12:36:10', '12:36:12', 0, '0', '2018-09-20', 1, 3),
(71, '1a9huuhn', '12:39:56', '12:39:58', 0, '0', '2018-09-20', 1, 3),
(72, '5qms9omm', '01:09:04', '19:53:20', 1124, '3.372.000', '2028-02-21', 2, 7),
(73, '3g8arodg', '01:26:47', '01:27:01', 1, '2.000', '2022-03-21', 2, 9),
(74, 'hvvjk3jn', '02:02:48', '02:03:20', 1, '3.000', '2022-03-21', 2, 7),
(75, 'j2vqulq7', '02:04:45', '02:04:47', 0, '0', '2022-03-21', 2, 10),
(76, 'scbpcfd1', '02:08:02', '02:08:05', 0, '0', '2022-03-21', 2, 4),
(77, 'gqp10igl', '02:12:21', '02:12:25', 0, '0', '2022-03-21', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(20) NOT NULL,
  `nombrerol` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombrerol`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'PORTERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `id_tarifa` int(20) NOT NULL,
  `costo` int(30) DEFAULT NULL,
  `id_tipovehiculo` int(20) DEFAULT NULL,
  `id_estado` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`id_tarifa`, `costo`, `id_tipovehiculo`, `id_estado`) VALUES
(1, 2000, 1, 1),
(2, 1000, 2, 2),
(3, 1500, 3, 1),
(4, 2000, 4, 1),
(5, 2500, 5, 2),
(6, 3000, 6, 1),
(7, 3500, 7, 1),
(8, 4000, 8, 1),
(9, 10000, 2, 2),
(10, 2000, 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovehiculos`
--

CREATE TABLE `tipovehiculos` (
  `id_tipovehiculo` int(20) NOT NULL,
  `tipovehiculo` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_estado` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tipovehiculos`
--

INSERT INTO `tipovehiculos` (`id_tipovehiculo`, `tipovehiculo`, `id_estado`) VALUES
(1, 'BICICLETA', 1),
(2, 'MOTOCARRO', 1),
(3, 'YATE', 2),
(4, 'CAMIONETA', 1),
(5, 'FURGON', 2),
(6, 'FURGONETA', 1),
(7, 'AUTOBUS', 1),
(8, 'CAMION', 1),
(9, 'FURGON', 2),
(10, 'AVION', 1),
(11, 'MULA', 1),
(12, 'MOTO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(20) NOT NULL,
  `usuariologin` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `clave` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `nombreapellido` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `correo` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `documento` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_rol` int(20) DEFAULT NULL,
  `id_estado` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuariologin`, `clave`, `nombreapellido`, `correo`, `documento`, `id_rol`, `id_estado`) VALUES
(1, 'B', 'B', 'BRAYAN GOMEZ M.', 'B@GMAIL.COM', '11423567', 1, 1),
(2, 'J', 'J', 'JHEISON GOMEZ M.', 'J@GMAIL.COM', '98745612', 2, 1),
(3, 'MARCELA', 'M', 'MARCELA ANDRADE', 'D@HOTMAIL.COM', '123', 2, 1),
(4, 'JULIO', 'J', 'GOMEZ MUNOZ', 'A@HOTMAIL.COM', '1', 1, 2),
(5, 'julieth', 'PLACA', 'julieth martinez', 'julieth_26@hotmail.com', '111111111', 1, 1),
(6, 'Maria', '1234', 'Maria Zarama', 'maria.zarama', '1198754965', 2, 1),
(7, 'Camila28', '1234', 'Camila Torres', 'camila.torres', '119355', 2, 1),
(1234, 'maria', '0000', 'andrea ramos', '@hotmail', '12345667', 2, 1),
(1235, 'andrea', 'martinez', 'gomez', 'cq788', '111', 1, 1),
(1236, 'victor ', '0000', 'diaz', 'victor@.com', '1111', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id_vehiculo` int(20) NOT NULL,
  `placa` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `modelo` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_tipovehiculo` int(20) DEFAULT NULL,
  `id_usuario` int(20) DEFAULT NULL,
  `id_estado` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `placa`, `modelo`, `id_tipovehiculo`, `id_usuario`, `id_estado`) VALUES
(1, 'GQA50C', '2009', 6, 2, 1),
(2, 'MMA50C', '1987', 7, 2, 2),
(3, 'Q', '1985', 7, 2, 1),
(4, 'SA50C', '2022', 3, 2, 1),
(5, 'CQK818', '2017', 2, 2, 2),
(6, 'CKQ989', '2017', 5, 2, 1),
(7, 'CQK818', '2017', 6, 2, 1),
(8, 'QRT27E', '2018', 9, 2, 1),
(9, 'QQQ', '2023', 9, 2, 1),
(10, 'UP6CJ7JA', '2022', 2, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`id_tarifa`),
  ADD KEY `id_tipovehiculo` (`id_tipovehiculo`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `tipovehiculos`
--
ALTER TABLE `tipovehiculos`
  ADD PRIMARY KEY (`id_tipovehiculo`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD KEY `id_tipovehiculo` (`id_tipovehiculo`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_estado` (`id_estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  MODIFY `id_tarifa` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipovehiculos`
--
ALTER TABLE `tipovehiculos`
  MODIFY `id_tipovehiculo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1237;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id_vehiculo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  ADD CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id_vehiculo`);

--
-- Filtros para la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD CONSTRAINT `tarifas_ibfk_1` FOREIGN KEY (`id_tipovehiculo`) REFERENCES `tipovehiculos` (`id_tipovehiculo`),
  ADD CONSTRAINT `tarifas_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`);

--
-- Filtros para la tabla `tipovehiculos`
--
ALTER TABLE `tipovehiculos`
  ADD CONSTRAINT `tipovehiculos_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`);

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`id_tipovehiculo`) REFERENCES `tipovehiculos` (`id_tipovehiculo`),
  ADD CONSTRAINT `vehiculos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `vehiculos_ibfk_3` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
