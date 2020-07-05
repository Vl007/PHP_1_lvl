-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 05 2020 г., 22:41
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
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `article` varchar(50) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `article`, `comment`) VALUES
(4, 'iphone11', '1 commit'),
(5, 'htc1', '1 commit'),
(6, 'htc1', '2 commit'),
(7, 'Samsung1', '1 commit'),
(8, 'htc1', 'lorem10'),
(9, 'htc1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse eum optio veritatis? Distinctio eveniet libero magni quae quam qui? Doloremque earum laborum vel. Atque autem doloremque, earum fugit inventore, ipsam libero minus molestias officiis ratione repellendus sit soluta unde veniam!'),
(11, 'iphone11', '2 commit'),
(12, 'Samsung1', '2 commit');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'Название товара',
  `description` text NOT NULL COMMENT 'Описание товара',
  `img` varchar(50) NOT NULL COMMENT 'Путь к картинке',
  `price` int(11) NOT NULL COMMENT 'Цена',
  `comments` text NOT NULL COMMENT 'Комментарий',
  `article` varchar(50) NOT NULL COMMENT 'Артикул'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `description`, `img`, `price`, `comments`, `article`) VALUES
(1, 'Iphone 11 pro max', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores aspernatur, consequuntur dolor eaque eligendi harum repudiandae totam! Aut eveniet facilis libero, maiores molestiae possimus reiciendis saepe sint voluptatem! Aliquid consequuntur eligendi nobis obcaecati voluptates. Ad aliquid, consequatur culpa doloremque eaque et inventore modi molestias pariatur quas quisquam soluta ullam vel!', 'iphone-11-pro-max.jpg', 2500, '', 'iphone11promax'),
(2, 'HTC', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores aspernatur, consequuntur dolor eaque eligendi harum repudiandae totam! Aut eveniet facilis libero, maiores molestiae possimus reiciendis saepe sint voluptatem! Aliquid consequuntur eligendi nobis obcaecati voluptates. Ad aliquid, consequatur culpa doloremque eaque et inventore modi molestias pariatur quas quisquam soluta ullam vel!', 'htc.jpg', 900, '', 'htc-model-1'),
(3, 'Samsung Galaxy S11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores aspernatur, consequuntur dolor eaque eligendi harum repudiandae totam! Aut eveniet facilis libero, maiores molestiae possimus reiciendis saepe sint voluptatem! Aliquid consequuntur eligendi nobis obcaecati voluptates. Ad aliquid, consequatur culpa doloremque eaque et inventore modi molestias pariatur quas quisquam soluta ullam vel!', 'samsung-galaxy-s11.jpg', 1700, '', 'Samsung-galaxy-s11');

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
(21, '2020/07/05 - 02:00', 'Germany/45/45/', 'asd', '{\"htc1\": {\"img\": \"htc.jpg\", \"name\": \"HTC\", \"count\": 1, \"price\": \"1000\", \"article\": \"htc1\"}, \"Samsung1\": {\"img\": \"samsung.jpg\", \"name\": \"Samsung\", \"count\": 1, \"price\": \"1500\", \"article\": \"Samsung1\"}}', 'Отправлен'),
(24, '2020/07/05 - 13:16', 'Bangladesh/ds/ds/', '123', '{\"htc1\": {\"img\": \"htc.jpg\", \"name\": \"HTC\", \"count\": 2, \"price\": \"1000\", \"article\": \"htc1\"}, \"Samsung1\": {\"img\": \"samsung.jpg\", \"name\": \"Samsung\", \"count\": 1, \"price\": \"1500\", \"article\": \"Samsung1\"}}', 'Оплачен'),
(25, '2020/07/05 - 13:23', 'Bangladesh/e/e/', '123', '{\"iphone11\": {\"img\": \"iphone.jpg\", \"name\": \"Iphone\", \"count\": 2, \"price\": \"2000\", \"article\": \"iphone11\"}}', 'Оплачен'),
(26, '2020/07/05 - 13:30', 'Bangladesh/32/32/', '123', '{\"htc1\": {\"img\": \"htc.jpg\", \"name\": \"HTC\", \"count\": 1, \"price\": \"1000\", \"article\": \"htc1\"}, \"Samsung1\": {\"img\": \"samsung.jpg\", \"name\": \"Samsung\", \"count\": 1, \"price\": \"1500\", \"article\": \"Samsung1\"}, \"iphone11\": {\"img\": \"iphone.jpg\", \"name\": \"Iphone\", \"count\": 5, \"price\": \"2000\", \"article\": \"iphone11\"}}', 'Принят');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_admin` int(11) DEFAULT 0 COMMENT 'Права'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `password`, `is_admin`) VALUES
(1, 'admin', 'admin', '15e05166b2bed965d4585058dbc75a8a', 1),
(30, 'asd', 'asd', '970b0290072e9dffa6c8e7a1cb30f9d7', 0),
(31, '123', '123', '15e05166b2bed965d4585058dbc75a8a', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article` (`article`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article` (`article`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
