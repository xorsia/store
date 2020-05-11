<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 04.05.2020
 * Time: 12:33
 */

?>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>STORE</title>
</head>
<body>
<table border="1" width="100%" >
    <tr>
        <th><a href="index.php">главная</a></th>
        <th><a href="product.php"> продукты</a></th>
        <th><a href="blog.php"> блог</a></th>
        <th><a href="top"> контакты</a></th>
        <th><a href="top"> поддержка</a></th>
    </tr>

        <tr>
            <th>
                <a href="?sort=price_down">дешевые</a>
                <a href="?sort=price_up">дорогие</a>
                <a href="#"></a>
            <th>
            <th>
            <th>
            <th width="100">
                <form>
                    <p><input type="search" name="q" placeholder="Поиск по сайту">
                        <input type="submit" value="Найти"></p>
                </form>
            </th>
        </tr>

</table>
</body>
</html>
