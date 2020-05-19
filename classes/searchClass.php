<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 19.05.2020
 * Time: 11:39
 */
require_once("db.php");
require_once("productClass.php");
require_once("blogClass.php");

class Search extends db {
    public $result = [];

    function qValidation($q){
        $qText =  filter_var($q, FILTER_SANITIZE_SPECIAL_CHARS);
        if(!$qText){
            return false;
        }
        return $qText;
    }

    public function startSearch($q){
        $q = $this->qValidation($q);
        if(!$q){
            echo "enter search text";
            return false;
        }
        $searchProd = new Product();
        $searchBlog = new Blog();
        $modelBlog = str_replace("$q","<b style='background-color: red; color: gold'>$q</b>",mysqli_fetch_array($searchBlog->searchPost($q)));
        $modelProd = str_replace("$q","<b style='background-color: red; color: gold'>$q</b>",mysqli_fetch_array($searchProd->searchProduct($q)));

        if($modelBlog){
            return $modelBlog;
        } elseif($modelProd) {
            return $modelProd;
        } else {
            echo "not found---> : | ".$q." |";
            return false;
        }
    }
}