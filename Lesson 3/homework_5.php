<?php
// 5. Написать функцию, которая заменяет в строке пробелы на подчеркивания и возвращает видоизмененную строчку.

$line = "Рязань - это город в России, административный центр Рязанской области";
$searchElement = " ";
$replaceElement = "_";
echo 'Первый вариант :<br>';
echo (replaseSpases($searchElement, $replaceElement, $line));
echo '<br><br>';

// Первый вариант
function replaseSpases($search, $replace, $string){
    return str_replace($search, $replace, $string);
}

//  Второй вариант
$test = explode(" ", $line);
$test = implode("_", $test);
echo 'Второй вариант :<br>';
echo $test;
echo '<br><br>';
