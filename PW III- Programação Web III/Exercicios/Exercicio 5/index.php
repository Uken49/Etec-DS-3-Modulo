<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>    	
  </head>

  <body>
	<?php
		$opcao1 = 5;
		$opcao2 = 1;
		$opcao3 = 2;
		$opcao4 = 3;	
	?>  
  
	<section style="width:81%;margin: 0 auto; display:table;">
		<div>
			<h1 style="text-align:center;font-size:2.5em; margin-top:30px;"> Exemplo com Gráfico </h1>
		</div>	
	
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
  google.charts.load('current', {'packages':['corechart']});

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
	  ['Corinthians', <?php echo $opcao1; ?>],
	  ['Real Madrid', <?php echo $opcao2; ?>],
	  ['Barcelona', <?php echo $opcao3; ?>],
	  ['Milan', <?php echo $opcao4; ?>],
	  
	]);

	// Set chart options
	var options = {'title':'Título do Gráfico',
				   'width':500,
				   'height':300,
				   slices: {
						0: { color: 'orange' },
						1: { color: 'red' },
						2: { color: 'green' },
						3: { color: '#00f' }
					  }
				};

	// Instantiate and draw our chart, passing in some options.
	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	chart.draw(data, options);
  }
  
  
  //gráfico de colunas
  
  google.charts.load('current', {packages: ['corechart', 'bar']});
	google.charts.setOnLoadCallback(drawAnnotations);

	function drawAnnotations() {
		 var data = google.visualization.arrayToDataTable([
         ['Element', 'Density', { role: 'style' }],
         ['Turma 1', <?php echo $opcao1; ?>, '#b87333'],            // RGB value
         ['Turma 2', <?php echo $opcao2; ?>, 'silver'],            // English color name
         ['Turma 3', <?php echo $opcao3; ?>, 'gold'],
		 ['Turma 4', <?php echo $opcao4; ?>, 'color: #f00' ], // CSS-style declaration
      ]);
		
	  var options = {
		title: 'Motivation and Energy Level Throughout the Day',
		'width':500,
		'height':300,
		annotations: {
		  alwaysOutside: true,
		  textStyle: {
			fontSize: 14,
			color: '#000',
			auraColor: 'none'
		  }
		},
		hAxis: {
		  title: 'Time of Day',
		  format: 'h:mm a',
		  viewWindow: {
			min: [7, 30, 0],
			max: [17, 30, 0]
		  }
		},
		vAxis: {
		  title: 'Rating (scale of 1-10)'
		}
	  };

	  var chart = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
	  chart.draw(data, options);
	}  
</script>