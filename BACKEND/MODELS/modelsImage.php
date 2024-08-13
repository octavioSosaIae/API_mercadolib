<?php

require_once "../CONECTION/conection.php";

class image {
    

    public function uploadImg($imagen){

        $conection = new conection;
        $conn = $conection->conection();
        $nomImg = $imagen['name'];
        $extension = pathinfo($nomImg, PATHINFO_EXTENSION);
        $sql = "INSERT INTO imagen VALUES(0,'$nombre', '$extension');";
        $conn->query($sql);
        $id = $conn->insert_id;
        $rutaTemp = $imagen['tmp_name'];
        move_uploaded_file($rutaTemp, "../IMAGENES/$id.$extension");
    }


    public function verImg(){

        $conexion = new conec;
        $conn = $conexion->conexion();
        $sql = "SELECT * FROM imagen";
        $respuesta = $conn->query($sql);
        $imagenes = $respuesta->fetch_all(MYSQLI_ASSOC);
        return $imagenes;

    }



}
