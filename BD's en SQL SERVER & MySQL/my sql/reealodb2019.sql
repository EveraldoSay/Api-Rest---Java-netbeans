-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 06:33:18
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
-- Base de datos: `reealodb2019`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codProd` char(4) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `detalle` varchar(300) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `imagen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codProd`, `descripcion`, `detalle`, `stock`, `precio`, `imagen`) VALUES
('P002', 'Laptop', 'Laptop con procesador Intel i7 y 16GB de RAM', 30, 1199.99, 'laptop.jpg'),
('P003', 'Tablet', 'Tablet con pantalla de 10 pulgadas y 64GB de almacenamiento', 40, 299.99, 'tablet.jpg'),
('P004', 'Auriculares', 'Auriculares inalámbricos con cancelación de ruido', 100, 149.99, 'auriculares.jpg'),
('P005', 'Reloj Inteligente', 'Reloj inteligente con GPS y monitor de actividad física', 70, 199.99, 'reloj.jpg'),
('P006', 'Teclado Mecánico', 'Teclado mecánico retroiluminado con teclas personalizables', 25, 89.99, 'teclado.jpg'),
('P007', 'Monitor 4K', 'Monitor 4K UHD de 27 pulgadas con tecnología IPS', 15, 399.99, 'monitor.jpg'),
('P008', 'Cámara DSLR', 'Cámara DSLR con lente de 18-55mm y grabación en 4K', 10, 799.99, 'camara.jpg'),
('P009', 'Disco Duro Externo', 'Disco duro externo de 2TB con conexión USB 3.0', 120, 89.99, 'discoduro.jpg'),
('P010', 'Impresora Multifuncional', 'Impresora multifuncional con escáner y conectividad Wi-Fi', 45, 129.99, 'impresora.jpg'),
('P011', 'Mouse Inalámbrico', 'Mouse inalámbrico ergonómico con batería recargable', 85, 29.99, 'mouse.jpg'),
('P012', 'Altavoz Bluetooth', 'Altavoz portátil Bluetooth con sonido estéreo', 60, 59.99, 'altavoz.jpg'),
('P013', 'Cargador Rápido', 'Cargador rápido USB-C con 65W de potencia', 200, 25.99, 'cargador.jpg'),
('P014', 'SSD Interno', 'SSD interno de 1TB con interfaz NVMe', 35, 139.99, 'ssd.jpg'),
('P015', 'Silla Gamer', 'Silla ergonómica para gamers con soporte lumbar ajustable', 20, 249.99, 'silla.jpg'),
('P016', 'Microondas', 'Microondas digital con 700W de potencia y 10 niveles de cocción', 10, 79.99, 'microondas.jpg'),
('P017', 'Cafetera', 'Cafetera de cápsulas con sistema de presión de 15 bares', 50, 99.99, 'cafetera.jpg'),
('P018', 'TV LED 50\"', 'Televisor LED de 50 pulgadas con resolución Full HD', 8, 459.99, 'tv.jpg'),
('P019', 'Consola de Videojuegos', 'Consola de videojuegos de última generación con 1TB de almacenamiento', 12, 499.99, 'consola.jpg'),
('P020', 'Aspiradora Robótica', 'Aspiradora robótica con sistema de navegación inteligente', 18, 299.99, 'aspiradora.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codProd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
