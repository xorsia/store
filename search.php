<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 18.05.2020
 * Time: 10:53
 */

include('./header.php');
//require_once('./classes/productClass.php');
//require_once('./classes/blogClass.php');
require_once('./classes/searchClass.php');

//function qValidation($q){
//    $qText =  filter_var($q, FILTER_SANITIZE_SPECIAL_CHARS);
//    if(!$qText){
//        return 0;
//    }
//    return $qText;
//}

//function ShowSearchModels($model){
//    if(!$model){
//        return "not found";
//    }
//}

//$q = qValidation($_GET['q']);

//$searchProd = new Product();
//$searchBlog = new Blog();



//$modelBlog = str_replace("$q","<b style='background-color: red; color: gold'>$q</b>",mysqli_fetch_array($searchBlog->searchPost($q)));
//echo "<pre>";
//print_r($modelBlog);
//
//echo "<hr>";

$search = new Search();
$result = $search->startSearch($_GET['q']);

echo "<pre>";
print_r($result);
echo "</pre>";
?>

