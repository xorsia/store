<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 11.05.2020
 * Time: 21:24
 */
require_once("db.php");

class Blog extends Db {
    public $post_id;

    public function GetAllPosts(){
        $posts = mysqli_query($this->Connect(), "SELECT * FROM `blog`  ORDER BY `date` DESC");
        if( ! mysqli_num_rows($posts) ) {
            return false;
        } else {
            return $posts;
        }
    }

    public function PostIdValidation($post_id){

        $this->post_id = intval($post_id);
        if(!$this->post_id){
            return false;
            //404 page;
        }
        return $this->post_id;
    }

    public function searchPost($q){
        $query = "SELECT * FROM `blog` WHERE (`author` LIKE '%$q%' OR `title` LIKE '%$q%'  OR `short_text` LIKE '%$q%')";
        $searchModel = mysqli_query($this->Connect(), $query);

        return $searchModel;
    }

    public function getPost($id){
        $valid_id = $this->PostIdValidation($id);
        $posts = mysqli_query($this->Connect(), "SELECT * FROM `blog` WHERE `id`='$valid_id' ORDER BY `date` DESC");
        if( ! mysqli_num_rows($posts) ) {
            return false;
        } else {
            return $posts;
        }
    }
}