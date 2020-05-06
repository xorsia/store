<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 04.05.2020
 * Time: 12:41
 */

require_once ("./classes/db.php");
include_once ('header.php');
$db = new Db;
$products = $db->ShowAllProducts();

echo "<table border='0' cellpadding='5'>";
while ($row = mysqli_fetch_row($products)) {
    echo "<tr>";
    echo "<th> $row[0]</th>";
    echo "<th> <img src=\"$row[5]\" width=\"50\" height=\"50\" alt=\"lorem\">";
    echo "<th><a href=\"product.php?id=$row[0]\"> $row[1]</a></th>";
    echo "<th> $row[2]</th>";
    echo "<th> $row[4]</th>";
    echo "<th> $row[7]</th>";
    echo "<th> $row[8]</th>";
    echo "</tr>";
}
echo "</table>";
