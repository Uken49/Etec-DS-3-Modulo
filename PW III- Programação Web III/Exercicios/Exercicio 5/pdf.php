<?php
    //Referenciar o DomPDF com namespace
    use Dompdf\Dompdf;

    //Include autoloader
    require_once("dompdf/autoload.inc.php");
    include ('Conexao.php');
    
    //Criando a Instancia
    $dompdf = new DOMPDF();
    
    
    $conexao = Conexao::pegarConexao();
    $stmt = $conexao->prepare("SELECT idTime,nomeTime FROM tbtime
                            ORDER BY idTime");
    $stmt->execute();
    $table = "<table border='1'>";
    $table .= "<tr>";
    $table .= "<th>ID</th>";
    $table .= "<th>Nome</th>";
    $table .= "</tr>";
    while ($row = $stmt->fetch(PDO::FETCH_BOTH)) {
        $table .= "<tr> <td>".$row['idTime']."</td>" ;
        $table .= "<td>".$row['nomeTime']."</td> </tr>" ;
    }
    $table .= "</table>";
    
    //O conteúdo html do pdf estará aqui dentro
    $dompdf->load_html("
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset='utf-8'>
            <title>PDF - Gráfico</title>
        </head>
        <body>
            <h1 align='center'>
                Título do relatório
            </h1>
            <h4>
                Tabela: tbtime
            </h4>
            $table
        </body>
    </html>
    ");

    //Escolhendo o tipo de papel e a horientação do pdf
    $dompdf->setPaper('A4', 'portrait'); //landscape = Modo paisagem, portrait = Modo retrato

    //Renderizar o html
    $dompdf->render();

    //Exibir a página
    $dompdf->stream(
        "certificado.pdf",
        array(
            "Attachment" => false //Para realizar o download do pdf,basta alterar para true
        )
    );
?>