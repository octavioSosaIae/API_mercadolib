<?php
require_once "../MODELS/model.php";


$function = $_GET['function'];



switch ($function) {

    case "saveProduct":

        save();

        break;
};




function save(){

    $id = $_POST['id'];
    $title = $_POST['title'];
    $permalink = $_POST['permalink'];
    $thumbnail = $_POST['thumbnail'];
    $price = $_POST['price'];

    $result = (new product())->saveProduct($id, $title,$permalink,$thumbnail, $price);
    echo json_encode($result);


    
};
