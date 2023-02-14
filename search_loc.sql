-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 14 2023 г., 18:32
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `search.loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `model_car` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color_car` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_cag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `car`
--

INSERT INTO `car` (`id`, `model_car`, `color_car`, `img_cag`) VALUES
(1, 'Mercedes-Benz', 'Grey', 'img/mercedes-benz_e-class.webp'),
(2, 'BMW', 'Black', 'img/bmw_x5.webp'),
(3, 'Chevrolet', 'Grey', 'img/chevrolet_camaro.webp'),
(4, 'Audi', 'White', 'img/audi_q7.webp'),
(5, 'Hyundai', 'Grey', 'img/hyundai-santa-fe.webp'),
(6, 'Toyota Land Cruiser', 'Grey', 'img/toyota_land-cruiser-prado.webp'),
(7, 'Volkswagen', 'Black', 'img/volkswagen_id-6-crozz.webp'),
(8, 'Volkswagen', 'Black', 'img/volkswagen_passat.webp'),
(9, 'Volkswagen', 'White', 'img/volkswagen_id-4.webp');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
