<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 04.05.2020
 * Time: 13:31
 */

require_once('db.php');

class Product extends Db {
    public $model;

    public function GetAllProducts(){
        $products = mysqli_query($this->Connect(), 'SELECT * FROM product');
        return $products;
    }

//    public function IntValidation($int){
//        $number = intval($int);
//
//        if($number){
//            return $number;
//        }
//    }

    public function GetProduct($id){
        $products = mysqli_query($this->Connect(), "SELECT * FROM product WHERE id = $id");
        return $products;
    }
}