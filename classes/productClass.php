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
    public $product_id;
    public $product;

    public function GetAllProducts(){
        $products = mysqli_query($this->Connect(), 'SELECT * FROM product ORDER BY DATE DESC ');

        if( ! mysqli_num_rows($products) ) {
            return false;
        } else {
            return $products;
        }
    }

    public function Pagination(){
//        $result = mysqli_query($this->Connect(),"SELECT * FROM product");
//        $posts = mysqli_fetch_row($result);
//        $num = 3; //products count in 1 page
//        $total = intval(($posts - 1) / $num) + 1;
//        var_dump($total);
        exit();

    }

    public function ProductIdValidation($product_id){

        $this->product_id = intval($product_id);
        if(!$this->product_id){
            return false;
            //404 page;
        }
        return $this->product_id;
    }

    public function GetProduct($id){
        $valid_id = $this->ProductIdValidation($id);
        if(!$valid_id){
//            echo "id not valid <br>";
            return false;
        }

        $product = mysqli_query($this->Connect(), "SELECT * FROM product WHERE id = $valid_id");
        $row = mysqli_fetch_array($product);

//        if( ! mysqli_num_rows($product) ) {
//            return false;
//        }

        if(!$row){
            var_dump($row);
            return false;
        }
//         ya manal.....
        $product = mysqli_query($this->Connect(), "SELECT * FROM product WHERE id = $valid_id");
        return $product;
    }
}