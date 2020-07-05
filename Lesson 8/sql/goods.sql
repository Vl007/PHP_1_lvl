-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 05 2020 г., 22:36
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

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article` (`article`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
