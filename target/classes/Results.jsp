<!DOCTYPE html>
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
<SCRIPT src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"
	type="text/javascript"></SCRIPT>
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
			width: 350,
            height: 350,
		        chartArea: {  width: "80%", height: "80%" },
			

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
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>
<style>
body{
font-family: Verdana, sans-serif;
    font-size: 15px;
    line-height: 1.5;
}
.form-basic .form-row>label span {
	 width: 100%; 
}
.test{
color: #1a1a1a;
}
.test:hover{
color:grey;

}
 
  /* Tooltip */
  .test + .tooltip > .tooltip-inner {
      background-color: #b3b3b3; 
      color: #FFFFFF; 
      border: 1px solid grey; 
      padding: 10px;
      font-size: 18px;
  }

.form-basic .form-row>p:hover{
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
	z-index: 2;
	/* bottom: 100%; */
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
/* #piechart {
    
    width:100%;
    height:100%;
} */
 a:hover, 
.a:hover {
   text-decoration: none !important;
  /* color: inherit;  */
  opacity: 1;
  color:white;
/*   color: #FFF; */
} 



</style>
</head>
<header>
	<h1>ER ASSESSMENT BELIEF RULE-BASED SYSTEM</h1>
</header>
<ul>
	<LI><A href="index.html">Home</A></LI>
	<LI><span style="color:#4c565e;">&#10148;</span></LI>
	<li><a href="Assessment.jsp">Form</a>
	</li>
	<LI><span style="color:#4c565e;">&#10148;</span></LI>
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
			<%
				if (doubleVar >= 80.0) {
			%>
			<div class="alert success">
				<span class="closebtn">×</span> <strong>Level: Leading.</strong> Your ER index is great.Keep
				doing!
			</div>
			<%
				} else if (doubleVar > 50.0 && doubleVar < 80.0) {
			%>
			<div class="alert info">
				<span class="closebtn">×</span> <strong>Level: Succeeding.</strong> You are on the right track. Stay the course!
			</div>
			<%
				} else if (doubleVar > 25.0 && doubleVar <= 50.0) {
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
			<DIV class="container-fluid">
			<div class="row">
		<div class="col-md-6">
						<div class="form-row">
						<p>Total estimated ER index is <%
								Object obj = session.getAttribute("object");
								out.println(obj);
								
							%> %</p>
							<br>ER indexes for: <br>
							
						</div>
						<div class="form-row" onClick="">
						<%-- <p>	1. Equipment procurement compliance with Green ICT guidelines is
									about <%
								Object obj1 = session.getAttribute("ob");
							//	out.println(obj1);
								Object v1_av_obj = session.getAttribute("v1_av");
								out.println(v1_av_obj);
								Double dD = (Double) session.getAttribute("ob");
							%> % </p>
							<span class="tooltiptext">Click to see recommendations</span> --%>
							<a  class="test" href="Recommendations.jsp#V1" data-toggle="tooltip" title="See recommendations"><p>	1. Equipment procurement compliance with Green ICT guidelines is
									about <%
								Object obj1 = session.getAttribute("ob");
							//	out.println(obj1);
								Object v1_av_obj = session.getAttribute("v1_av");
								out.println(v1_av_obj);
								Double dD = (Double) session.getAttribute("ob");
							%> % </p></a>
						</div>
						<div class="form-row" onClick="window.location.href='Recommendations.jsp#V2';">
							<%-- <p>2. Energy performance improvement and monitoring is about <%
								Object obj2 = session.getAttribute("ob2");
							//	out.println(obj2);
								Object v2_av_obj = session.getAttribute("v2_av");
								out.println(v2_av_obj);
							%> %</p>
							<span class="tooltiptext">Click to see recommendations</span> --%>
							<a class="test" href="Recommendations.jsp#V2" data-toggle="tooltip" data-placement="top" title="See recommendations">2. Energy performance improvement and monitoring is about <%
								Object obj2 = session.getAttribute("ob2");
								//out.println(obj2);
								Object v2_av_obj = session.getAttribute("v2_av");
								out.println(v2_av_obj);
							%> %</a>
						</div>
						<div class="form-row" onClick="window.location.href='Recommendations.jsp#V3';">
							<%-- <p>3. Energy aware networks engineering adherence is about <%
								Object obj3 = session.getAttribute("ob3");
								//out.println(obj3);
								Object v3_av_obj = session.getAttribute("v3_av");
								out.println(v3_av_obj);
							%> %</p>
							<span class="tooltiptext">Click to see recommendations</span> --%>
							<a class="test" href="Recommendations.jsp#V3" data-toggle="tooltip" data-placement="top" title="See recommendations">3. Energy aware networks engineering adherence is about <%
								Object obj3 = session.getAttribute("ob3");
								//out.println(obj3);
								Object v3_av_obj = session.getAttribute("v3_av");
								out.println(v3_av_obj);
							%> %</a>
						</div>
						<div class="form-row" onClick="window.location.href='Recommendations.jsp#V4';">
							<%-- <p>4. Social commitment is about <%
								Object obj4 = session.getAttribute("ob4");
								//out.println(obj4);
								Object v4_av_obj = session.getAttribute("v4_av");
								out.println(v4_av_obj);
							%> %</p>
							<span class="tooltiptext">Click to see recommendations</span> --%>
							<a class="test" href="Recommendations.jsp#V4" data-toggle="tooltip"
								data-placement="top" title="See recommendations">4. Social commitment is about <%
								Object obj4 = session.getAttribute("ob4");
								//out.println(obj4);
								Object v4_av_obj = session.getAttribute("v4_av");
								out.println(v4_av_obj);
							%> %</a>
						</div>
						<div class="form-row" onClick="window.location.href='Recommendations.jsp#V5';">
							<%-- <p>5. Waste management is about <%
								Object obj5 = session.getAttribute("ob5");
								//out.println(obj5);
								Object v5_av_obj = session.getAttribute("v5_av");
								out.println(v5_av_obj);
							%> %</p>
							<span class="tooltiptext">Click to see recommendations</span> --%>
							<a class="test" href="Recommendations.jsp#V5" data-toggle="tooltip"
								data-placement="top" title="See recommendations">5. Waste management is about <%
								Object obj5 = session.getAttribute("ob5");
								//out.println(obj5);
								Object v5_av_obj = session.getAttribute("v5_av");
								out.println(v5_av_obj);
							%> %</a>
						</div>
						<div class="form-row">
							<a class="test" data-toggle="tooltip"
								data-placement="top" title="Click to see" href="Recommendations.jsp"><i class="glyphicon glyphicon-info-sign"></i> Full list of recommendations</a> 
						</div>
						
					</div>
					<div class="col-md-6">
						
							<div id="piechart" style="width:100%;" ></div>
							<!--  -->
						
						<div class="form-row" style="color:grey">
							Total estimated ER index is calculated as a mean value based on rules defined in application logic.<BR>
							Per category breakdown scores depended on form responses.
						</div>
						</div>
						</div>
						</DIV>
			
			
		</form>
	</div>
	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-75929935-1', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>