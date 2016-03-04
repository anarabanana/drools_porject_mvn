

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Calculator</title>

<link rel="stylesheet" href="assets/demo.css">
<link rel="stylesheet" href="assets/form-mini.css">
<link rel="icon" href="assets/favicon.ico" type="image/png"
	sizes="16x16">
<link rel="stylesheet" media="screen"
	href="assets/handsontable.full.css">
<!--  <SCRIPT
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"
	type="text/javascript"></SCRIPT>  -->
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/jquery/jquery-1.10.2.js"></script>

<script src="assets/handsontable.full.js"></script>

<!-- <script src="assets/parser.js"></script>
<script src="assets/ruleJS.js"></script>
<script src="assets/handsontable.formula.js"></script> -->
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/jquery/jquery-1.10.2.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/handsontable/handsontable.full.js"></script>
<link rel="stylesheet" media="screen"
	href="http://handsontable.github.io/handsontable-ruleJS/lib/handsontable/handsontable.full.css">
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/lodash/lodash.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/underscore.string/underscore.string.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/moment/moment.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/numeral/numeral.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/numericjs/numeric.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/js-md5/md5.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/jstat/jstat.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/formulajs/formula.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/js/parser.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/js/ruleJS.js"></script>
<script
	src="http://handsontable.github.io/handsontable-ruleJS/lib/handsontable/handsontable.formula.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script src="http://docs.handsontable.com/0.15.0-beta6/bower_components/raphael/raphael-min.js"></script>
<script src="http://docs.handsontable.com/0.15.0-beta6/scripts/graphael-demo/g.raphael-min.js"></script>
<script src="http://docs.handsontable.com/0.15.0-beta6/scripts/graphael-demo/g.bar-min.js"></script>



