-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2024 a las 05:02:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mercadolibre`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `title`, `permalink`, `thumbnail`, `price`) VALUES
('MLU644855348', 'Nintendo Lite Switch Lite 32gb Standard  Color Turquesa 2017', 'https://www.mercadolibre.com.uy/nintendo-lite-switch-lite-32gb-standard-color-turquesa-2017/p/MLU15191031', 'http://http2.mlstatic.com/D_827500-MLA40176358181_122019-I.jpg', 259),
('MLU688768934', 'Sony Playstation 5 Slim 1tb Digital Color  Blanco', 'https://www.mercadolibre.com.uy/sony-playstation-5-slim-1tb-digital-color-blanco/p/MLU29001054', 'http://http2.mlstatic.com/D_970771-MLA73347645092_122023-I.jpg', 719),
('MLU647102980', 'Volante Pedalera Logitech G29 - Ps4 Ps3 Y Pc - Cover Co Color Negro', 'https://www.mercadolibre.com.uy/volante-pedalera-logitech-g29-ps4-ps3-y-pc-cover-co-color-negro/p/MLU22307702', 'http://http2.mlstatic.com/D_892942-MLU72932991149_112023-I.jpg', 349),
('MLU616789927', 'Consola Xbox Series X Xbox Series X 1tb Standard  Color Negro 2020', 'https://www.mercadolibre.com.uy/consola-xbox-series-x-xbox-series-x-1tb-standard-color-negro-2020/p/MLU16160759', 'http://http2.mlstatic.com/D_942133-MLA74651936102_022024-I.jpg', 862),
('MLU610331588', 'Joystick Jedel Gp2 Usb Pc Negro', 'https://www.mercadolibre.com.uy/joystick-jedel-gp2-usb-pc-negro/p/MLU18711284', 'http://http2.mlstatic.com/D_903142-MLA48763613534_012022-I.jpg', 260),
('MLU652444162', 'Joystick Inalámbrico Nintendo Switch Joy-con (l)/(r) Neón Verde Neón Y Rosa Neón', 'https://www.mercadolibre.com.uy/joystick-inalambrico-nintendo-switch-joy-con-lr-neon-verde-neon-y-rosa-neon/p/MLU17467203', 'http://http2.mlstatic.com/D_801937-MLA45384706036_032021-I.jpg', 99),
('MLU603302376', 'Microsoft Xbox Series S 512gb Standard  Color Blanco 2020', 'https://www.mercadolibre.com.uy/microsoft-xbox-series-s-512gb-standard-color-blanco-2020/p/MLU16650345', 'http://http2.mlstatic.com/D_677312-MLU72567435636_112023-I.jpg', 512),
('MLU653835736', 'Joystick Xtrike Me Inalambrico Ps3 Ps4 Ios Pc Con Luces Dimm', 'https://www.mercadolibre.com.uy/joystick-xtrike-me-inalambrico-ps3-ps4-ios-pc-con-luces-dimm/p/MLU26155396', 'http://http2.mlstatic.com/D_740527-MLU78388111637_082024-I.jpg', 1363),
('MLU645013280', 'Nintendo Switch Oled 64gb Standard  Color Neón 2021', 'https://www.mercadolibre.com.uy/nintendo-switch-oled-64gb-standard-color-neon-2021/p/MLU18537258', 'http://http2.mlstatic.com/D_803086-MLA47920649105_102021-I.jpg', 439),
('MLU604623335', 'Nintendo Switch Oled 64gb Standard Color  Blanco Y Negro Color Blanco/negro', 'https://www.mercadolibre.com.uy/nintendo-switch-oled-64gb-standard-color-blanco-y-negro-color-blanconegro/p/MLU24560884', 'http://http2.mlstatic.com/D_750185-MLU73697302051_122023-I.jpg', 459),
('MLU626456635', 'Silla De Escritorio Corsair T3 Rush Gamer Ergonómica  Charcoal Con Tapizado De Tela', 'https://www.mercadolibre.com.uy/silla-de-escritorio-corsair-t3-rush-gamer-ergonomica-charcoal-con-tapizado-de-tela/p/MLU16171814', 'http://http2.mlstatic.com/D_658472-MLU72733146745_112023-I.jpg', 374);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
