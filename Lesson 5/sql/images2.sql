-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 18 2020 г., 13:30
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gallery`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images2`
--

CREATE TABLE `images2` (
  `id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL COMMENT 'адрес на сервере',
  `size` int(11) NOT NULL COMMENT 'размер',
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images2`
--

INSERT INTO `images2` (`id`, `address`, `size`, `name`) VALUES
(101, 'img/1.jpg', 111055, '1.jpg'),
(102, 'img/2.jpg', 107813, '2.jpg'),
(103, 'img/3.jpg', 153518, '3.jpg'),
(104, 'img/4.jpg', 122319, '4.jpg'),
(105, 'img/5.jpg', 197595, '5.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images2`
--
ALTER TABLE `images2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `size` (`size`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images2`
--
ALTER TABLE `images2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
