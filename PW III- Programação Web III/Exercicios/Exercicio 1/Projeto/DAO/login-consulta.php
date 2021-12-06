<?php
   session_start();
include("conexao.php");

//recupera valores digitados no formularios
$email = $_POST['txEmail'];
$senha = $_POST['txSenha'];

//variaveis para verificacao com o banco de dados 
$emailBanco='';
$senhaBanco='';

try{
    $conexao = Conexao::pegarConexao();
    $stmt = $conexao-> prepare("select emailUsuario,senhaUsuario from tbusuario where emailUsuario='$email' and senhaUsuario='$senha'");
   
   $stmt ->execute();

while($row =$stmt->fetch(PDO::FETCH_BOTH)){

    
    $emailBanco = $row['emailUsuario'];;
    $senhaBanco = $row['senhaUsuario'];;


    }
}
catch(PDOException $e){
echo "ERRO: " . $e ->getMessage();

}

//verificação para autenticação
if($email == $emailBanco && $senha ==$senhaBanco){
    //echo "são iguais";
    $_SESSION['autorizacao'] = true;
    header("Location:../painel.php");
}
else{
    //echo"são diferentes";
    $_SESSION['autorizacao'] = false;
    unset($_SESSION['autorizacao']);
    session_destroy();
    header("Location:../login.php");
}
?>
