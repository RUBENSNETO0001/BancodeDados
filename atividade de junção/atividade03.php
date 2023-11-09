<?php 
$nome_servidor = "localhost";
$usuario = "root";
$senha ="";
$db_nome = "empresa";

try{
    $conexao = new mysqli($nome_servidor,$usuario, $senha, $db_nome );
   ECHO'AQUI DEU BOM';
}

catch(Exception $e){
 echo'houve um error no seu banco de dados'. $e->getMessage();
}
?>
