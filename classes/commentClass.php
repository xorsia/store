<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 06.05.2020
 * Time: 19:37
 */

require_once ('db.php');

class Comment extends Db {

    public $name;
    public $text;
    public $product_id;

    public function GetCommentList($product_id){
        $comments = mysqli_query($this->Connect(), "SELECT * FROM `comments` WHERE `product_id`='$product_id' ORDER BY `date` DESC");
        if( ! mysqli_num_rows($comments) ) {
            return false;
        } else {
            return $comments;
        }

    }

    public function CommentValidation($product_id, $name, $text){

        $this->product_id = intval($product_id);
        if(!$this->product_id){
            return false;
        }

        $this->name =  filter_var($name, FILTER_SANITIZE_SPECIAL_CHARS);
        if(!$this->name){
            return false;
        }

        $this->text = filter_var($text, FILTER_SANITIZE_SPECIAL_CHARS);
        if(!$this->text){
            return false;
        }

        $model = array(
            'product_id' => $this->product_id,
            'name' => $this->name,
            'text' => $this->text,
        );

        return $model;
    }

    public function AddComment($product_id, $name, $text){
        $model = $this->CommentValidation($product_id,$name,$text);
        if(!$model){
            return false;
        }
        $sql = mysqli_query($this->Connect(), "INSERT INTO `comments` (`name`, `comment`,`product_id`) VALUES ('{$model['name']}', '{$model['text']}', '{$model['product_id']}')");
    }
}