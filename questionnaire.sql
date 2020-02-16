-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 16 2020 г., 13:57
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `questionnaire`
--

-- --------------------------------------------------------

--
-- Структура таблицы `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id` int(11) NOT NULL,
  `Answer` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questionnaire`
--

INSERT INTO `questionnaire` (`id`, `Answer`) VALUES
(1, 2),
(2, 14),
(3, 10),
(4, 2),
(5, 14),
(6, 10),
(7, 2),
(8, 30),
(9, 10),
(10, 30),
(11, 14),
(12, 2),
(13, 0),
(14, 4),
(15, 12),
(16, 0),
(17, 0),
(18, 16),
(19, 0),
(20, 4),
(21, 4),
(22, 8),
(23, 12),
(24, 8),
(25, 24),
(26, 4),
(27, 12),
(28, 0),
(29, 8),
(30, 2),
(31, 6),
(32, 8),
(33, 24),
(34, 4),
(35, 12),
(36, 16),
(37, 24),
(38, 8),
(39, 12),
(40, 4),
(41, 12),
(42, 4),
(43, 12),
(44, 2),
(45, 6),
(46, 1),
(47, 3),
(48, 0),
(49, 1),
(50, 4),
(51, 16),
(52, 12),
(53, 8),
(54, 2),
(55, 6),
(56, 4),
(57, 12),
(58, 16),
(59, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
