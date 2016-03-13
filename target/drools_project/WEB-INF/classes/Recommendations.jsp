
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Recommended activities</title>
<link rel="stylesheet" href="assets/demo.css">
<link rel="stylesheet" href="assets/form-mini.css">
<link rel="icon" href="assets/favicon.ico" type="image/png" sizes="16x16">
<script>
	//document.getElementById("result").innerHTML = localStorage.getItem("lastname");
	//alert(localStorage.getItem('v1_1'))
	window.onload = function() {
		var v1_1 = localStorage.getItem('v1_1');
		var v1_2 = localStorage.getItem('v1_2');
		var v1_3 = localStorage.getItem('v1_3');
		var v1_4 = localStorage.getItem('v1_4');

		var v2_1 = localStorage.getItem('v2_1');
		var v2_2 = localStorage.getItem('v2_2');
		var v2_3 = localStorage.getItem('v2_3');
		var v2_4 = localStorage.getItem('v2_4');
		var v2_5 = localStorage.getItem('v2_5');

		var v3_1 = localStorage.getItem('v3_1');
		var v3_2 = localStorage.getItem('v3_2');
		var v3_3 = localStorage.getItem('v3_3');

		var v4_1 = localStorage.getItem('v4_1');
		var v4_2 = localStorage.getItem('v4_2');
		var v4_3 = localStorage.getItem('v4_3');

		var v5_1 = localStorage.getItem('v5_1');
		var v5_2 = localStorage.getItem('v5_2');

		switch (v1_1) {
		case "high":
			document.getElementById("1_1").style.display = 'inline-block';
			break;
		default:
			document.getElementById("1_1").style.display = 'none';
		}
		switch (v1_2) {
		case "high":
			document.getElementById("1_2").style.display = 'inline-block';
			break;
		default:
			document.getElementById("1_2").style.display = 'none';

		}
		switch (v1_3) {
		case "high":
			document.getElementById("1_3").style.display = 'inline-block';
			break;
		default:
			document.getElementById("1_3").style.display = 'none';
		}
		switch (v1_4) {
		case "high":
			document.getElementById("1_4").style.display = 'inline-block';
			break;
		default:
			document.getElementById("1_4").style.display = 'none';
		}

		switch (v2_1) {
		case "high":
			document.getElementById("2_1").style.display = 'inline-block';
			break;
		default:
			document.getElementById("2_1").style.display = 'none';
		}
		switch (v2_2) {
		case "high":
			document.getElementById("2_2").style.display = 'inline-block';
			break;
		default:
			document.getElementById("2_2").style.display = 'none';
		}
		switch (v2_3) {
		case "high":
			document.getElementById("2_3").style.display = 'inline-block';
			break;
		default:
			document.getElementById("2_3").style.display = 'none';
		}
		switch (v2_4) {
		case "high":
			document.getElementById("2_4").style.display = 'inline-block';
			break;
		default:
			document.getElementById("2_4").style.display = 'none';
		}
		switch (v2_5) {
		case "high":
			document.getElementById("2_5").style.display = 'inline-block';
			break;
		default:
			document.getElementById("2_5").style.display = 'none';
		}

		switch (v3_1) {
		case "high":
			document.getElementById("3_1").style.display = 'inline-block';
			break;
		default:
			document.getElementById("3_1").style.display = 'none';
		}
		switch (v3_2) {
		case "high":
			document.getElementById("3_2").style.display = 'inline-block';
			break;
		default:
			document.getElementById("3_2").style.display = 'none';
		}
		switch (v3_3) {
		case "high":
			document.getElementById("3_3").style.display = 'inline-block';
			break;
		default:
			document.getElementById("3_3").style.display = 'none';
		}

		switch (v4_1) {
		case "high":
			document.getElementById("4_1").style.display = 'inline-block';
			break;
		default:
			document.getElementById("4_1").style.display = 'none';
		}
		switch (v4_2) {
		case "high":
			document.getElementById("4_2").style.display = 'inline-block';
			break;
		default:
			document.getElementById("4_2").style.display = 'none';
		}
		switch (v4_3) {
		case "high":
			document.getElementById("4_3").style.display = 'inline-block';
			break;
		default:
			document.getElementById("4_3").style.display = 'none';
		}
		switch (v5_1) {
		case "high":
			document.getElementById("5_1").style.display = 'inline-block';
			break;
		default:
			document.getElementById("5_1").style.display = 'none';
		}
		switch (v5_2) {
		case "high":
			document.getElementById("5_2").style.display = 'inline-block';
			break;
		default:
			document.getElementById("5_2").style.display = 'none';
		}

	}
</script>
<style>
:target {
	padding: 16px 20px;
	box-shadow: 0 0 6px rgb(103, 58, 183);
	border: 2px rgba(81, 203, 238, 1);
}
/* #checkmark {
    visibility: hidden;
} */
.checkmark {
	/* position: absolute; */
    float: right;
	display: inline-block;
	width: 22px;
	height: 22px;
	background: green;
	border-radius: 50%;
	-ms-transform: rotate(45deg); /* IE 9 */
	-webkit-transform: rotate(45deg); /* Chrome, Safari, Opera */
	transform: rotate(45deg);
}

.checkmark:before {
	content: "";
	position: absolute;
	width: 3px;
	height: 9px;
	background-color: #fff;
	left: 11px;
	top: 6px;
}

