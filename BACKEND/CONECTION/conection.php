<<<<<<< HEAD
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



=======
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



>>>>>>> b9474459217a95ad7e0d57b82c8a9599f4f7e351
