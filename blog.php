<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 04.05.2020
 * Time: 16:14
 */

include_once ('header.php');
require_once ('./classes/blogClass.php');

$post = new Blog();
$model = $post->getAllPosts();

$id = $_GET['id'];

if($model=$post->getPost($id)){
    while ($row = mysqli_fetch_row($model)) {
        echo "<table border='1'>";
        echo "<tr>";
        echo "<th><a href=\"blog.php?id=$row[0]\"> $row[1]</a></th>";
        echo "</tr>";
        echo "<tr>";
        echo "<th> <img src=\"$row[7]\" width=\"250\" height=\"250\" alt=\"\">";
        echo "</tr>";
        echo "<tr>";
        echo "<th> $row[2]</th>";
        echo "</tr>";
        echo "<tr>";
        echo "<th> $row[4]</th>";
        echo "</tr>";
        echo "<tr>";
        echo "<th> $row[5]</th>";
        echo "</tr>";
        echo "</table>";
        echo "<br><br>";
    }
}else{
    $posts = $post->GetAllPosts();
    //проверить нужно ли тут делать проверку как и во всех вьюхах
    if($posts){
        echo "<table border='1' cellpadding='5'>";
        while ($row = mysqli_fetch_row($posts)) {
            echo "<tr>";
            echo "<th> $row[0]</th>";
            echo "<th> <img src=\"$row[7]\" width=\"50\" height=\"50\" alt=\"\">";
            echo "<th><a href=\"blog.php?id=$row[0]\"> $row[1]</a></th>";
            echo "<th> $row[2]</th>";
            echo "<th> $row[3]</th>";
            echo "</tr>";
        }
        echo "</table>";
    }
}

