<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 02.05.2020
 * Time: 14:32
 */
require_once ("./classes/productClass.php");
include_once ('header.php');
    $db = new Product();
    $products = $db->GetAllProducts();
    //титульная страница
    //сделать вывод парочку статей из блога вывести лучшие товары со скидкой вывести главную информацию которкую про нас
//    echo "<table border='1'>";
//    while ($row = mysqli_fetch_row($products)) {
//        echo "<tr>";
//            echo "<th> $row[0]</th>";
//            echo "<th> <img src=\"$row[5]\" width=\"50\" height=\"50\" alt=\"lorem\">";
//            echo "<th><a href=\"product.php?id=$row[0]\"> $row[1]</a></th>";
//            echo "<th> $row[2]</th>";
//            echo "<th> $row[4]</th>";
//            echo "<th> $row[7]</th>";
//            echo "<th> $row[8]</th>";
//        echo "</tr>";
////        echo "<li>$row[2]</li>";
//    }
//    echo "</table>";
//    $db->ShowProduct(2);