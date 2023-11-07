<?php 

$nome_servidor = "localhost";
$usuario = "SEU_USER";//O USER MANO
$senha ="";
$db_nome = "senai";

try{
   // conection for banc dados
    $conexao = new mysqli($nome_servidor,$usuario, $senha, $db_nome );
// ferificação se ta de boa
    echo 'de certo em';
}

catch(Exception $e){
 echo'houve um error no seu banco de dados'. $e->getMessage();
}

?>