<script>
var MyProject = {};
var servers_total;
 	$(document).ready(
 			
			function() { 
		/* 		MyProject.servers_total="1";
				MyProject.pcs_total='1';
				MyProject.networks_total='1';
				MyProject.phones_total='1';
				MyProject.imaging_total='1';
				MyProject.av_total='1'; */

				var data = [
[ "A", "B", "C",
	"D", "E",
	"F", "G","H", "I" ],
						/* [ "", "Server Rooms", "Number 1U servers",
								"Watts per server (c)", "Total Server Watts",
								"Hours/y", ,"Overhead (d)", "Total kWh/y" ], */
						[ "2", "Central servers", 10, 350, '=(C2*D2)', 8760, ,,
								'=+((E2*F2)/1000)' ],
						[ "3", "Small scale servers", 3, 100, '=(C3*D3)', 8760,,
								, '=+((E3*F3)/1000)' ],
						[ "4", "Storage & other server equipment (d)", , , ,, 
								,0, '=(I2*H4)+(I3*H4)' ],
						[ "5", "Server/equipment sub-total", , , , , ,,
								'=+(SUM(I2:I4))' ],
						[ "6", "Server cooling & power supply overhead (e)", ,
								, ,, , '0.5', '=+(SUM(I2:I4)*H6)' ],
						[ "7", "SERVER SUB-TOTAL", , , , , , ,'=SUM(I4:I6)' ],
						[ "8", "", , , , , ,, '' ],
						[ "9", "", , , , , ,, '' ],
						[ "10", "PCs & Monitors", "Number",
						"Watts (Active, idle) (f)",
							"Watts (Standby) (f)",
							"Hours (Active, idle) (g)",
							"Hours (Standby) (g)", "kWh/y per PC",
							"Total kWh/y" ],
							[ "11", "Medium performance, standard PCs", 180, 60, 2,
								2000, '=(8760-F11)', '=+((D11*F11)+(E11*G11))/1000',
								'=+(H11*C11)' ],
						[ "12", "Low power, green PCs", 0, 30, 2, 2000,
								'=(8760-F12)', '=+((D12*F12)+(E12*G12))/1000',
								'=+(H12*C12)' ],
						[ "13", "Portable PCs ", 0, 30, 1, 2080, '=(8760-F13)',
								'=+((D13*F13)+(E13*G13))/1000', '=+(H13*C13)' ],
						[ "14", "Thin clients", 70, 7, 7, 2080, '=(8760-F14)',
								'=+((D14*F14)+(E14*G14))/1000', '=+(H14*C14)' ],
						[ "15", "Flat (LCD or TFT) Monitors", 160, 25, 2, 2080,
								'=(8760-F15)', '=+((D15*F15)+(E15*G15))/1000',
								'=+(H15*C15)' ],
						[ "16", "CRT Monitors", 0, 70, 5, 2080, '=(8760-F16)',
								'=+((D16*F16)+(E16*G16))/1000', '=+(H16*C16)' ],
						[ "17", "POS terminals", , , , , , , 0 ],
						[ "18", "Other", , , , , , , 0 ],
						[ "19", "Aircon overhead for computer suites", , , , , ,
								, 0 ],
						[ "20", "PCs & MONITORS SUB-TOTAL", , , , , , ,
								'=(SUM(I11:I19))' ],
						[ "21", "", , , , , ,, '' ],
						[ "22", "", , , , , ,, '' ],
						[ "23", "Networks", "Number",
									"Watts/unit (h)",, "Hours/y",,,
									"Total kWh/y" ],
							[ "24", "Edge switches", 10, 50,, 8760,,,
									"=(C24*D24*F24)/1000" ],
							[ "25", "Aggregation switches", 7, 88,, 8760,,,
									"=(C25*D25*F25)/1000" ],
							[ "26", "Core switches", 0, 600,, 8760,,,
									"=(C26*D26*F26)/1000" ],
							[ "27", "Wireless access points", 25, 165,, 8760,,,
									"=(C27*D27*F27)/1000" ],
							[ "28", "Room based hubs", 25, 4,, 8760,,,
									"=(C28*D28*F28)/1000" ],
							[ "29", "Unmanaged edge switches", 10, 23,, 8760,,,
									"=(C29*D29*F29)/1000" ],
							[ "30", "Power over ethernet (POE)", 0, 170,, 8760,,,
									"=(C30*D30*F30)/1000" ],
							[ "31", "NETWORKS SUB-TOTAL", , , ,,,, "=SUM(I24:I30)" ],
							
							[ "32", "", , , , , ,, '' ],
							[ "33", "", , , , , ,, '' ],
							
							[ "34", "Phones", "Number",
								"Watts/unit", "Total Watts", "Hours/y",
								"Overhead",, "Total kWh/y" ],
							[ "35", "PABX distributed (i)", 250, 1.75, '=+(C35*D35)',
									8760, ,, "=+((E35*F35)/1000)" ],
							[ "36", "PABX cooling and power supply (j)", 0, 0, , ,
									0.1, ,'383.25' ],
							[ "37", "Locally powered VOIP phones (k,Cisco) ", 0, 3,
									"=+(C37*D37)", 8760,, , "=(E37*F37)/1000" ],

							[ "38", "PHONES SUB-TOTAL", , , , ,, , "=SUM(I35:I37)" ],
							[ "39", "", , , , , ,, '' ],
							[ "40", "", , , , , ,, '' ],
							[ "41", "Imaging", "Number",
								"Watts (active/idle)",
								"Watts(Standby)",
								"Hours (active/idle)",
								"Hours (Standby) ", "kWh/unit",
								"Total kWh/y" ],
							[ "42", "High volume copiers (l)", '0', '1200',
									"3", "2080", "=8760-F42",
									'=+(D42*F42+E42*G42)/1000', "=+(H42*C42)" ],
							[ "43", "High volume printers (m)", '0', '500',
									"15", "2080", "=8760-F43",
									'=+(D43*F43+E43*G43)/1000', "=+(H43*C43)" ],
							[ "44", "Regular photocopiers (n)", '20',
									'1000', "29", "1000", "3000",
									'=+(D44*F44+E44*G44)/1000', "=+(H44*C44)" ],
							[ "45", "High/medium volume copiers/MFDs (o)",
									'0', '1000', "29", "520", "=8760-F45",
									'=+(D45*F45+E45*G45)/1000', "=+(H45*C45)" ],
							[ "46", "Low/medium volume copiers/MFDs (o)",
									'10', '600', "19", "520", "=8760-F46",
									'=+(D46*F46+E46*G46)/1000', "=+(H46*C46)" ],
							["47",
									"Networked monochrome laser printers (p)",
									'10', '440', "14", "520", "=8760-F47",
									'=+(D47*F47+E47*G47)/1000', "=+(H47*C47)" ],
							[ "48", "Networked colour laser printers (p)",
									'10', '512', "30", "520", "=8760-F48",
									'=+(D48*F48+E48*G48)/1000', "=+(H48*C48)" ],
							[ "49", "Scanners (q)", '0', '5', "0", "1680",
									"=8760-F49", '=+(D49*F49+E49*G49)/1000',
									"=+(H49*C49)" ],
							[ "50", "Monochrome laser printer (s)", '10',
									'350', "7", "87", "=8760-F50",
									'=+(D50*F50+E50*G50)/1000', "=+(H50*C50)" ],
							[ "51", "Inkjet printer (s)", '10', '20', "6",
									"87", "=8760-F51",
									'=+(D51*F151+E51*G51)/1000',
									"=+(H51*C51)" ],
							[ "52", "IMAGING SUB-TOTAL", , , , , , ,
									"=+SUM(I42:I51)" ],
							[ "53", "", , , , , ,, '' ],
							[ "54", "", , , , , ,, '' ],
							 [ "55", "Audio/Video", "Number",
								"Watts (Active)", "Watts (Standby) ",
								"Hours (Active)", "Hours (Standby)",,
								"Total kWh/y" ],
							[ "56", "Projectors (u)", '20', '290', "8", '500',
									"=(8760-F56)",, "=(C56*(D56*F56+E56*G56))/1000" ],
							[ "57", "Audio sets", 0, "1", "1", 8000, "=(8760-F3)",,
									"=(C57*(D57*F57+E57*G57))/1000" ],
							[ "58", "Plasma screens ( 61' screen) (u1)", 0, "700",
									"3", 8000, "=(8760-F58)",,
									"=(C58*(D58*F58+E58*G58))/1000" ],

							[ "59", "AV SUB-TOTAL", , , , , ,, "=SUM(I56:I58)" ],
							[ "60", "", , , , , ,, '' ],
							[ "61", "", , , , , ,, '' ],
							[ "62", "Category",
								"Energy Use (kWh/y)", 
								"Energy Cost (£/y) ",
								"CO2 emissions (kg/y)" ,,,,],
							[ "63", "Servers", '=SUM(I4:I6)', "=(C63*C72)","=(C63*C73)"
							   ],
							[ "64", "PCs", '=(SUM(I11:I19))',  "=(C64*C72)","=(C64*C73)" ],
							[ "65", "Networks", "=SUM(I24:I30)", "=(C65*C72)","=(C65*C73)"],
							[ "66", "Telephony", "=SUM(I35:I37)", "=(C66*C72)","=(C66*C73)" ],
							[ "67", "Imaging", "=+SUM(I42:I51)",  "=(C67*C72)","=(C67*C73)" ],
							[ "68", "AV", "=SUM(I56:I58)",  "=(C68*C72)","=(C68*C73)" ],
							[ "69", "TOTAL", "=SUM(C63:C68)", "=(C69*C72)","=(C69*C73)" ],
							[ "70", "", , , , , ,, '' ],
							[ "71	", "", , , , , ,, '' ],
							[ "72", "Default electricity price (p/KwH)", '0.12', , , , ,, '' ],
							[ "73", "Default CO2 emission (kg CO2/kWh) (w)",'0.537' , , , , ,, '' ],
							
						];
				
				var container = document.getElementById('servers_grid');
				var hot = new Handsontable(container, {
					data : data,
					formulas : true,
					renderAllRows: true,
					observeChanges: true,
					wordWrap : true,
					autoWrapRow : true,
					colWidths : [ 35, 180, 100, 155, 160, 160, 160, 160,
							100, 115 ],
					afterChangesObserved: function () {
						 
						servers_total  = hot.plugin.matrix.getItem(hot.plugin.utils
								.translateCellCoords({
									row : 62,
									col : 2
								})).value  
									
									 alert(servers_total); 
						hot.render();
					 }
				 }); hot.render();
				/* servers_total  = hot.plugin.matrix.getItem(hot.plugin.utils
						.translateCellCoords({
							row : 62,
							col : 2
						})).value   */
						//alert(servers_total);
				google.charts.load("current", {
					packages : [ "corechart" ]
				});
				google.charts.setOnLoadCallback(drawChart);
				function drawChart() {
					

					var data = google.visualization.arrayToDataTable([ [ 'Category', '%' ],
							[ 'Servers', 	servers_total  = hot.plugin.matrix.getItem(hot.plugin.utils
									.translateCellCoords({
										row : 62,
										col : 2
									})).value  ] , [ 'PCs', MyProject.pcs_total ], [ 'AV', MyProject.av_total ], [ 'Phones', MyProject.phones_total ],
							[ 'Imaging', MyProject.imaging_total ], [ 'Networking', MyProject.networks_total ] ]);
					var view = new google.visualization.DataView(data);
					view.setColumns([ 0, {
						type : 'number',
						label : data.getColumnLabel(1),
						calc : function(dt, row) {
							var value = dt.getValue(row, 1);
							if (value == 0) {
								// change value to a very small, non-zero number
								// must be much smaller than all normal values in the chart
								value = 0.000001;
							}
							return {
								v : value,
								f : dt.getFormattedValue(row, 1)
							};
						}
					} ]);

					var options = {
						title : 'Breakdown of ICT Energy Use by Category',
						is3D : true,
						sliceVisibilityThreshold : 0,

						pieSliceText : 'label',
						slices : {
							0 : {
								offset : 0.2
							},
							1 : {
								offset : 0.2
							},
							2 : {
								offset : 0.2
							},
							3 : {
								offset : 0.2
							},
							4 : {
								offset : 0.2
							}
						},
					};

					var chart = new google.visualization.PieChart(document
							.getElementById('piechart'));
					chart.draw(data, options);
				} 
																																																													 
			});

 	
</script>

<style>
/* .handsontable table thead th {
  white-space: pre-line;
  max-width: 100;
} */
.form-mini {
	padding: 20px;
}
</style>
</head>


<header>
	<h1>ER Assessment Belief rule-based system</h1>
</header>

<ul>
	<LI><A href="Hello.html">Home</A></LI>
	<li><a href="index.jsp">User Input</a></li>
	<li><a href="Results.jsp">Results</a></li>
	<li><a href="Recommendations.jsp">Recommendations</a>
	<li><a href="Calculate.jsp" class="active">Calculator</a>
	</li>
</ul>
<body>

	<div class="main-content">

		<!-- You only need this form and the form-mini.css -->

		<!-- <div class="form-mini-container"> -->


		<form class="form-mini">

			<div class="container">

				<div id="servers_grid"></div>
				<br>

				<div id="piechart" style="width: 500px; height: 400px;"></div>


			</div>

		</form>

	</div>


	<!-- </div> -->
</body>

</html>
<!-- http://codepen.io/ashblue/pen/mCtuA -->