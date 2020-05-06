<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 06.05.2020
 * Time: 19:37
 */

require_once ('db.php');

class Comment extends Db {
    public function GetCommentList($product_id){
        $comments = mysqli_query($this->Connect(), "SELECT * FROM `comments` WHERE `product_id`='$product_id'");
        //добавить єто проверку ко всем ...
        if( ! mysqli_num_rows($comments) ) {
            //рекурсия опасная
           return $this->GetCommentList(666);
        } else {
            return $comments;
        }

    }
}