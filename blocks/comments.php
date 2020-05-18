<?php
/**
 * Created by PhpStorm.
 * User: L
 * Date: 07.05.2020
 * Time: 12:54
 */

?>

<form action="../product.php?id=<?php echo $_GET['id'] ?>" method="post">
    <label for="name">NAME</label>
    <br>
    <input type="text" name="name" id="name">

    <br>

    <label for="comment">TEXT</label>
    <br>
    <textarea name="comment" id="comment" rows="9" cols="50" ></textarea>
    <br>
<!--    <button type="submit">send</button>-->
    <input type="submit" value="send" name="sqr" />
</form>
