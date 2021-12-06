<!DOCTYPE html>
<html>

<head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>

<body>
    <?php
    include('Conexao.php');
    ?>

    <section style="width:81%;margin: 0 auto; display:table;">
        <div>
            <h1 style="text-align:center;font-size:2.5em; margin-top:30px;"> Exemplo com Gráfico </h1>
        </div>
        <a href="pdf.php">
            <button style="float: right;">
                Gerar PDF
            </button>
        </a>

        <!--Div that will hold the pie chart-->
        <div style="float:left;">
            <div id="chart_div"></div>
        </div>

        <div style="float:left;">
            <div id="chart_div2"></div>
        </div>
    </section>
</body>

</html>

<script type="text/javascript">
    // Gráfico de Pizza		

    // Load the Visualization API and the corechart package.
    google.charts.load('current', {
        'packages': ['corechart']
    });

    // Set a callback to run when the Google Visualization API is loaded.
    google.charts.setOnLoadCallback(drawChart);

    // Callback that creates and populates a data table,
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
            <?php
            $i = 0;
            $conexao = Conexao::pegarConexao();
            $stmt = $conexao->prepare("SELECT idTime,nomeTime FROM tbtime
                                    ORDER BY idTime");
            $stmt->execute();
            while ($row = $stmt->fetch(PDO::FETCH_BOTH)) {
                echo ("['" . $row['nomeTime'] . "'," . $row['idTime'] . "],\n");
                $i++;
            }
            ?>

        ]);

        // Set chart options
        var options = {
            'title': 'Taxa de Popularidade (2021)',
            'width': 500,
            'height': 300,
            slices: {
                0: {
                    color: 'orange'
                },
                1: {
                    color: 'red'
                },
                2: {
                    color: 'green'
                },
                3: {
                    color: '#00f'
                }
            }
        };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    }


    //gráfico de colunas

    google.charts.load('current', {
        packages: ['corechart', 'bar']
    });
    google.charts.setOnLoadCallback(drawAnnotations);

    function drawAnnotations() {
        var data = google.visualization.arrayToDataTable([


            ['Element', 'Times daoras', {
                role: 'style'
            }],
            <?php
            $i = 0;
            $color = array(
                0 => 'orange',
                1 => 'red',
                2 => 'green',
                3 => 'blue',
                4 => 'purple'
            );
            $conexao = Conexao::pegarConexao();
            $stmt = $conexao->prepare("SELECT idTime,nomeTime FROM tbtime
                                        ORDER BY idTime");
            $stmt->execute();
            while ($row = $stmt->fetch(PDO::FETCH_BOTH)) {
                $nomeTime[$i] = $row['nomeTime'];
                $idTime[$i] = $row['idTime'];
                $i++;
            }
            for ($i = 0; $i < count($nomeTime); $i++) {
                echo "['$nomeTime[$i]',$idTime[$i],'$color[$i]'],\n";
            }
            ?>

        ]);

        var options = {
            title: 'Maiores Times do Mundo na Atualidade',
            'width': 585,
            'height': 300,
            annotations: {
                alwaysOutside: true,
                textStyle: {
                    fontSize: 14,
                    color: '#000',
                    auraColor: 'none'
                }
            },
            hAxis: {
                title: '<--Ruim :Times: Bom-->',
                format: 'h:mm a',
                viewWindow: {
                    min: [7, 30, 0],
                    max: [17, 30, 0]
                }
            },
            vAxis: {
                title: 'Escala (Do Pior Até o Melhor)'
            }
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
        chart.draw(data, options);
    }
</script>