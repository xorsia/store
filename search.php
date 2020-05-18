<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 18.05.2020
 * Time: 10:53
 */


include('./header.php');
require_once('./classes/productClass.php');
require_once('./classes/blogClass.php');

function qValidation($q){
    $qText =  filter_var($q, FILTER_SANITIZE_SPECIAL_CHARS);
    if(!$qText){
        return 0;
    }
    return $qText;
}

$q = qValidation($_GET['q']);

$searchProd = new Product();
$searchBlog = new Blog();

//создать массив данных которые получил
//валидация входящих данных q;;;;


$modelBlog = mysqli_fetch_array($searchBlog->searchPost($q));
$modelProd = $searchProd->searchProduct($q);

$qcolor = str_replace($modelBlog['title'],"<h1 color='red'>".$q."</h1>",$modelBlog['title']);

print_r($qcolor);


echo "<hr>";

$phrase  = "You should eat fruits, vegetables, and fiber every day.";
$healthy = array("fruits", "vegetables", "fiber");
$yummy   = array("pizza", "beer", "ice cream");

$newphrase = str_replace($healthy, $yummy, $phrase);

?>

