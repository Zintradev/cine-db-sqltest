-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2025 a las 13:17:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cinedb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `correo`, `telefono`) VALUES
(1, 'Ana', 'López', 'ana.lopez@email.com', '555-1234'),
(2, 'Carlos', 'Pérez', 'carlos.perez@email.com', '555-5678'),
(3, 'Lucía', 'Martínez', 'lucia.martinez@email.com', '555-9012'),
(4, 'Mario', 'García', 'mario.garcia@email.com', '555-0001'),
(5, 'Laura', 'Ruiz', 'laura.ruiz@email.com', '555-0002'),
(6, 'Pedro', 'Sánchez', 'pedro.sanchez@email.com', '555-0003'),
(7, 'Elena', 'Morales', 'elena.morales@email.com', '555-0004'),
(8, 'Andrés', 'Castro', 'andres.castro@email.com', '555-0005'),
(9, 'Carmen', 'Díaz', 'carmen.diaz@email.com', '555-0006'),
(10, 'Diego', 'Ortiz', 'diego.ortiz@email.com', '555-0007'),
(11, 'Julia', 'Núñez', 'julia.nunez@email.com', '555-0008'),
(12, 'Héctor', 'Ramírez', 'hector.ramirez@email.com', '555-0009'),
(13, 'Marta', 'León', 'marta.leon@email.com', '555-0010'),
(14, 'Sergio', 'Vega', 'sergio.vega@email.com', '555-0011'),
(15, 'Natalia', 'Rojas', 'natalia.rojas@email.com', '555-0012'),
(16, 'Daniel', 'Molina', 'daniel.molina@email.com', '555-0013'),
(17, 'Rocío', 'Campos', 'rocio.campos@email.com', '555-0014'),
(18, 'Álvaro', 'Silva', 'alvaro.silva@email.com', '555-0015'),
(19, 'Irene', 'Soto', 'irene.soto@email.com', '555-0016'),
(20, 'Luis', 'Reyes', 'luis.reyes@email.com', '555-0017'),
(21, 'Paula', 'Herrera', 'paula.herrera@email.com', '555-0018'),
(22, 'Javier', 'Luna', 'javier.luna@email.com', '555-0019'),
(23, 'Lucía', 'Fernández', 'lucia.fernandez@email.com', '555-0020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_entradas`
--

CREATE TABLE `clientes_entradas` (
  `id_cliente` int(11) NOT NULL,
  `id_entrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes_entradas`
--

INSERT INTO `clientes_entradas` (`id_cliente`, `id_entrada`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 5),
(3, 4),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 11),
(10, 12),
(11, 13),
(12, 14),
(13, 15),
(14, 16),
(15, 17),
(16, 18),
(17, 19),
(18, 20),
(19, 21),
(20, 22),
(21, 23),
(22, 24),
(23, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emisiones`
--

CREATE TABLE `emisiones` (
  `id_emision` int(11) NOT NULL,
  `horario` time DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_pelicula` int(11) DEFAULT NULL,
  `id_sala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `emisiones`
--

INSERT INTO `emisiones` (`id_emision`, `horario`, `fecha`, `id_pelicula`, `id_sala`) VALUES
(1, '15:30:00', '2025-05-21', 1, 3),
(2, '18:00:00', '2025-05-21', 2, 1),
(3, '20:00:00', '2025-05-22', 3, 2),
(4, '12:00:00', '2025-05-23', 4, 4),
(5, '14:30:00', '2025-05-23', 5, 5),
(6, '17:00:00', '2025-05-23', 6, 6),
(7, '19:30:00', '2025-05-23', 7, 7),
(8, '22:00:00', '2025-05-23', 8, 8),
(9, '11:00:00', '2025-05-24', 9, 9),
(10, '13:00:00', '2025-05-24', 10, 10),
(11, '15:00:00', '2025-05-24', 11, 11),
(12, '17:00:00', '2025-05-24', 12, 12),
(13, '19:00:00', '2025-05-24', 13, 13),
(14, '21:00:00', '2025-05-24', 14, 14),
(15, '11:30:00', '2025-05-25', 15, 15),
(16, '13:30:00', '2025-05-25', 16, 16),
(17, '16:00:00', '2025-05-25', 17, 17),
(18, '18:30:00', '2025-05-25', 18, 18),
(19, '21:00:00', '2025-05-25', 19, 19),
(20, '11:00:00', '2025-05-26', 20, 20),
(21, '13:00:00', '2025-05-26', 21, 21),
(22, '15:00:00', '2025-05-26', 22, 22),
(23, '17:00:00', '2025-05-26', 23, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `apellido`, `salario`, `cargo`) VALUES
(1, 'Jorge', 'Ramírez', 1200.00, 'Taquillero'),
(2, 'Marta', 'Gómez', 1500.00, 'Supervisor'),
(3, 'Luis', 'Torres', 1100.00, 'Asistente'),
(4, 'Isabel', 'Cano', 1150.00, 'Cajero'),
(5, 'Victor', 'Serrano', 1250.00, 'Limpieza'),
(6, 'Paula', 'Ramos', 1350.00, 'Proyectorista'),
(7, 'Hugo', 'Méndez', 1400.00, 'Recepción'),
(8, 'Teresa', 'Cruz', 1300.00, 'Supervisor'),
(9, 'Joaquín', 'Herrero', 1100.00, 'Asistente'),
(10, 'Nuria', 'Domínguez', 1250.00, 'Taquillero'),
(11, 'Gabriel', 'Gil', 1180.00, 'Limpieza'),
(12, 'Eva', 'Arias', 1300.00, 'Supervisor'),
(13, 'Pablo', 'Rivas', 1500.00, 'Administrador'),
(14, 'Alba', 'Ibáñez', 1150.00, 'Cajera'),
(15, 'Oscar', 'Cortés', 1250.00, 'Proyectorista'),
(16, 'Sofía', 'Blanco', 1190.00, 'Limpieza'),
(17, 'Iván', 'Peña', 1330.00, 'Recepción'),
(18, 'Carla', 'Reina', 1260.00, 'Asistente'),
(19, 'Bruno', 'Fuentes', 1450.00, 'Supervisor'),
(20, 'Elisa', 'Muñoz', 1370.00, 'Cajera'),
(21, 'Tomás', 'Navarro', 1230.00, 'Recepción'),
(22, 'Lorena', 'Marín', 1400.00, 'Gerente'),
(23, 'Noelia', 'Aguilar', 1290.00, 'Taquillera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados_salas`
--

CREATE TABLE `empleados_salas` (
  `id_empleado` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados_salas`
--

INSERT INTO `empleados_salas` (`id_empleado`, `id_sala`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id_entrada` int(11) NOT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `asiento` varchar(10) DEFAULT NULL,
  `id_emision` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id_entrada`, `precio`, `asiento`, `id_emision`) VALUES
(1, 7.50, 'A1', 1),
(2, 7.50, 'A2', 1),
(3, 6.00, 'B1', 2),
(4, 6.00, 'B2', 2),
(5, 8.50, 'C1', 3),
(6, 7.50, 'D1', 4),
(7, 6.00, 'D2', 4),
(8, 6.50, 'E1', 5),
(9, 6.50, 'E2', 5),
(10, 8.00, 'F1', 6),
(11, 7.00, 'F2', 6),
(12, 9.00, 'G1', 7),
(13, 8.50, 'G2', 7),
(14, 7.50, 'H1', 8),
(15, 7.50, 'H2', 8),
(16, 6.50, 'I1', 9),
(17, 6.50, 'I2', 9),
(18, 8.00, 'J1', 10),
(19, 8.00, 'J2', 10),
(20, 9.00, 'K1', 11),
(21, 8.50, 'K2', 11),
(22, 6.00, 'L1', 12),
(23, 6.00, 'L2', 12),
(24, 7.50, 'M1', 13),
(25, 7.50, 'M2', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id_pelicula` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `duracion` int(11) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id_pelicula`, `titulo`, `duracion`, `director`, `genero`) VALUES
(1, 'Inception', 148, 'Christopher Nolan', 'Ciencia Ficción'),
(2, 'Coco', 105, 'Lee Unkrich', 'Animación'),
(3, 'Parasite', 132, 'Bong Joon-ho', 'Drama'),
(4, 'Dune', 155, 'Denis Villeneuve', 'Ciencia Ficción'),
(5, 'Soul', 100, 'Pete Docter', 'Animación'),
(6, 'Joker', 122, 'Todd Phillips', 'Drama'),
(7, 'Avengers: Endgame', 181, 'Anthony y Joe Russo', 'Acción'),
(8, 'La La Land', 128, 'Damien Chazelle', 'Musical'),
(9, 'Toy Story 4', 100, 'Josh Cooley', 'Animación'),
(10, 'Interstellar', 169, 'Christopher Nolan', 'Ciencia Ficción'),
(11, 'El Padrino', 175, 'Francis Ford Coppola', 'Crimen'),
(12, 'Shrek', 90, 'Andrew Adamson', 'Comedia'),
(13, 'The Batman', 176, 'Matt Reeves', 'Acción'),
(14, 'Encanto', 102, 'Byron Howard', 'Animación'),
(15, 'Titanic', 195, 'James Cameron', 'Romance'),
(16, '1917', 119, 'Sam Mendes', 'Bélico'),
(17, 'Whiplash', 107, 'Damien Chazelle', 'Drama'),
(18, 'Black Panther', 134, 'Ryan Coogler', 'Acción'),
(19, 'The Matrix', 136, 'The Wachowskis', 'Ciencia Ficción'),
(20, 'Frozen II', 103, 'Chris Buck', 'Animación'),
(21, 'Jaws', 124, 'Steven Spielberg', 'Terror'),
(22, 'Up', 96, 'Pete Docter', 'Animación'),
(23, 'Tenet', 150, 'Christopher Nolan', 'Acción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id_sala` int(11) NOT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `tipo` enum('2D','3D','IMAX') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id_sala`, `capacidad`, `tipo`) VALUES
(1, 100, '2D'),
(2, 80, '3D'),
(3, 60, 'IMAX'),
(4, 75, '2D'),
(5, 90, '3D'),
(6, 65, 'IMAX'),
(7, 100, '2D'),
(8, 80, '3D'),
(9, 70, 'IMAX'),
(10, 85, '2D'),
(11, 60, '3D'),
(12, 95, 'IMAX'),
(13, 100, '2D'),
(14, 77, '3D'),
(15, 88, 'IMAX'),
(16, 92, '2D'),
(17, 86, '3D'),
(18, 73, 'IMAX'),
(19, 68, '2D'),
(20, 91, '3D'),
(21, 84, 'IMAX'),
(22, 76, '2D'),
(23, 89, '3D');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `clientes_entradas`
--
ALTER TABLE `clientes_entradas`
  ADD PRIMARY KEY (`id_cliente`,`id_entrada`),
  ADD KEY `id_entrada` (`id_entrada`);

--
-- Indices de la tabla `emisiones`
--
ALTER TABLE `emisiones`
  ADD PRIMARY KEY (`id_emision`),
  ADD KEY `id_pelicula` (`id_pelicula`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `empleados_salas`
--
ALTER TABLE `empleados_salas`
  ADD PRIMARY KEY (`id_empleado`,`id_sala`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id_entrada`),
  ADD KEY `id_emision` (`id_emision`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_sala`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes_entradas`
--
ALTER TABLE `clientes_entradas`
  ADD CONSTRAINT `clientes_entradas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `clientes_entradas_ibfk_2` FOREIGN KEY (`id_entrada`) REFERENCES `entradas` (`id_entrada`);

--
-- Filtros para la tabla `emisiones`
--
ALTER TABLE `emisiones`
  ADD CONSTRAINT `emisiones_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pelicula`),
  ADD CONSTRAINT `emisiones_ibfk_2` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id_sala`);

--
-- Filtros para la tabla `empleados_salas`
--
ALTER TABLE `empleados_salas`
  ADD CONSTRAINT `empleados_salas_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  ADD CONSTRAINT `empleados_salas_ibfk_2` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id_sala`);

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `entradas_ibfk_1` FOREIGN KEY (`id_emision`) REFERENCES `emisiones` (`id_emision`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
