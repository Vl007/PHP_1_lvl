<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <title>Homework 4</title>
</head>

<body>

<div>
    <?php
    require 'homework_1.php'
    ?>
</div>

<form enctype="multipart/form-data" method="post" action="">
    <fieldset>
        <legend>Выберите изображение</legend><br>
        <input type="file" name="picture" required accept="image/*,image/jpeg"><br><br>
        <input type="submit" name="submit" value="Загрузить"><br><br>
    </fieldset>
</form>

<script src="gallery.js"></script>

</body>

</html>
