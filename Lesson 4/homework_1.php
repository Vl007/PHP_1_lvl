<?php
define('DIR', 'img/');
if (isset($_POST['submit'])) {
    $path = DIR . $_FILES['picture']['name'];
    if (!copy($_FILES['picture']['tmp_name'], $path)) {
        die("Не предвиденная ошибка загрузки файла!");
    }
}

function getImg($pathToDir) {
    $dirArr = scandir($pathToDir);
    $imgArr = [];
    foreach ($dirArr as $key => $value){
        if(preg_match("/.+\.(jpg|png)/u", $value)  && filesize("./img/{$value}") < 525288000){
            array_push($imgArr, $value);
        }
    }

    echo "<div class='boximg'>";
    foreach ($imgArr as $index => $img){
        echo "<div class='one_img'>";
        $path = "{$pathToDir}/{$img}";
        echo "<a href='img/{$img}' target='_blank'><img src='{$path}' alt='picture' class='img'></a>";
        echo "<button>Увеличить</button>";
        echo "</div>";
    }
    echo "</div>";
}

getImg('img');

function getLogFiles($date){
    if (file_exists('log/log.txt')){
        $fileArray = file("log/log.txt");
        $numberStr = count($fileArray);
        if ($numberStr < 10){
            file_put_contents('log/log.txt', $date . PHP_EOL, FILE_APPEND);
        } else {
            file_put_contents('log/countlog.txt', '1' . PHP_EOL, FILE_APPEND);
            $numberOfFileLog = count(file("log/countlog.txt"));
            rename('log/log.txt', "log/log{$numberOfFileLog}.txt");
        }
    } else {
        file_put_contents('log/log.txt', $date . PHP_EOL, FILE_APPEND);
    }
}

date_default_timezone_set('Europe/Moscow');
$date = date('d.m.Y - H:i:s');
getLogFiles($date);
