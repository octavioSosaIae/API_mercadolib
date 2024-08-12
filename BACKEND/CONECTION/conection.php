<?php


class conection{

    function conection(){

        $host = "localhost";
        $usuario = "root";
        $password = "";  
        $bd = "mercadolibre";    
        $puerto = 3306;  
        $con = new mysqli($host, $usuario, $password, $bd, $puerto);   
    
        return $con;
        
    }



}



