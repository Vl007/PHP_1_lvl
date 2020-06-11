<!--10. Создать таблицу умножения используя циклы https://monosnap.com/file/OoWPKG8DVbiMusiCWHVpi7Z7VxesHo-->

<!doctype html>
<?php
$numbers = 10;
?>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Задание 10</title>
    <style>
        table{
            border-collapse: collapse;
            margin: 50px auto;
        }
        td {
            width: 60px;
            height: 60px;
            border: 3px solid peru;
            background-color: darkslateblue;
            text-align: center;
            font-size: 30px;
            color:whitesmoke;
        }

        .first {
            border-left: none;
            border-top: none;
            background: #ffffff;
        }

        .top {
            color: darkorange;
        }

        .left {
            color:mediumseagreen;
        }

    </style>

</head>

<body>

<table>

    <?php
    for ($i = 0; $i <= $numbers; $i++){
        echo '<tr>';
        for ($j = 0; $j <= $numbers; $j++){
            $res = $i * $j;
            if ($i === 0 && $j === 0){
                echo '<td class="first"></td>';
                continue;
            }

            if($i === 0){
                echo "<td class='top'>{$j}</td>";
                continue;
            }

            if ($j === 0){
                echo "<td class='left'>{$i}</td>";
                continue;
            }

            if ($i === $numbers && $j === $numbers){
                echo "<td class='bottom right'>{$res}</td>";
                continue;
            }

            if ($i === $numbers && $j !== 0){
                echo "<td class='bottom'>{$res}</td>";
                continue;
            }

            if ($j === $numbers && $i !== 0){
                echo "<td class='right'>{$res}</td>";
                continue;
            }
            echo "<td>{$res}</td>";
        }
        echo '</tr>';
    }
    ?>

</table>

</body>

</html>

