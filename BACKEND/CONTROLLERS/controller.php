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
    $price = $_POST['price'];
    $img = $_POST['img'];

    $result = (new product())->saveProduct($id, $title, $price,$img);
    echo json_encode($result);
};
