<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 02.05.2020
 * Time: 14:33
 */

class Db{
    public $username = "root";
    public $password = "";
    public $host = "localhost";
    public $db_name = "store";

    public function Connect(){
        $link = mysqli_connect($this->host, $this->username, $this->password,$this->db_name);
        if(!$link){
            die('Error->mysql_connect'. mysql_error());
        }
        return $link;
    }

//    public function ShowAllProducts(){
//       $products = mysqli_query($this->Connect(), 'SELECT * FROM product');
//
//        echo "<pre>";
////        $model = mysqli_fetch_array($products);
////        print_r($products);
//
//        return $products;
//    }
//
//    public function ShowProduct($id){
//        //validation for id;
//        $products = mysqli_query($this->Connect(), "SELECT * FROM product WHERE id = $id");
//        //validation for products;
////        echo "<pre>";
////        var_dump(mysqli_fetch_array($products));
////        exit();
//        return $products;
//    }

//    public function DataValidation(){
//
//    }

//    public function WriteData($data){
//        $name = $data[0];
//        $title = $data[1];
//        $message = $data[2];
//
//        $result = $this->Connect()->query("INSERT INTO ".$this->db_table." (username,title,message,status) VALUES ('$name','$title','$message','1')");
//
//        if ($result == true){
//            echo "Информация занесена в базу данных";
//        }else{
//            echo "Информация не занесена в базу данных";
//        }
//    }
}