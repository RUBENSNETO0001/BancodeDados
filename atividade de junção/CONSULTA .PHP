
<?php 
$nome = "gabigol";
$email = "gabigol@gmail.com";
$senha = "125";

$consulta_sql = $conexao->query("INSERT INTO usuario(nome , senha , email) 
VALUES ('$nome','$senha', '$email')");

if($inserir_dados == true){
    echo'dados inseridos com sucesso';
}

else {
    echo'nao ta inserido';
}

?>