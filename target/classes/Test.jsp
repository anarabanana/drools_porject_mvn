

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
<script
	src="http://docs.handsontable.com/0.15.0-beta6/bower_components/raphael/raphael-min.js"></script>
<script
	src="http://docs.handsontable.com/0.15.0-beta6/scripts/graphael-demo/g.raphael-min.js"></script>
<script
	src="http://docs.handsontable.com/0.15.0-beta6/scripts/graphael-demo/g.bar-min.js"></script>



<script>
	var MyProject = {};
	var servers_total = '49932';
	var s = '100';
	$(document)
			.ready(

					function() {

						var data = [
								[ "A", "B", "C", "D", "E", "F", "G", "H", "I" ],
								/* [ "", "Server Rooms", "Number 1U servers",
										"Watts per server (c)", "Total Server Watts",
										"Hours/y", ,"Overhead (d)", "Total kWh/y" ], */
								[ "2", "Central servers", 10, 350, '=(C2*D2)',
										8760, , , '=+((E2*F2)/1000)' ],
								[ "3", "Small scale servers", 3, 100,
										'=(C3*D3)', 8760, , ,
										'=+((E3*F3)/1000)' ],
								[ "4", "Storage & other server equipment (d)",
										, , , , , 0, '=(I2*H4)+(I3*H4)' ],
								[ "5", "Server/equipment sub-total", , , , , ,
										, '=+(SUM(I2:I4))' ],
								[
										"6",
										"Server cooling & power supply overhead (e)",
										, , , , , '0.5', '=+(SUM(I2:I4)*H6)' ],
								[ "7", "SERVER SUB-TOTAL", , , , , , ,
										'=SUM(I4:I6)' ],
								[ "8", "", , , , , , , '' ],
								[ "9", "", , , , , , , '' ],
								[ "10", "PCs & Monitors", "Number",
										"Watts (Active, idle) (f)",
										"Watts (Standby) (f)",
										"Hours (Active, idle) (g)",
										"Hours (Standby) (g)", "kWh/y per PC",
										"Total kWh/y" ],
								[ "11", "Medium performance, standard PCs",
										180, 60, 2, 2000, '=(8760-F11)',
										'=+((D11*F11)+(E11*G11))/1000',
										'=+(H11*C11)' ],
								[ "12", "Low power, green PCs", 0, 30, 2, 2000,
										'=(8760-F12)',
										'=+((D12*F12)+(E12*G12))/1000',
										'=+(H12*C12)' ],
								[ "13", "Portable PCs ", 0, 30, 1, 2080,
										'=(8760-F13)',
										'=+((D13*F13)+(E13*G13))/1000',
										'=+(H13*C13)' ],
								[ "14", "Thin clients", 70, 7, 7, 2080,
										'=(8760-F14)',
										'=+((D14*F14)+(E14*G14))/1000',
										'=+(H14*C14)' ],
								[ "15", "Flat (LCD or TFT) Monitors", 160, 25,
										2, 2080, '=(8760-F15)',
										'=+((D15*F15)+(E15*G15))/1000',
										'=+(H15*C15)' ],
								[ "16", "CRT Monitors", 0, 70, 5, 2080,
										'=(8760-F16)',
										'=+((D16*F16)+(E16*G16))/1000',
										'=+(H16*C16)' ],
								[ "17", "POS terminals", , , , , , , 0 ],
								[ "18", "Other", , , , , , , 0 ],
								[ "19", "Aircon overhead for computer suites",
										, , , , , , 0 ],
								[ "20", "PCs & MONITORS SUB-TOTAL", , , , , , ,
										'=(SUM(I11:I19))' ],
								[ "21", "", , , , , , , '' ],
								[ "22", "", , , , , , , '' ],
								[ "23", "Networks", "Number", "Watts/unit (h)",
										, "Hours/y", , , "Total kWh/y" ],
								[ "24", "Edge switches", 10, 50, , 8760, , ,
										"=(C24*D24*F24)/1000" ],
								[ "25", "Aggregation switches", 7, 88, , 8760,
										, , "=(C25*D25*F25)/1000" ],
								[ "26", "Core switches", 0, 600, , 8760, , ,
										"=(C26*D26*F26)/1000" ],
								[ "27", "Wireless access points", 25, 165, ,
										8760, , , "=(C27*D27*F27)/1000" ],
								[ "28", "Room based hubs", 25, 4, , 8760, , ,
										"=(C28*D28*F28)/1000" ],
								[ "29", "Unmanaged edge switches", 10, 23, ,
										8760, , , "=(C29*D29*F29)/1000" ],
								[ "30", "Power over ethernet (POE)", 0, 170, ,
										8760, , , "=(C30*D30*F30)/1000" ],
								[ "31", "NETWORKS SUB-TOTAL", , , , , , ,
										"=SUM(I24:I30)" ],

								[ "32", "", , , , , , , '' ],
								[ "33", "", , , , , , , '' ],

								[ "34", "Phones", "Number", "Watts/unit",
										"Total Watts", "Hours/y", "Overhead", ,
										"Total kWh/y" ],
								[ "35", "PABX distributed (i)", 250, 1.75,
										'=+(C35*D35)', 8760, , ,
										"=+((E35*F35)/1000)" ],
								[ "36", "PABX cooling and power supply (j)", 0,
										0, , , 0.1, , '383.25' ],
								[
										"37",
										"Locally powered VOIP phones (k,Cisco) ",
										0, 3, "=+(C37*D37)", 8760, , ,
										"=(E37*F37)/1000" ],

								[ "38", "PHONES SUB-TOTAL", , , , , , ,
										"=SUM(I35:I37)" ],
								[ "39", "", , , , , , , '' ],
								[ "40", "", , , , , , , '' ],
								[ "41", "Imaging", "Number",
										"Watts (active/idle)",
										"Watts(Standby)",
										"Hours (active/idle)",
										"Hours (Standby) ", "kWh/unit",
										"Total kWh/y" ],
								[ "42", "High volume copiers (l)", '0', '1200',
										"3", "2080", "=8760-F42",
										'=+(D42*F42+E42*G42)/1000',
										"=+(H42*C42)" ],
								[ "43", "High volume printers (m)", '0', '500',
										"15", "2080", "=8760-F43",
										'=+(D43*F43+E43*G43)/1000',
										"=+(H43*C43)" ],
								[ "44", "Regular photocopiers (n)", '20',
										'1000', "29", "1000", "3000",
										'=+(D44*F44+E44*G44)/1000',
										"=+(H44*C44)" ],
								[ "45", "High/medium volume copiers/MFDs (o)",
										'0', '1000', "29", "520", "=8760-F45",
										'=+(D45*F45+E45*G45)/1000',
										"=+(H45*C45)" ],
								[ "46", "Low/medium volume copiers/MFDs (o)",
										'10', '600', "19", "520", "=8760-F46",
										'=+(D46*F46+E46*G46)/1000',
										"=+(H46*C46)" ],
								[
										"47",
										"Networked monochrome laser printers (p)",
										'10', '440', "14", "520", "=8760-F47",
										'=+(D47*F47+E47*G47)/1000',
										"=+(H47*C47)" ],
								[ "48", "Networked colour laser printers (p)",
										'10', '512', "30", "520", "=8760-F48",
										'=+(D48*F48+E48*G48)/1000',
										"=+(H48*C48)" ],
								[ "49", "Scanners (q)", '0', '5', "0", "1680",
										"=8760-F49",
										'=+(D49*F49+E49*G49)/1000',
										"=+(H49*C49)" ],
								[ "50", "Monochrome laser printer (s)", '10',
										'350', "7", "87", "=8760-F50",
										'=+(D50*F50+E50*G50)/1000',
										"=+(H50*C50)" ],
								[ "51", "Inkjet printer (s)", '10', '20', "6",
										"87", "=8760-F51",
										'=+(D51*F151+E51*G51)/1000',
										"=+(H51*C51)" ],
								[ "52", "IMAGING SUB-TOTAL", , , , , , ,
										"=+SUM(I42:I51)" ],
								[ "53", "", , , , , , , '' ],
								[ "54", "", , , , , , , '' ],
								[ "55", "Audio/Video", "Number",
										"Watts (Active)", "Watts (Standby) ",
										"Hours (Active)", "Hours (Standby)", ,
										"Total kWh/y" ],
								[ "56", "Projectors (u)", '20', '290', "8",
										'500', "=(8760-F56)", ,
										"=(C56*(D56*F56+E56*G56))/1000" ],
								[ "57", "Audio sets", 0, "1", "1", 8000,
										"=(8760-F3)", ,
										"=(C57*(D57*F57+E57*G57))/1000" ],
								[ "58", "Plasma screens ( 61' screen) (u1)", 0,
										"700", "3", 8000, "=(8760-F58)", ,
										"=(C58*(D58*F58+E58*G58))/1000" ],

								[ "59", "AV SUB-TOTAL", , , , , , ,
										"=SUM(I56:I58)" ],
								[ "60", "", , , , , , , '' ],
								[ "61", "", , , , , , , '' ],
								[ "62", "Category", "Energy Use (kWh/y)",
										"Energy Cost (£/y) ",
										"CO2 emissions (kg/y)", , , , ],
								[ "63", "Servers", '=SUM(I4:I6)', "=(C63*C72)",
										"=(C63*C73)" ],
								[ "64", "PCs", '=(SUM(I11:I19))', "=(C64*C72)",
										"=(C64*C73)" ],
								[ "65", "Networks", "=SUM(I24:I30)",
										"=(C65*C72)", "=(C65*C73)" ],
								[ "66", "Telephony", "=SUM(I35:I37)",
										"=(C66*C72)", "=(C66*C73)" ],
								[ "67", "Imaging", "=+SUM(I42:I51)",
										"=(C67*C72)", "=(C67*C73)" ],
								[ "68", "AV", "=SUM(I56:I58)", "=(C68*C72)",
										"=(C68*C73)" ],
								[ "69", "TOTAL", "=SUM(C63:C68)", "=(C69*C72)",
										"=(C69*C73)" ],
								[ "70", "", , , , , , , '' ],
								[ "71	", "", , , , , , , '' ],
								[ "72", "Default electricity price (p/KwH)",
										'0.12', , , , , , '' ],
								[
										"73",
										"Default CO2 emission (kg CO2/kWh) (w)",
										'0.537', , , , , , '' ],
								[ "74", "", , , , , , , '' ],
								[ "75	", "", , , , , , , '' ]

						];
						google.charts.load("current", {
							packages : [ "corechart" ]
						});
						

						var container = document.getElementById('servers_grid');
						var hot = new Handsontable(
								container,
								{
									formulas : true,
									data : data,
									renderAllRows : true,
									observeChanges : true,
									wordWrap : true,
									autoWrapRow : true,
									colWidths : [ 35, 180, 100, 155, 160, 160,
											160, 160, 100, 115 ],
									afterChangesObserved : function() {

										var servers_total = hot.plugin.matrix
												.getItem(hot.plugin.utils
														.translateCellCoords({
															row : 62,
															col : 2
														})).value
										var pcs_total = hot.plugin.matrix
												.getItem(hot.plugin.utils
														.translateCellCoords({
															row : 63,
															col : 2
														})).value
										var networks_total = hot.plugin.matrix
												.getItem(hot.plugin.utils
														.translateCellCoords({
															row : 64,
															col : 2
														})).value
										var telephony_total = hot.plugin.matrix
												.getItem(hot.plugin.utils
														.translateCellCoords({
															row : 65,
															col : 2
														})).value
										var imaging_total = hot.plugin.matrix
												.getItem(hot.plugin.utils
														.translateCellCoords({
															row : 66,
															col : 2
														})).value
										var av_total = hot.plugin.matrix
												.getItem(hot.plugin.utils
														.translateCellCoords({
															row : 67,
															col : 2
														})).value
														
										var servers_energy = hot.plugin.matrix
														.getItem(hot.plugin.utils
																.translateCellCoords({
																	row : 62,
																	col : 3
																})).value
										var pcs_energy = hot.plugin.matrix
														.getItem(hot.plugin.utils
																.translateCellCoords({
																	row : 63,
																	col : 3
																})).value
												var networks_energy = hot.plugin.matrix
														.getItem(hot.plugin.utils
																.translateCellCoords({
																	row : 64,
																	col : 3
																})).value
												var telephony_energy = hot.plugin.matrix
														.getItem(hot.plugin.utils
																.translateCellCoords({
																	row : 65,
																	col : 3
																})).value
												var imaging_energy = hot.plugin.matrix
														.getItem(hot.plugin.utils
																.translateCellCoords({
																	row : 66,
																	col : 3
																})).value
												var av_energy = hot.plugin.matrix
														.getItem(hot.plugin.utils
																.translateCellCoords({
																	row : 67,
																	col : 3
																})).value
										//	s =  $('#servers_grid').handsontable('getDataAtCell', 62, 2);
									//	alert(servers_total);
										google.charts
										.setOnLoadCallback(drawChart);
	
										function drawChart() {
											alert(servers_total);
											var data = google.visualization
													.arrayToDataTable([
															[ 'Category', '%' ],
															[ 'Servers',
																	servers_total ],
															[
																	'PCs',
																	pcs_total ],
															[
																	'AV',
																	av_total ],
															[
																	'Phones',
																	telephony_total ],
															[
																	'Imaging',
																	imaging_total ],
															[
																	'Networking',
																	networks_total ] ]);
											var view = new google.visualization.DataView(
													data);
											view
													.setColumns([
															0,
															{
																type : 'number',
																label : data
																		.getColumnLabel(1),
																calc : function(
																		dt, row) {
																	var value = dt
																			.getValue(
																					row,
																					1);
																	if (value == 0) {
																		// change value to a very small, non-zero number
																		// must be much smaller than all normal values in the chart
																		value = 0.000001;
																	}
																	return {
																		v : value,
																		f : dt
																				.getFormattedValue(
																						row,
																						1)
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

											var chart = new google.visualization.PieChart(
													document
															.getElementById('piechart'));
											chart.draw(data, options);
										}
										
										}
							
								});

				/* 		hot.render();
						hot.addHook('beforeChange', function() {
							servers_total = hot.plugin.matrix
									.getItem(hot.plugin.utils
											.translateCellCoords({
												row : 62,
												col : 2
											})).value
						}); */

						/* s = $('#servers_grid').handsontable('getDataAtCell',
								62, 2); */
				/* 		servers_total = hot.plugin.matrix
								.getItem(hot.plugin.utils.translateCellCoords({
									row : 62,
									col : 2
								})).value */
						//alert(servers_total);
						//	 alert(servers_total);
						/*var cellId=hot.plugin.utils.translateCellCoords({row: 62, col: 2});

						var formula=hot.getDataAtCell(62, 2);
						formula = formula.substr(1).toUpperCase();
						var newValue = hot.plugin.parse(formula, {row: 62, col: 2, id: cellId});         

						alert(newValue.result);
						hot.render(); */
						
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
	<LI><A href="Hello.html">Home</A>
	</LI>
	<li><a href="index.jsp">User Input</a>
	</li>
	<li><a href="Results.jsp">Results</a>
	</li>
	<li><a href="Recommendations.jsp">Recommendations</a>
	<li><a href="Calculate.jsp" class="active">Calculator</a></li>
</ul>
<body>

	<div class="main-content">

		<!-- You only need this form and the form-mini.css -->

		<!-- <div class="form-mini-container"> -->


		<form class="form-mini">

			<div class="container">
			
            

				<!-- <div id="servers_grid"></div>
				<br> <br> <br>

				<div id="piechart" style="width: 500px; height: 400px;"></div> -->


			</div>

		</form>

	</div>


	<!-- </div> -->
</body>

</html>
<!-- http://codepen.io/ashblue/pen/mCtuA -->
<!-- <!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Results</title>
<link rel="stylesheet" href="assets/demo.css">
<link rel="stylesheet" href="assets/form-basic.css">
<link rel="icon" href="assets/favicon.ico" type="image/png" sizes="16x16">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js"></script>
<LINK rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<!-- Optional theme -->
<LINK rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<SCRIPT src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous" type="text/javascript"></SCRIPT>

<script type="text/javascript">
	$(document).ready(function() {
		$("#loading").hide();
	});
</script>
<%
	Double doubleVar1 = (Double) session.getAttribute("ob");
%>
<%
	Double doubleVar2 = (Double) session.getAttribute("ob2");
%>
<%
	Double doubleVar3 = (Double) session.getAttribute("ob3");
%>
<%
	Double doubleVar4 = (Double) session.getAttribute("ob4");
%>
<%
	Double doubleVar5 = (Double) session.getAttribute("ob5");
%>
<%
	Double doubleVar = (Double) session.getAttribute("object");
%>
<%
	Integer v1_av_int = (Integer) session.getAttribute("v1_av");
%>
<%
	Integer v2_av_int = (Integer) session.getAttribute("v2_av");
%>
<%
	Integer v3_av_int = (Integer) session.getAttribute("v3_av");
%>
<%
	Integer v4_av_int = (Integer) session.getAttribute("v4_av");
%>
<%
	Integer v5_av_int = (Integer) session.getAttribute("v5_av");
%>
<script type="text/javascript">


	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var var1 =
			<%=v1_av_int%>
				;
				var var2 =
					<%=v2_av_int%>
						;
						var var3 =
							<%=v3_av_int%>
								;
								var var4 =
									<%=v4_av_int%>
										;
										var var5 =
											<%=v5_av_int%>
												;
		<%-- var var1 =
<%=doubleVar1%>
	;
		var var2 =
<%=doubleVar2%>
	;
		var var3 =
<%=doubleVar3%>
	;
		var var4 =
<%=doubleVar4%>
	;
		var var5 =
<%=doubleVar5%>
	; --%>

		var data = google.visualization.arrayToDataTable([ [ 'Category', '%' ],
				[ 'Equipment procurement', var1 ], [ 'Energy performance', var2 ], [ 'Networking', var3 ], [ 'Social commitment', var4 ],
				[ 'Wastes management', var5 ] ]);
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
			title : 'ER index components',
			is3D : true,
			sliceVisibilityThreshold : 0,
			'legend':'right',
			

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
</script>
<style>
.form-basic {
	max-width: 1000px;
}

.form-basic .form-row>label span {
	 width: 380px; 
}

a:link {
	text-decoration: none;
}

.form-row {
	position: relative;
	display: inline-block;
}

.form-basic .form-row>label span:hover {
	color: #8000ff;
	/* font-weight: bold; */
}

.form-row .tooltiptext {
	visibility: hidden;
	width: 150px;
	background-color: #bf80ff;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	position: absolute;
	z-index: 1;
	bottom: 100%;
	left: 50%;
	margin-left: -60px;
	/* Fade in tooltip - takes 1 second to go from 0% to 100% opac: */
	opacity: 0;
	transition: opacity 1s;
}

.form-row:hover .tooltiptext {
	visibility: visible;
	opacity: 1;
}

.alert {
	padding: 20px;
	background-color: #f44336;
	color: white;
	opacity: 1;
	transition: opacity 0.6s;
	margin-bottom: 15px;
}

.alert.success {
	background-color: #4CAF50;
}

.alert.info {
	background-color: #2196F3;
}

.alert.warning {
	background-color: #ff9800;
}

.closebtn {
	margin-left: 15px;
	color: white;
	font-weight: bold;
	float: right;
	font-size: 22px;
	line-height: 20px;
	cursor: pointer;
}

.closebtn:hover {
	color: black;
}

</style>
</head>
<header>
	<h1>ER ASSESSMENT BELIEF RULE-BASED SYSTEM</h1>
</header>
<ul>
	<LI><A href="index.html">Home</A></LI>
	<li><a href="Assessment.jsp">Form</a>
	</li>
	<li><a href="Results.jsp" class="active">Results</a>
	</li>
	<li><a href="Recommendations.jsp">Recommendations</a>
	</li>
	<li><a href="Calculate.jsp">Calculate</a>
	</li>
</ul>
<body>
	<div class="main-content">
		<!-- You only need this form and the form-labels-on-top.css -->
		<form class="form-basic" action="Recommendations.jsp">
			<div class="form-title-row">
				<h1>Results of your ER level</h1>
			</div>
			<!-- alert(flag_activities)
			console.log(flag_activities) -->
			<%
				if (doubleVar >= 80.0) {
			%>
			<div class="alert success">
				<span class="closebtn">×</span> <strong>Level: Leading.</strong> Your ER index is great.Keep
				doing.
			</div>
			<%
				} else if (doubleVar >= 60.0 && doubleVar < 80.0) {
			%>
			<div class="alert info">
				<span class="closebtn">×</span> <strong>Level: Succeeding.</strong> You are doing almost
				perfect.
			</div>
			<%
				} else if (doubleVar >= 40.0 && doubleVar < 60.0) {
			%>
			<div class="alert warning">
				<span class="closebtn">×</span> <strong>Level: Improving.</strong> You might want to see
				recommended activities to perform better.
			</div>
			<%
				} else {
			%>
			<div class="alert">
				<span class="closebtn">×</span> <strong>Level: Beginning.</strong> You should start from
				recommended activities list.
			</div>
			<%
				}
			%>
			<script>
				var close = document.getElementsByClassName("closebtn");
				var i;

				for (i = 0; i < close.length; i++) {
					close[i].onclick = function() {
						var div = this.parentElement;
						div.style.opacity = "0";
						setTimeout(function() {
							div.style.display = "none";
						}, 600);
					}
				}
			</script>
			<table>
				<tr>
					<td>
						<div class="form-row">
							<label><span> Total estimated ER index is <%
								Object obj = session.getAttribute("object");
								out.println(obj);
							%> %</span> </label> <label><span> ER indexes for: <br>
							</label></span>
						</div>
						<div class="form-row" onClick="window.location.href='Recommendations.jsp#V1';">
							<label><span>1. Equipment procurement compliance with Green ICT guidelines is
									about <%
								Object obj1 = session.getAttribute("ob");
							//	out.println(obj1);
								Object v1_av_obj = session.getAttribute("v1_av");
								out.println(v1_av_obj);
								Double dD = (Double) session.getAttribute("ob");
							%> %</span> </label><span class="tooltiptext">Click to see recommendations</span>
						</div>
						<div class="form-row" onClick="window.location.href='Recommendations.jsp#V2';">
							<label><span>2. Energy performance improvement and monitoring is about <%
								Object obj2 = session.getAttribute("ob2");
							//	out.println(obj2);
								Object v2_av_obj = session.getAttribute("v2_av");
								out.println(v2_av_obj);
							%> %</span> </label><span class="tooltiptext">Click to see recommendations</span>
						</div>
						<div class="form-row" onClick="window.location.href='Recommendations.jsp#V3';">
							<label><span>3. Energy aware networks engineering adherence is about <%
								Object obj3 = session.getAttribute("ob3");
								//out.println(obj3);
								Object v3_av_obj = session.getAttribute("v3_av");
								out.println(v3_av_obj);
							%> %</span> </label><span class="tooltiptext">Click to see recommendations</span>
						</div>
						<div class="form-row" onClick="window.location.href='Recommendations.jsp#V4';">
							<label><span>4. Social commitment is about <%
								Object obj4 = session.getAttribute("ob4");
								//out.println(obj4);
								Object v4_av_obj = session.getAttribute("v4_av");
								out.println(v4_av_obj);
							%> %</span> </label><span class="tooltiptext">Click to see recommendations</span>
						</div>
						<div class="form-row" onClick="window.location.href='Recommendations.jsp#V5';">
							<label><span>5. Waste management is about <%
								Object obj5 = session.getAttribute("ob5");
								//out.println(obj5);
								Object v5_av_obj = session.getAttribute("v5_av");
								out.println(v5_av_obj);
							%> %</span> </label><span class="tooltiptext">Click to see recommendations</span>
						</div>
						<div class="form-row">
							<label><span><B> Please hover over to see more</B> </span> </label>
						</div></td>
					<td class ="column-align" style="width: 50%">
						<div class="form-row">
							<div id="piechart" style="width: 465px; height: 350px;"></div>
						</div>
						<div class="form-row" style="color:grey">
							Total estimated ER index is calculated as a mean value based on rules defined in application logic.<BR>
							Per category breakdown scores depend on form responses.
						</div></td>
						
				
				</tr>
			
			</table>
			
		</form>
	</div>
</body>
</html> -->