<?php 

include 'atividade01.php';

//FAZ A CONSULTA
$consulta_sql = $conexao->query("SELECT * FROM usuario");

//GUARDA A CONSULTA
$resultados = $consulta_sql->fetch_all(MYSQLI_ASSOC);

ECHO '<PRE>';
print_r( $resultados);
ECHO'</PRE>';
?>