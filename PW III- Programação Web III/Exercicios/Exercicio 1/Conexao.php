<?php
    class Conexao
    {
        public static function pegarConexao()
        {

            //Conexão local com bdportaldenoticias
            $conexao = new PDO("mysql:host=localhost;
                            dbname=bdVenda",
                            "root",
                            "");

            //Caso dê erro,retornar o erro
            $conexao->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            
            //Enviar caracteres especiais para o bdportaldenoticias
            $conexao->exec("SET CHARACTER SET utf8");
            
            return $conexao;
        }
    }
