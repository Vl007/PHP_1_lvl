<?php
// Задание 1
echo '<h3 style="color: firebrick">Задание 1</h3>';
$a = mt_rand(-13, 13);
$b = mt_rand(-13, 13);
if ($a >= 0 and $b >= 0){
    echo "<h3 style='color: firebrick'>Оба числа больше или равно 0 их разность равна $a - $b =  <span style='color: green'>" . ($a - $b) . "</span></h3>";
}elseif ($a < 0 && $b < 0){
    echo "<h3 style='color: cornflowerblue'>Оба числа меньше 0 их произведение равно ($a) * ($b) = <span style='color: green'>" . ($a * $b) . "</span></h3>";
}else { // (($a < 0 && $b >=0) || ($a >=0 && $b < 0))  дополнительную проверку не надо
    echo "<h3 style='color: lightcoral'>Числа разных знаков сумма ($a) + ($b) = <span style='color: green'>" . ($a + $b) . "</span></h3>";
}

// Задание 2
echo '<h3 style="color: firebrick">Задание 2</h3>';
$a = mt_rand(0,15);
//$x = 10;
//var_dump($x);
switch ($a){
    case 0:
        echo '<p>0</p>';
    case 1:
        echo '<p>1</p>';
    case 2:
        echo '<p>2</p>';
    case 3:
        echo '<p>3</p>';
    case 4:
        echo '<p>4</p>';
    case 5:
        echo '<p>5</p>';
    case 6:
        echo '<p>6</p>';
    case 7:
        echo '<p>7</p>';
    case 8:
        echo '<p>8</p>';
    case 9:
        echo '<p>9</p>';
    case 10:
        echo '<p>10</p>';
    case 11:
        echo '<p>11</p>';
    case 12:
        echo '<p>12</p>';
    case 13:
        echo '<p>13</p>';
    case 14:
        echo '<p>14</p>';
    case 15:
        echo '<p>15</p>';
        break;
    default:
        echo 'Число должно быть в диапазоне от 0 до 15 включительно <br>';
}

// Задание 3 и 4
/**
 * @param int $a
 * @param int $b
 * @param string $operation // Может выполнить только при символах:  +  -  *
 * @return int
 */
function getResultByOperation(int $a, int $b, string $operation){
    switch ($operation) {
        case '+':
            return sum($a, $b);
        case '-':
            return subtraction($a, $b);
        case '/':
            return division($a, $b);
        case '*':
            return multiplication($a, $b);
        default:
            return 'Такого выражения нету';
    }
}

/**
 * Функция складывает два переданных в неё числа
 * @param int $a
 * @param int $b
 * @return int
 */
function sum(int $a, int $b){
    return $a + $b;
}

/**
 * Вычитает два переданных в неё числа
 * @param int $a
 * @param int $b
 * @return int
 */
function subtraction(int $a, int $b){
    return $a - $b;
}

/**
 * Функция умножает два переданных в неё числа
 * @param int $a
 * @param int $b
 * @return int
 */
function multiplication(int $a, int $b){
    return $a * $b;
}
/**
 * Функция делит два переданных в неё числа
 * @param int $a
 * @param int $b
 * @return float|int
 */
function division(int $a, int $b){
    return $a / $b;
}
echo '<h3 style="color: firebrick">Задание 3 и 4</h3><br>';
echo (sum(3,2) . '<br>');
echo '<br>';
echo (subtraction(7,2) . '<br>');
echo '<br>';
echo (multiplication(13,2) . '<br>');
echo '<br>';
echo (division(30,2) . '<br>');
echo "<br><br><br><br>";
echo (getResultByOperation(7, 7, '+') . "<br>");
echo '<br>';
echo (getResultByOperation(7, 7, '-') . '<br>');
echo '<br>';
echo (getResultByOperation(7, 7, '/') . '<br>');
echo '<br>';
echo (getResultByOperation(7, 7, '*') . '<br>');
echo '<br>';
echo (getResultByOperation(7, 7, ':') . '<br>');

// Задание 5
$timestamp = time(); // Зафиксировали время
$date = date('Y', $timestamp);
$html = file_get_contents('index.html');
$html = str_replace('{{YEAR}}', "$date", $html);
echo $html;

// Задание 6
/**
 * Функция возводит в степень $pow число $val
 * @param float|int $val
 * @param int $pow При 0 = 1. При 1 = $val
 * @return float|int
 */
echo '<h3 style="color: firebrick">Задание 6</h3>';
function div($val,int $pow){
    if ($pow == 0){
        return 1;
    }
    if ($pow == 1){
        return $val;
    }
    return $val * div($val, $pow -1);
}
echo (div(4,3));

// Задание 7
/**
 * Функция, которая вычисляет правильный падеж
 * @param $x integer
 * @param $var1 string {часов || минут || секунд}
 * @param $var2
 * @param $var3
 * @return string
 */
function endings($x,$var1,$var2,$var3): string
{
    $x0 = $x % 10;
    if ($x >= 5 and $x <=20){
        return $var1;
    }elseif ($x0 == 1){
        return $var2;
    }elseif ($x0 >= 2 && $x0 <= 4){
        return $var3;
    } else {
        return $var1;
    }
}

date_default_timezone_set('Europe/Moscow');
$hour = date('G');
$minute = date('i');
$second = date('s');
$hourVariant1 = 'часов';
$hourVariant2 = 'час';
$hourVariant3 = 'часа';
$minuteVariant1 = 'минут';
$minuteVariant2 = 'минута';
$minuteVariant3 = 'минуты';
$secondVariant1 = 'секунд';
$secondVariant2 = 'секунда';
$secondVariant3 = 'секунды';
//for($i=0; $i < 60; $i++){ проверка падежей
//    echo $i . ' ' . endings($i, $minuteVariant1, $minuteVariant2, $minuteVariant3) . '<br>';
//}
?>
<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Задание 7</title>
</head>
<body>
<h1 style="color: firebrick">Задание 7</h1>
<h2>
    <span><?php echo "$hour " . endings($hour, $hourVariant1, $hourVariant2, $hourVariant3); ?></span>
    <span><?php echo " $minute " . endings($minute, $minuteVariant1, $minuteVariant2, $minuteVariant3); ?></span>
    <span><?php echo " $second " . endings($second, $secondVariant1, $secondVariant2, $secondVariant3);?></span>
</h2>
</body>
</html>