.checkmark:after {
	content: "";
	position: absolute;
	width: 3px;
	height: 3px;
	background-color: #fff;
	left: 8px;
	top: 12px;
}
</style>
</head>
<header>
	<h1>ER Assessment Belief rule-based system</h1>
</header>
<ul>
	<LI><A href="index.html">Home</A>
	</LI>
	<li><a href="Assessment.jsp">Form</a>
	</li>
	<li><a href="Results.jsp">Results</a>
	</li>
	<li><a href="Recommendations.jsp" class="active">Recommendations</a></li>
	<li><a href="Calculate.jsp">Calculate</a></li>
</ul>
<body>
	<div class="main-content">
		<!-- You only need this form and the form-mini.css -->
		<div class="form-mini-container">
			<form class="form-mini">
				<div class="form-radio-buttons" id="V1">
					<div>
						<label><span>1. Equipment procurement compliance with Green ICT guidelines</span>
							<li>Green ICT procurement guidelines when buying new ICT equipment <span
								class="checkmark" id="1_1"></span>
						</li>
							<li>Life Cycle Assessment technique is useful to assess environmental impacts associated
								with all the stages of a product's life <span class="checkmark" id="1_2"></span></li>
							<li>Use of eco labelled devices <span class="checkmark" id="1_3"></span>
						</li>
							<li>Parts replacement of equipment <span class="checkmark" id="1_4">
						</li>
							<li>ICT equipment as a service (IaaS)<span class="checkmark" id="1_4">
						</li>
							<li>Use cloud computing <span class="checkmark" id="1_4">
						</li>
							<li>Desktop virtualization software <span class="checkmark" id="1_4">
						</li> </label>
					</div>
				</div>
				<div class="form-radio-buttons" id="V2">
					<div>
						<label> <span>2. Energy performance improvement and monitoring </span>
							<li>Use energy monitoring and management hardware and software <span class="checkmark"
								id="2_1">
						</li>
							<li>Enable PC energy saving functions <span class="checkmark" id="2_2"></span>
						</li>
							<li>Switch off unused devices completely <span class="checkmark" id="2_2"></span>
						</li>
							<li>Turn off peripherals, or set them to stand-by mode respectively <span
								class="checkmark" id="2_2"></span>
						</li>
							<li>Switch on/off WiFi Access Points <span class="checkmark" id="2_2"></span>
						</li>
							<li>Power management software can automate switch off activities <span class="checkmark"
								id="2_3"></span>
						</li>
							<li>Integration assessment into management system (Green IT officer) <span
								class="checkmark" id="2_4"></span>
						</li>
							<li>Use multifunction devices<span class="checkmark" id="2_4"></span>
						</li>
							<li>Adjust monitor's brightness <span class="checkmark" id="2_4"></span>
						</li>
							<li>Duplex printing <span class="checkmark" id="2_4"></span></i>
						<li>Colour print-outs reduction,Toner disposal <span class="checkmark" id="2_4"></span>
						</li>
							<li>Printing centralization <span class="checkmark" id="2_4"></span>
						</li>
							<li>Optimize cooling in server rooms<span class="checkmark" id="2_4"></span>
						</li>
							<li>Use of alternative energy from renewable sources <span class="checkmark" id="2_5"></span>
						</li>
							<li>Install energy-efficient rectifiers <span class="checkmark" id="2_5"></span>
						</li>
							<li>ICT equipment functioning with DC current may reduce energy losses due to energy
								conversion <span class="checkmark" id="2_5"></span>
						</li>
					</div>
				</div>
				<div class="form-radio-buttons" id="V3">
					<div>
						<label> <span>3. Energy aware networks engineering adherence </span>
							<li>Network infrastructure deploying intelligent switches, Power over Ethernet <span
								class="checkmark" id="3_1"></span>
						</li>
							<li>Optical transmission - installing optical bypassing in core networks, using fibre in
								wired access networks <span class="checkmark" id="3_2"></span></li>
							<li>Replacing existing devices by new more-energy-efficient<span class="checkmark" id="3_2"></span></li>
							<li>Traffic optimisation, rerouting<span class="checkmark" id="3_3"></span></li> </label>
					</div>
				</div>
				<div class="form-radio-buttons" id="V4">
					<div>
						<label> <span>4. Social commitment </span>
							<li>Adopt a strategy <span class="checkmark" id="4_1"></span></li>
							<li>Standards compliance <span class="checkmark" id="4_1"></span></li>
							<li>Train the staff <span class="checkmark" id="4_2"></span></li>
							<li>Community collaboration: best practices sharing <span class="checkmark" id="4_2"></span></li>	
							<li>Travel reductions: Audio and video conferencing <span class="checkmark" id="4_3"></span></li> </label>
					</div>
				</div>
				<div class="form-radio-buttons" id="V5">
					<div>
						<label> <span>5. Waste management </span>
							
							<li>Adopt policies for ICT equipment recycling, recovery, reuse of materials and responsible disposal <span class="checkmark" id="5_1"></li>							
							<li>Extending ICT equipment life - waste prevention <span class="checkmark" id="5_1"></li> 
							<li>General Recycling <span class="checkmark" id="5_2"></li>
							<li>Recycle used electronic devices, use recycled paper <span class="checkmark" id="5_2"></li></label>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>