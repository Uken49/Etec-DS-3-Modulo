<?php
    include("../Conexao.php");

    //Email e senha digitados no formnulário do login
    $email = $_POST['txEmail'];
    $senha = $_POST['txSenha'];

    //Variaveis para verificacao com o banco de dados
    $emailBanco = '';
    $senhaBanco = '';

    try{
        $conexao = Conexao::pegarConexao();
        $stmt = $conexao -> prepare(" SELECT emailUsuario,senhaUsuario FROM tbUsuario WHERE emailUsuario='$email' and senhaUsuario='$senha' ");

        $stmt->execute();

        while($row = $stmt->fetch(PDO::FETCH_BOTH)){

            $emailBanco = $row['emailUsuario'];
            $senhaBanco = $row['senhaUsuario'];
        }
    }
     catch (PDOException $e) {
        echo "Erro: " . $e ->getMessage();
    }


    if(($email == $emailBanco) && ($senha == $senhaBanco)){
        echo "Usuário Válido";
    }else{
        echo "Usuário Inválido";
    }
