<?php 

include 'atividade01.php';

//FAZ A CONSULTA
$consulta_sql = $conexao->query("SELECT * FROM usuario");

//GUARDA A CONSULTA
$resultados = $consulta_sql->fetch_all(MYSQLI_ASSOC);

ECHO '<PRE>';
print_r( $resultados);
ECHO'</PRE>';

foreach($resultados as $pessoas){
    echo $pessoas['nome']. "<br>";
    echo $pessoas['email']. "<br>";
    echo "<br>";
}
?>
