-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 05 2020 г., 22:53
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
-- База данных: `lesson6`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `time` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `buyer` varchar(100) NOT NULL,
  `goods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Оплачен'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `time`, `address`, `buyer`, `goods`, `status`) VALUES
(21, '2020/05/05 - 01:00', 'Spain/13/77/', 'Djon777', '{\"HTC\": {\"img\": \"htc.jpg\", \"name\": \"HTC\", \"count\": 1, \"price\": \"900\", \"article\": \"htc-model-1\"}, \"Samsung Galaxy S11\": {\"img\": \"samsung-galaxy-s11.jpg\", \"name\": \"Samsung Galaxy S11\", \"count\": 1, \"price\": \"1700\", \"article\": \"Samsung-galaxy-s11\"}}', 'Отправлен'),
(24, '2020/05/05 - 10:10', 'Italy/44/5f/', 'Mike123', '{\"HTC\": {\"img\": \"htc.jpg\", \"name\": \"HTC\", \"count\": 2, \"price\": \"900\", \"article\": \"htc-model-1\"}, \"Samsung Galaxy S11\": {\"img\": \"samsung-galaxy-s11.jpg\", \"name\": \"Samsung Galaxy S11\", \"count\": 1, \"price\": \"1700\", \"article\": \"Samsung-galaxy-s11\"}}', 'Оплачен'),
(25, '2020/05/05 - 20:20', 'Italy/11d/13/', 'Mike123', '{\"Iphone 11 pro max\": {\"img\": \"iphone-11-pro-max.jpg\", \"name\": \"Iphone 11 pro max\", \"count\": 2, \"price\": \"2500\", \"article\": \"iphone11promax\"}}', 'Оплачен'),
(26, '2020/05/05 - 12:12', 'London/1c/5b/', 'Mike123', '{\"HTC\": {\"img\": \"htc.jpg\", \"name\": \"HTC\", \"count\": 1, \"price\": \"900\", \"article\": \"htc-model-1\"}, \"Samsung Galaxy S11\": {\"img\": \"samsung-galaxy-s11.jpg\", \"name\": \"Samsung Galaxy S11\", \"count\": 1, \"price\": \"1700\", \"article\": \"Samsung-galaxy-s11\", \"Iphone 11 pro max\": {\"img\": \"iphone-11-pro-max.jpg\", \"name\": \"Iphone 11 pro max\", \"count\": 2, \"price\": \"2500\", \"article\": \"iphone11promax\"}}', 'Принят');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
