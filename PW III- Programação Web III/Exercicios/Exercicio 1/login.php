<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"><!-- Chamando o css do Bootstrap -->
    <title>Casas Luiza - Login</title>
</head>
<?php include("cabecalho.php"); ?>
<?php include("menu.php"); ?>


<section>
    <form name="login" action="DAO/login-consulta.php" method="POST">

        <div class="mx-5 my-2">
            <label for="Usuario">Email:</label>
            <input type="text" name="txEmail" id="txEmail">
        </div>

        <div class="mx-5 my-2">
            <label for=" Senha">Senha:</label>
            <input type="password" name="txSenha" id="txSenha">
        </div>

        <div class="mx-5 my-2">
            <input type="submit" class="btn btn-dark active" role="button" value="Logar">
        </div>
    </form>

</section>


<?php include("rodape.php"); ?>