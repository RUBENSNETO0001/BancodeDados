
<?php 

$nome_servidor = "localhost";
$usuario = "root";
$senha ="";
$db_nome = "empresa";

try{
    //tente estabelecer a conexão
    $conexao = new mysqli($nome_servidor,$usuario, $senha, $db_nome );
    //so para ve seu deu bom
    echo 'de certo em';
}
//para ve se da error, se der error isso aparece.
catch(Exception $e){
 echo'houve um error no seu banco de dados'. $e->getMessage();
}

?>
