<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercicio - Cep</title>
</head>
<?php
    if (isset($_POST["cep"]) && !empty($_POST["cep"])) {
        $cep = $_POST["cep"];

        $url="https://viacep.com.br/ws/$cep/json/";
        $json=file_get_contents($url);
        $json_data=json_decode($json,true);
    }

?>
<body>
    <form action="#" method="POST">
        <label>CEP</label>
        <input type="text" name="cep" id="cep">
        <input type="submit" value="Pesquisar CEP">
    </form>

    <?php
    if (isset($cep) && !empty($cep)) {

        echo "<br>Rua:".$json_data["logradouro"]; 
        echo "<br>Complemento:".$json_data["complemento"]; 
        echo "<br>Bairro:".$json_data["bairro"]; 
        echo "<br>Cidade:".$json_data["localidade"]; 
        echo "<br>Estado:".$json_data["uf"]; 
    }
    ?>

</body>

</html>