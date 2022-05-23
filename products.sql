-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 23 2022 г., 03:17
-- Версия сервера: 5.7.38
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `crud`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text,
  `last_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `last_add`, `last_edit`) VALUES
(1, 'Product 1', 100, 'Lorem Ipsum', '2022-05-22 23:44:35', '2022-05-22 23:44:35'),
(2, 'Product 2', 200, 'Lorem Ipsum 2	', '2022-05-22 23:45:25', '2022-05-22 23:45:25'),
(3, 'Product 3', 3000, 'Lorem Ipsum 3	', '2022-05-22 23:45:40', '2022-05-23 00:02:19'),
(4, 'Apple', 400, 'phone', '2022-05-23 00:16:32', '2022-05-23 00:16:32'),
(5, 'Lenovo', 900, 'laptop', '2022-05-23 00:16:46', '2022-05-23 00:16:46'),
(6, 'Acer', 650, 'laptop', '2022-05-23 00:17:00', '2022-05-23 00:17:00'),
(7, 'Acer', 220, 'monitor', '2022-05-23 00:17:44', '2022-05-23 00:17:44');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
