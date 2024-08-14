<?php

require_once "../CONECTION/conection.php";


class product {

    function productExist($id) { 
        $conection = new conection;
        $conn = $conection->conection();
        $sql = "SELECT id FROM producto WHERE id = '$id'";
        $result = $conn->query($sql);
        return $result->num_rows > 0;
    }

    public function saveProduct($id,$title,$permalink,$thumbnail,$price){  // funcion para almacenar los productos en la base de datos  //


        $conection = new conection;
        $conn = $conection->conection();



        
    if ($this->productExist($id)) { 


        return $this->updateProduct($id, $title, $permalink, $thumbnail, $price); 

    } else {
        $sql = "INSERT INTO producto VALUES( '$id' ,'$title', '$permalink','$thumbnail','$price');";
        $response = $conn->query($sql);
        return $response;
    }

    }


 


    public function updateProduct($id,$title,$permalink,$thumbnail,$price){  // funcion para actualizar los productos de la base de datos  //


        $conection = new conection;
        $conn = $conection->conection();
        $sql = "UPDATE producto SET title = '$title', permalink = '$permalink', thumbnail = '$thumbnail', price = '$price' WHERE id = '$id'";
        $response = $conn->query($sql);
        return $response;

    }





}


