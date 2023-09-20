-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2023 a las 20:57:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tazas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `país` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `id_usuario`, `telefono`, `direccion`, `país`) VALUES
(1, 22, '3229382212', 'nose kr 666', '0'),
(2, 22, '3229382212', 'nose kr 666', '0'),
(3, 44, '322938221222222', 'nose kr 666545656', 'Venezuela'),
(4, 44, '32293822333', 'la mrd', 'Dubai'),
(5, 50, '3634635353', 'kr33303', 'valencia'),
(6, 50, '3634635353', 'kr33303', 'valencia'),
(7, 52, '3229382212', 'nose kr 666', 'Venezuela'),
(8, 52, '3229382212', 'nose kr 666', 'Venezuela'),
(9, 61, '3229382212', 'nose kr 666', 'Colombia'),
(10, 61, '3229382212', 'nose kr 666', 'Colombia'),
(11, 63, '3144308584', 'nose kr 666', 'Venezuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `id_pedido`, `id_producto`, `cantidad`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 2),
(4, 3, 2, 3),
(5, 4, 1, 2),
(6, 4, 2, 3),
(7, 5, 1, 2),
(8, 5, 2, 3),
(9, 6, 1, 3),
(10, 6, 2, 3),
(11, 7, 1, 3),
(12, 7, 2, 3),
(13, 8, 1, 3),
(14, 8, 2, 3),
(15, 9, 1, 15),
(16, 10, 1, 1),
(17, 11, 1, 2),
(18, 11, 3, 2),
(19, 11, 5, 1),
(20, 12, 1, 2),
(21, 12, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_pedido` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado_pedido` enum('pendiente','en_proceso','completado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_usuario`, `fecha_pedido`, `estado_pedido`) VALUES
(1, 59, '2023-09-18 00:52:11', 'pendiente'),
(2, 59, '2023-09-18 01:04:06', 'pendiente'),
(3, 59, '2023-09-18 01:04:36', 'pendiente'),
(4, 59, '2023-09-18 01:10:28', 'pendiente'),
(5, 59, '2023-09-18 01:18:14', 'pendiente'),
(6, 59, '2023-09-18 01:22:01', 'pendiente'),
(7, 59, '2023-09-18 01:52:48', 'pendiente'),
(8, 59, '2023-09-18 02:01:11', 'pendiente'),
(9, 61, '2023-09-18 02:14:20', 'pendiente'),
(10, 64, '2023-09-19 20:29:55', 'pendiente'),
(11, 66, '2023-09-19 23:55:34', 'pendiente'),
(12, 66, '2023-09-19 23:55:51', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen_url`) VALUES
(1, 'Corzae', 'Taza estilo Corzae \r\nCafe medio top', 12000.00, '../ASSETS/boca-ancha/boca-perso1.jpg\r\n'),
(2, 'Tazen Monik', 'Tazen Monik blanca premium queen', 3000.00, '..\\ASSETS\\boca-ancha\\boca-perso2.jpg'),
(3, 'Hixxo', 'Medio azul hixxo normal', 6000.00, '..\\ASSETS\\boca-ancha\\boca-perso3.jpg'),
(4, 'AU.AAA', 'AU. A*3 cubierto con franja azul medio inherente', 8000.00, '..\\ASSETS\\boca-ancha\\boca-perso4.jpg'),
(5, 'PUCHIAZ', 'PUCHCIAZ Azul', 7000.00, '..\\ASSETS\\boca-ancha\\boca-perso5.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `Nombre`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Repartidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexos`
--

CREATE TABLE `sexos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sexos`
--

INSERT INTO `sexos` (`id`, `nombre`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `activo` enum('Si','No') NOT NULL DEFAULT 'Si',
  `id_sexo` int(11) DEFAULT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `rol` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `contraseña`, `activo`, `id_sexo`, `nombre_usuario`, `rol`) VALUES
(22, 'me', 'adrik041220@gmail.com', '$2y$10$pV21iDOTJrvPvJFrxVGsQO/41YuX7viB8d9ZosxLrYpWtneN8YFk.', 'Si', NULL, 'me', 2),
(44, 'fernan', 'urmendezjorghy@gmail.com', '$2y$10$5.i69WU2eJeDIyA.4PPsTu53neKB7TsWV46v6/SLMEuFZ99nDgeve', 'Si', 2, 'fer', 2),
(50, 'efgdf', 'dagobertomorasantana901@gmail.com', '$2y$10$zDHPX2XvzKwczf5aDEMBNeBvnJBR0aKEC8Twc.wcN079.dvDnfVVy', 'Si', NULL, 'felis', 2),
(52, 'male', 'jorgiporquesivro@gmail.com', '$2y$10$iXQ/D3qqripxctX9qnIxXOpRD8y2vTX1x.Jo1BoG55o75AEd7AASS', 'Si', NULL, 'machis', 2),
(58, 'no', 'nosy@gmail.com', '$2y$10$fq.eWN2CDspEaCoztQCaduvma5zApGcsWnJsC3jaJGmCAvcmw3Dx6', 'Si', NULL, 'nosoy', 2),
(59, 'vene', 'venedicto@gmail.com', '$2y$10$MvxCeWyqID3nVgcDU0WtUueAoLwQXfP6n2Q2GLlTqC7WmSapOiwwO', 'Si', NULL, 'vene', 2),
(61, 'nico', 'Gomita@gmail.com', '$2y$10$/4cUlTdAAyIWkqCq6tNzQ.iO.n4IJPI1MNts3ma2jbdXXDG0GJdPy', 'Si', NULL, 'gomita', 2),
(62, 'fale', 'menos@gmail.com', '$2y$10$nQfxoveyy1mtCrZclHuyDuthyiZUSgEmezA7CYubfB9loLK00LKTy', 'Si', 1, 'menos', 2),
(63, 'lala', 'edithcortez@gmail.com', '$2y$10$No3tdNvNXuzo5Y7PfwcS9ulK4JIiiu1187I.NVOyU3XAeddxRP0Wa', 'Si', 1, 'edith', 1),
(64, 'melo', 'melitico@gmail.com', '$2y$10$ULB4eka3Pl0kvIRtm5maFuMIxd.2uiCOJMeI3G5aW8hseQECPYw4i', 'Si', NULL, 'meli', 2),
(65, 'pasa', 'pasando@gmail.com', '1', 'Si', 1, 'uno', 2),
(66, 'Nombre', 'usuarioconcuenta@gmail.com', '$2y$10$i4HLHsm3V2VqTdWpVDIFxebUytUAYJN52wo3PBhRytnlbPiMBXsTu', 'Si', NULL, 'usuario3000', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `uq_nombre_usuario` (`nombre_usuario`),
  ADD KEY `fk_usuarios_sexos` (`id_sexo`),
  ADD KEY `fk_usuarios_rol` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sexos`
--
ALTER TABLE `sexos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `contacto_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `detalle_pedidos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_rol` FOREIGN KEY (`rol`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `fk_usuarios_sexos` FOREIGN KEY (`id_sexo`) REFERENCES `sexos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
