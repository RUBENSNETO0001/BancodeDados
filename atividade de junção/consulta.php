<?php 

include 'atividade01.php';

//FAZ A CONSULTA
$consulta_sql = $conexao->query("SELECT * FROM usuario");

//GUARDA A CONSULTA
$resultados = $consulta_sql->fetch_all(MYSQLI_ASSOC);

ECHO '<PRE>';
print_r( $resultados);
ECHO'</PRE>';
/////////////////////////////////////////////
foreach($resultados as $pessoas){
    echo $pessoas['nome']. "<br>";
    echo $pessoas['email']. "<br>";
    echo "<br>";
}
///////////////////////////////////
$consulta_sql = $conexao->query("SELECT * FROM usuario");

$um_usuario = $consulta_sql->fetch_assoc();


ECHO '<PRE>';
print_r( $um_usuario);
ECHO'</PRE>';

 /////////////////////////
$nome = "gabigol";
$email = "gabigol@gmail.com";
$senha = "125";

$inserir_dados= $conexao->query("INSERT INTO usuario(nome , senha , email) 
VALUES ('$nome','$senha', '$email')");

if($inserir_dados == true){
    echo'dados inseridos com sucesso';
}

else {
    echo'nao ta inserido';
}

?>
