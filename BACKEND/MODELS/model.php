<?php

require_once "../CONECTION/conection.php";


class product {

    public function saveProduct($id,$title,$price,$img,){


        $conection = new conection;
        $conn = $conection->conection();
        $sql = "INSERT INTO producto VALUES( '$id' ,'$title', '$price','$img');";
        $response = $conn->query($sql);
        return $response;

    }









}