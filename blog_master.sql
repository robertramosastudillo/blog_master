-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2018 a las 17:41:56
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Acción'),
(2, 'Rol'),
(3, 'Deportes'),
(4, 'Plataformas'),
(5, 'MMO RPG'),
(6, 'Nuevos Juegos'),
(7, 'Estrategia'),
(8, 'Arcade');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` mediumtext,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `usuario_id`, `categoria_id`, `titulo`, `descripcion`, `fecha`) VALUES
(1, 1, 1, 'Novedades de GTA 5 online', 'Review del GTA 5', '2018-11-19'),
(2, 1, 2, 'Review de LOL online', 'Todo sobre el LOL', '2018-11-19'),
(3, 1, 3, 'Nuevos jugadores de Fifa 19', 'Review del Fifa 19', '2018-11-19'),
(4, 2, 1, 'Novedades de Assasins online', 'Review del Assasins', '2018-11-19'),
(5, 2, 2, 'Review de WOW online', 'Todo sobre el WOW', '2018-11-19'),
(6, 2, 3, 'Nuevos jugadores de Pes 19', 'Review del Pes 19', '2018-11-19'),
(7, 3, 1, 'Novedades de Call of Duty online', 'Review del COD', '2018-11-19'),
(8, 3, 1, 'Review de Fortnite online', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laborum inventore aliquid officiis nesciunt temporibus saepe accusantium, tempore earum voluptate itaque autem. In aliquid doloribus sunt, commodi ad nulla incidunt asperiores reiciendis optio dignissimos maxime eos vitae, voluptates ex dolor. Cum fugit, mollitia nobis quas sit voluptatem quidem rerum temporibus quam laboriosam tenetur minus. Cum dolorem ea voluptatum nesciunt vel, ut totam eveniet, ullam doloremque aliquam aspernatur quod minima. Molestias, aliquid.', '2018-11-19'),
(9, 3, 3, 'Nuevos jugadores de Formula 1 2k20', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laborum inventore aliquid officiis nesciunt temporibus saepe accusantium, tempore earum voluptate itaque autem. In aliquid doloribus sunt, commodi ad nulla incidunt asperiores reiciendis optio dignissimos maxime eos vitae, voluptates ex dolor. Cum fugit, mollitia nobis quas sit voluptatem quidem rerum temporibus quam laboriosam tenetur minus. Cum dolorem ea voluptatum nesciunt vel, ut totam eveniet, ullam doloremque aliquam aspernatur quod minima. Molestias, aliquid.', '2018-11-19'),
(10, 3, 1, 'Guia de GTA Vice City', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laborum inventore aliquid officiis nesciunt temporibus saepe accusantium, tempore earum voluptate itaque autem. In aliquid doloribus sunt, commodi ad nulla incidunt asperiores reiciendis optio dignissimos maxime eos vitae, voluptates ex dolor. Cum fugit, mollitia nobis quas sit voluptatem quidem rerum temporibus quam laboriosam tenetur minus. Cum dolorem ea voluptatum nesciunt vel, ut totam eveniet, ullam doloremque aliquam aspernatur quod minima. Molestias, aliquid.', '2018-11-19'),
(11, 1, 2, 'Jugando con SQL', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laborum inventore aliquid officiis nesciunt temporibus saepe accusantium, tempore earum voluptate itaque autem. In aliquid doloribus sunt, commodi ad nulla incidunt asperiores reiciendis optio dignissimos maxime eos vitae, voluptates ex dolor. Cum fugit, mollitia nobis quas sit voluptatem quidem rerum temporibus quam laboriosam tenetur minus. Cum dolorem ea voluptatum nesciunt vel, ut totam eveniet, ullam doloremque aliquam aspernatur quod minima. Molestias, aliquid.', '2018-11-19'),
(13, 10, 5, 'Nuevo juego 1', 'dsdds', '2018-11-27'),
(14, 13, 7, 'Juego de estrategia', 'es un jeugo dkhsdfdffffffffff', '2018-11-27'),
(18, 10, 1, 'aaa', 'ssss', '2018-11-29'),
(19, 10, 5, 'Crash bandicot322', 'ddddsss123', '2018-11-29'),
(20, 10, 3, 'Fifa street 3', 'aasss', '2018-11-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `password`, `fecha`) VALUES
(1, 'Robert', 'Ramos', 'robert@ramos.com', '12345', '2018-11-16'),
(2, 'Antonio', 'Martinez', 'antonio@martinez.com', '12345', '2018-11-16'),
(3, 'Paco', 'Lopez', 'paco@lopez.com', '12345', '2018-11-16'),
(4, 'Admin', 'Admin', 'admin@admin.com', 'admin', '2018-11-19'),
(5, 'Kevin', 'Roldan', 'kevin@kevin.com', '$2y$04$RpmWF55i/As9xPE4hhy/6.GNHRXWYKx9eTc3hs6sMcv4PvCeSg5Ie', '2018-11-23'),
(6, 'aaaaa\'', 'hola\"', 'hola@gh.com', '$2y$04$ZG4hd/pforyZy3WkrgcI/OF5cA5Lo1NylGhYkySZxwkvOqDVYjQly', '2018-11-23'),
(8, 'eddd', 'sssss', 'aaaa@add.com', '$2y$04$jeh971ZL.RrXknt4hI0LbeYrXXj5W4nBnAHAkEysYdY40XzjBOlcy', '2018-11-23'),
(9, 'Juan', 'Valdes', 'juan@juan.com', '$2y$04$5GNQJ5x3WNdoBeHvLiBFkenM4GMG55NlYYLEfhD4tQX.0gqUZwGjC', '2018-11-23'),
(10, 'hola', 'hola', 'hola@hola.com', '$2y$04$NwlsF6aMrKad1MoDJasp3O2Lyvk33t./tYYr2/EipkzysQhW3/4oi', '2018-11-23'),
(11, 'hello', 'hello', 'hello@hello.com', '$2y$04$34K7wnBJ69hDrhb6FD.IX.8EAVkw.ge6yun2BqphonD5FjGTGE9OS', '2018-11-23'),
(12, 'Robert', 'Ramos', 'robertramosastudillo@gmail.com', '$2y$04$B8F7sXw.nKlQTr.aX87bweIotefomjJYSYUVxT1rMjoI4LN3gqe7.', '2018-11-27'),
(13, 'Andres', 'Chamorro', 'aux.sistemas@medex.com.co', '$2y$04$xnmpCBJlv73dft8ilgooZ.6EEPfYYnd4TVzTZpaEcnBLBY1rx3xZW', '2018-11-27'),
(14, 'Pushin', 'Mulato', 'pushin@mulato.com', '$2y$04$C4kPONMJL2chPEszRkH8GedauXJxQpoMJfHYcaoV5WWaLGDVixUEi', '2018-11-27'),
(15, 'Hola', 'Grupo', 'hola@grupo.com', '$2y$04$uBLE1emnOL0WSeuajmzU5uKXE8ziJDvX11ksoOxE8/7gPQNmVivTq', '2018-11-27'),
(16, 'asd', 'fgh', 'asd@fgh.com', '$2y$04$FFGnxemXfdEmxZWSAqUL..zHbqFW6LvYdZHGI3luhJ3Ue7Sd6mWbK', '2018-11-27'),
(17, 'zxc', 'vbn', 'zxc@vbn.com', '$2y$04$UlWKp6Vkr32AQXtF9YH9Aurjz0FyQ3BQYzIAQx0aAClaNfn9JMuXa', '2018-11-27'),
(18, 'Pipe', 'Gonzales', 'pipe@gmail.com', '$2y$04$Zvbm5l1UzXxHEZycx6/Ite/9k1/vOPwrBe3Pj5rXa37SPB9wkaVLu', '2018-12-04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_entrada_usuario` (`usuario_id`),
  ADD KEY `FK_entrada_categoria` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `FK_entrada_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `FK_entrada_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
