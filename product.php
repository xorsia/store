<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 04.05.2020
 * Time: 12:18
 */

require_once ("./classes/productClass.php");
require_once ("./classes/commentClass.php");
include_once ('header.php');


    $product = new Product();
    $num = intval($_GET['id']);

    if($num){
        if(!($model=$product->GetProduct($num)) || is_null(mysqli_fetch_array($model))){
            echo "SQL MAP>>>CATCH";
            exit();
        }else {
            $row = mysqli_fetch_array($product->GetProduct($num));
            echo "<table border='1'>";
                echo "<tr>";
                echo "<th>";
                echo $row[0]."| ";
                echo $row[1];
                echo "</th>";
                echo "</tr>";
            echo "<tr>";
            echo "<th>";
            echo $row[2];
            echo "</th>";
            echo "</tr>";
                echo "<tr>";
                echo "<th>";
                echo "<img src=\"$row[5]\" width=\"300\" height=\"300\" alt=\"lorem\">";
                echo "</th>";
                echo "</tr>";
            echo "<tr>";
            echo "<th>";
            echo $row[3];
            echo "</th>";
            echo "</tr>";
                echo "<tr>";
                echo "<th>";
                echo "BUY----> ".$row[7];
                echo "</th>";
                echo "</tr>";
                echo "</table>";

                //вывод коменнтов привязаных к данному айдишнику\\


            echo "C O M M E N T S <hr>";

            include './classes/commentBlock.php';
            $commentObj = new Comment();
            $commentObj->AddComment($num,$_POST['name'],$_POST['comment']);
            $commentModel = $commentObj->GetCommentList($row[0]);

            if($commentModel){
            while ($row = mysqli_fetch_row($commentModel)) {
                echo "<table border='1'>";
                echo "<tr>";
                echo "<th> $row[1]</th>";
                echo "</tr>";
                echo "<tr>";
                echo "<th> $row[2]</th>";
                echo "</tr>";
                echo "<tr>";
                echo "<th> $row[3]</th>";
                echo "</tr>";
                echo "</table>";
                echo "<br><br>";
            }
            }
        }
    }else{
        $products = $product->GetAllProducts();

        if($products != false ){
            echo "<table border='1' cellpadding='5'>";
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
        }
    }


//    $model =  $row = mysqli_fetch_row($products);
//    echo "<pre>";
//