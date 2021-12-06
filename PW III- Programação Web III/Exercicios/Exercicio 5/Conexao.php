<?php
class Conexao{

    public static function pegarConexao()
    {
        $host = "localhost"; 
        $dbname = "bdtime"; 
        $usuario = "root"; 
        $senha = ""; 

        global $conexao;

        try {
            //Conexão local com bdempregaki
            $conexao = new PDO(
                "mysql:host=$host;
                dbname=$dbname",
                "$usuario",
                "$senha"
            );
            $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $conexao->exec("SET CHARACTER SET utf8");
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
            exit();
        }
        return $conexao;
    }
}
?>