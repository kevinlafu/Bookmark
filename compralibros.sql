-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2017 a las 22:41:04
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `compralibros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `borrado` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `borrado`) VALUES
(1, 'Informáticas', 0),
(2, 'Terrores', 0),
(53, 'Cuento', 0),
(55, 'Poema', 0),
(100, 'Comic/Manga', 0),
(104, 'Novela', 0),
(105, 'Historia', 0),
(110, 'Niños', 0),
(111, 'Romantico', 0),
(112, 'Best Seller', 0),
(113, 'Nuevo Genero', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradetalle`
--

CREATE TABLE `compradetalle` (
  `ndefactura` int(11) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `preciodecompra` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compradetalle`
--

INSERT INTO `compradetalle` (`ndefactura`, `isbn`, `usuario`, `cantidad`, `preciodecompra`) VALUES
(26, '123-1223-1223', 'kevin', 1, 123),
(26, '231-112-31231', 'kevin', 4, 100.5),
(27, '123-1223-1223', 'kevin', 1, 123),
(27, '231-112-31231', 'kevin', 1, 100.5),
(28, '111-2223-7777', 'kevin', 1, 45.6),
(28, '231-112-31231', 'kevin', 1, 100.5),
(29, '123-1223-1223', 'tom', 4, 123),
(29, '222-2222-2222', 'tom', 1, 5.9),
(30, '123-2222-3333', 'ana', 2, 145.8),
(30, '231-112-31231', 'ana', 1, 100.5),
(31, '123-2222-3333', 'ana', 1, 145.8),
(32, '231-112-31231', 'ana', 1, 100.5),
(33, '123-2222-3333', 'ana', 1, 145.8),
(34, '222-2222-2222', 'tom', 1, 5.9),
(35, '123-1223-1223', 'tom', 1, 123),
(36, '123-2222-3333', 'ana', 2, 145.8),
(37, '222-2222-2222', 'ana', 1, 5.9),
(38, '123-1223-1223', 'ana', 1, 123),
(39, '123-1223-1223', 'ana', 1, 123),
(40, '222-2222-2222', 'tom', 1, 5.9),
(41, '222-2222-2222', 'tom', 1, 5.9),
(42, '222-2222-2222', 'ana', 1, 5.9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compraregistro`
--

CREATE TABLE `compraregistro` (
  `ndefactura` int(11) NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compraregistro`
--

INSERT INTO `compraregistro` (`ndefactura`, `fechahora`) VALUES
(26, '2017-11-15 20:38:29'),
(27, '2017-11-17 00:16:38'),
(28, '2017-11-19 00:02:16'),
(29, '2017-11-27 19:17:31'),
(30, '2017-11-27 19:20:02'),
(31, '2017-11-27 19:23:58'),
(32, '2017-11-27 19:27:02'),
(33, '2017-11-27 19:28:50'),
(34, '2017-11-27 19:30:15'),
(35, '2017-11-27 19:32:23'),
(36, '2017-11-28 21:30:49'),
(37, '2017-11-28 21:31:04'),
(38, '2017-11-28 21:31:36'),
(39, '2017-11-28 21:31:41'),
(40, '2017-11-28 21:32:11'),
(41, '2017-11-28 21:33:22'),
(42, '2017-11-28 21:38:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compratemp`
--

CREATE TABLE `compratemp` (
  `isbn` varchar(13) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `categoria` int(3) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `edicion` int(4) NOT NULL COMMENT 'anio de publicacion',
  `disponible` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `isbn` varchar(13) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `categoria` int(3) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `edicion` int(4) NOT NULL COMMENT 'anio de publicacion',
  `disponible` int(11) NOT NULL,
  `borrado` tinyint(1) NOT NULL DEFAULT '0',
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`isbn`, `titulo`, `categoria`, `autor`, `edicion`, `disponible`, `borrado`, `precio`) VALUES
('111-2223-7777', 'Indomable', 53, '@StrABEBI', 2017, 564, 0, 45.6),
('123-1223-1223', 'Las Mil y una Noches', 53, 'Desconocido', 1998, 12, 0, 123),
('123-2222-3333', 'El Alquimista', 104, 'Paulo Cohelo', 2010, 46, 0, 145.8),
('222-2222-2222', 'Aprendiendo Java', 1, 'Deitel & Deitel', 2015, 15, 0, 5.9),
('231-112-31231', 'Colección Cortazar', 113, 'Cortázar', 2012, 4, 0, 100.5),
('333-4455-3321', 'El Cid', 55, 'Locales', 1445, 44, 1, 0),
('454-4445-1233', 'El Señor de los anillos', 110, 'Tolkien', 1980, 6, 0, 56.3),
('768-8687-6666', 'Cuentos para Profesionales', 2, 'Cardozoss', 2015, 44, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `compra_admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `pass`, `compra_admin`) VALUES
('ana', '123', 1),
('juan', '123', 2),
('kevin', '12', 1),
('patricia@mail', '123456', 2),
('tom', '123', 1),
('wewe', 'aa', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compradetalle`
--
ALTER TABLE `compradetalle`
  ADD PRIMARY KEY (`ndefactura`,`isbn`);

--
-- Indices de la tabla `compraregistro`
--
ALTER TABLE `compraregistro`
  ADD PRIMARY KEY (`ndefactura`);

--
-- Indices de la tabla `compratemp`
--
ALTER TABLE `compratemp`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `titulo` (`titulo`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `titulo` (`titulo`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT de la tabla `compraregistro`
--
ALTER TABLE `compraregistro`
  MODIFY `ndefactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
