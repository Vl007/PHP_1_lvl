<?php
$title = 'Первое задание по курсу PHP_1_lvl';
$date_today = date("d.m.Y"); //присвоено 12.03.15';
$today = date("H:i:s:"); //присвоит 1 элементу массива 18:32:17
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $title ?></title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/2be8c6b35f.js" crossorigin="anonymous"></script>
</head>
<body>

<?php

// Задание #3
$a = 5;
$b = '05';
var_dump($a == $b);         // Почему true? Тут движок php преобразовывает строку '05' в 5 нули откидывает вначале и при нестрогом сравнении 5 == 5, если бы было строгое то было бы false.
var_dump((int)'012345');     // Почему 12345? Целое число не может начинаться с '0'. Поэтому движок php откдывает его. Если бы там было пять 0, то так же бы их откинул.
var_dump((float)123.0 === (int)123.0); // Почему false? Тут идет строгое равно. Они разных типов поэтому false. Если бы было ==, то тогда бы было true. А int откидывает дробную часть. Поэтому если бы было (float)123.0 == (int)123.8, то было бы true.
var_dump((int)0 === (int)'hello, world'); // Почему true? Строгое сравнение типы оба int. Int вторую часть где строка преобразовал в '0', так как строка не начинается на пробел и далее цифры или же просто с цифры, а потом текст. Если бы было '1hello world', то int привел бы к 1.

// Задание #4
echo ("<p class='date_p'>Текущее время: $today, текущая дата: $date_today.</p>");

// Задание #5
$a = 1;
$b = 2;
if ($a != $b) {
    $a = $a + $b - ($b = $a);
    echo '<p>a = a + b - (b = a) - Сначала выполняется выражение в скобках ( так как больше приоритет ), а потом слева направо сначала "1 + 2" и потом вычитание "1". И уже в конце присваивается значение "а = 2".</p>';
    echo "<p> A =  {$a} </p>";
    //var_dump($a); Для проверки
    echo "<p> B =  {$b}  </p>";
    //var_dump($b); Для проверки
} else {
    echo '<p>числа равны</p>';
}
?>

</body>
</html>
