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

<?php
$nome = "ney";
$email = "neymarjr@gmail.com";
$senha = "234234";

$inserir_dados = $conexao->query("INSERT INTO usuario(nome , senha , email) 
VALUES ('$nome', '$senha' , '$email')");

if($inserir_dados == true){
    echo'dados inseridos com sucesso';
}
else {
    echo'não ta inserido';
}
?>

<?php 
$id_para_atualizar = 5;
$novo_valor = "testar";

$atualizar_id = $conexao->query("UPDATE usuario SET nome = '$novo_valor' WHERE
id = '$id_para_atualizar'");

if($atualizar_id){
echo"atualizado com sucesso!";
}
else{
    echo"error";
}
?>
<?php 
$id_para_apagar= 4;

$deletar_id = $conexao->query("DELETE FROM usuario WHERE
id = '$id_para_apagar'");

if($deletar_id){
echo"id deletado com sucesso!";
}
else{
    echo"error ao deletar";
}
?>