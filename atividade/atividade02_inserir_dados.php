<?php 
$nome_servidor = "localhost";
$usuario = "root";//O USER MANO
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

<?php
$nome = "gabigol";
$email = "gabigol@gmail.com";
$senha = "1252132132323";

$inserir_dados = $conexao->query("INSERT INTO usuario(nome , senha , email) 
VALUES ('$nome', '$senha' , '$email')");

if($inserir_dados == true){
    echo'dados inseridos com sucesso';
}

else {
    echo'não ta inserido';
}
?>
