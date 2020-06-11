<?php
// 8. *Повторить третье задание, но вывести на экран только города, начинающиеся с буквы «К».
$homework3 = [
    'Московская область' => ['Москва', 'Зеленоград', 'Клин'],
    'Ленинградская область' => ['Санкт-Петербург', 'Всеволожск', 'Павловск', 'Кронштадт'],
    'Рязанская область' => ['Рязань', 'Касимов', 'Скопин'],
    'Смоленская область' => ['Велиж', 'Вязьма', 'Гагарин', 'Демидов', 'Смоленск'],
    'Прочие' => 'Какие-то города'
];

foreach ($homework3 as $key => $value){
    $sortArr = [];
    if (is_array($value)){
        foreach ($value as $town){
            if (mb_substr(mb_strtoupper($town), 0, 1) == "К"){
                array_push($sortArr, $town);
            }
        }
        if (count($sortArr) > 0){
            echo $key . ': <br>';
            echo (implode(', ', $sortArr)) . '.<br><br>';
        }
    } else {
        if (mb_substr(mb_strtoupper($value), 0, 1) == 'К'){
            echo $key . ':<br>';
            echo $value;
        }
    }
}
