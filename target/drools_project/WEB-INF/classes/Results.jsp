<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Results</title>
<link rel="stylesheet" href="assets/demo.css">
<link rel="stylesheet" href="assets/form-basic.css">
<link rel="icon" href="assets/favicon.ico" type="image/png"
	sizes="16x16">

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript"
	src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js"></script>
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
<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var var1 =
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
	;

		var data = google.visualization.arrayToDataTable([ [ 'Category', '%' ],
				[ 'Category 1', var1 ], [ 'Category 2', var2 ], [ 'Category 3', var3 ], [ 'Category 4', var4 ],
				[ 'Category 5', var5 ] ]);
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
.form-basic .form-row>label span {
	width: 360px;
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
	font-weight: bold;
}

.form-row .tooltiptext {
	visibility: hidden;
	width: 140px;
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
	<h1>ER Assessment Belief rule-based system</h1>
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

		<form class="form-basic"
			action="Recommendations.jsp">


			<div class="form-title-row">
				<h1>Results of your ER level</h1>

			</div>

			<%
				if (doubleVar >= 80.0) {
			%>
			<div class="alert success">
				<span class="closebtn">×</span> <strong>Level: Leading.</strong> Your ER
				index is great.Keep doing.
			</div>

			<%
				} else if (doubleVar >= 60.0 && doubleVar < 80.0) {
			%>
			<div class="alert info">
				<span class="closebtn">×</span> <strong>Level: Succeeding.</strong> You are
				doing almost perfect.
			</div>
			<%
				} else if (doubleVar >= 40.0 && doubleVar < 60.0) {
			%>
			<div class="alert warning">
				<span class="closebtn">×</span> <strong>Level: Improving.</strong> You
				might want to see recommended activities to perform better.
			</div>
			<%
				} else {
			%>
			<div class="alert">
				<span class="closebtn">×</span> <strong>Level: Beginning.</strong> You
				should start from recommended activities list.
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

			<img id="loading" alt="img" src="ajax-loader.gif" />
			<table>
				<tr>
					<td>
						<div class="form-row">
							<label><span> Total ER index is <%
								Object obj = session.getAttribute("object");
								out.println(obj);
							%> %</span> </label>
						</div>
						<div class="form-row"
							onClick="window.location.href='Recommendations.jsp#V1';">

							<label><span> ER index for Category 1 is <%
								Object obj1 = session.getAttribute("ob");
								out.println(obj1);
								Double dD = (Double) session.getAttribute("ob");
							%> %</span> </label><span class="tooltiptext">Click to see
								recommendations</span>

						</div>
						<div class="form-row"
							onClick="window.location.href='Recommendations.jsp#V2';">
							<label><span> ER index for Category 2 is <%
								Object obj2 = session.getAttribute("ob2");
								out.println(obj2);
							%> %</span> </label><span class="tooltiptext">Click to see
								recommendations</span>
						</div>
						<div class="form-row"
							onClick="window.location.href='Recommendations.jsp#V3';">
							<label><span> ER index for Category 3 is <%
								Object obj3 = session.getAttribute("ob3");
								out.println(obj3);
							%> %</span> </label><span class="tooltiptext">Click to see
								recommendations</span>
						</div>
						<div class="form-row"
							onClick="window.location.href='Recommendations.jsp#V4';">
							<label><span> ER index for Category 4 is <%
								Object obj4 = session.getAttribute("ob4");
								out.println(obj4);
							%> %</span> </label><span class="tooltiptext">Click to see
								recommendations</span>
						</div>
						<div class="form-row"
							onClick="window.location.href='Recommendations.jsp#V5';">
							<label><span> ER index for Category 5 is <%
								Object obj5 = session.getAttribute("ob5");
								out.println(obj5);
							%> %</span> </label><span class="tooltiptext">Click to see
								recommendations</span>
						</div>
						<div class="form-row">
							<label><span><B> Please hover over to see more</B></span> </label>
						</div></td>
					<td>
						<div class="form-row">
							<div id="piechart" style="width: 500px; height: 400px;"></div>
						</div></td>
				</tr>
			</table>
		</form>

	</div>

</body>

</html>