<?php
//2. С помощью цикла do…while написать функцию для вывода чисел от 0 до 10, чтобы результат выглядел так:
//0 – ноль.
//1 – нечетное число.
//2 – четное число.
//3 – нечетное число.
//…
//10 – четное число.
function outputOfNumbers ($n) {
    if ($n === 0) {
        return $n . '-' . 'Это ноль';
    }
    if ($n % 2 !== 0) {
        return $n . '-' . 'Это нечетное число';
    } else {
        return $n . '-' . 'Это четное число';
    }
}

$i = 0;
$max = 10;

do {
    echo '<prev>';
    echo (outputOfNumbers($i));
    $i++;
    echo '</prev>';
} while($i <= $max);