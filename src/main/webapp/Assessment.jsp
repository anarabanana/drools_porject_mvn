<!DOCTYPE html>
<HTML>
<HEAD>
<META charset="utf-8">
<META http-equiv="X-UA-Compatible" content="IE=edge">
<META name="viewport" content="width=device-width, initial-scale=1">
<SCRIPT src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"
	type="text/javascript"></SCRIPT>
<STYLE type="text/css">
a:link {
	text-decoration: none;
}

.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #673AB7;
	color: white;
	font-family: Verdana, sans-serif;
	font-size: 17px;
	margin: auto;
	padding: 20px;
	width: 80%;
	margin: auto;
	font-size: 15px;
	margin: auto;
	padding: 20px;
	text-align: center;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover,.close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

.form-basic .form-row {
	height: 200px; */
	min-height: 100%;
	/*max-height: 1000px; */
}
</STYLE>
<SCRIPT type="text/javascript">
	function SwapDivsWithClick(div1, div2) {
		d1 = document.getElementById(div1);
		d2 = document.getElementById(div2);
		if (d2.style.display == "none") {
			d1.style.display = "none";
			d2.style.display = "block";
		} else {
			d1.style.display = "block";
			d2.style.display = "none";
		}
	}
</SCRIPT>
<script type='text/javascript'>
var formSubmitting = false;
var setFormSubmitting = function() { formSubmitting = true; };
window.onload = function() {
    window.addEventListener("beforeunload", function (e) {
        if (formSubmitting) {
            return undefined;
        }

        var confirmationMessage = 'If you leave before submitting the form, changes you have made will be lost. ';
                                

        (e || window.event).returnValue = confirmationMessage; //Gecko + IE
        return confirmationMessage; //Gecko + Webkit, Safari, Chrome etc.
    });
};

</script>
<TITLE>ER Assessment BRB toolkit</TITLE>
<LINK rel="stylesheet" href="assets/demo.css">
<LINK rel="stylesheet" href="assets/form-basic.css">
<link rel="icon" href="assets/favicon.ico" type="image/png" sizes="16x16">
</HEAD>
<HEADER>
	<H1>ER ASSESSMENT BELIEF RULE-BASED SYSTEM</H1>
</HEADER>
<UL>
	<LI><A href="index.html">Home</A>
	</LI>
	<LI><span style="color:#4c565e;">&#10148;</span></LI>
	<LI><A href="Assessment.jsp" class="active">Form</A>
	</LI>

	<LI><A href="Results.jsp">Results</A>
	</LI>
	
	<LI><A href="Recommendations.jsp">Recommendations</A>
	</LI>
	
	<LI><A href="Calculate.jsp">Calculate</A>
	</LI>
</UL>
<BODY>
	<DIV class="main-content">
		<!-- You only need this form and the form-labels-on-top.css -->
		<FORM class="form-basic" method="POST" action="ReadParams" onsubmit="setFormSubmitting()">
			<DIV class="form-title-row">
				<H1>Please answer the questions</H1>
			</DIV>
			<DIV class="form-row" id="v1_1">
				<LABEL><SPAN>Total number of questions: <B>17</B>.</SPAN> </LABEL> <LABEL><SPAN><B>1.
					</B>Does your company follow Green ICT procurement guidelines when ICT equipment is purchased?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_1" value="high"> <SPAN>Always</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_1" value="medium"> <SPAN>Sometimes</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_1" value="low" checked="checked"> <SPAN>Never</SPAN>
						</LABEL>
					</DIV>
				</DIV>
				<div class="btn_pairs_next">
					<A href="javascript:SwapDivsWithClick('v1_1','v1_2')"><BUTTON type="button"
							onclick="myFlag1()">Next</BUTTON> </A>
				</DIV>
			</DIV>
			<DIV class="form-row" id="v1_2" style="display: none;">
				<LABEL><SPAN><B>2. </B>Have you ever used Life Cycle Impact Assessment as a
						product/service purchase criterion?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_2" value="high" checked="checked"> <SPAN>Yes</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_2" value="low"> <SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>
				<!--  margin: 50px 30px 0 400px;
				margin: 50px 450px 0 250px; -->
				<div class="btn_pairs_back">
					<A href="javascript:SwapDivsWithClick('v1_2','v1_1')"><BUTTON type="button" style="">Back</BUTTON>
					</A>
				</DIV>
				<div class="btn_pairs_next">
					<A href="javascript:SwapDivsWithClick('v1_2','v1_3')"><BUTTON type="button"
							onclick="myFlag2()">Next</BUTTON> </A>
				</DIV>
			</DIV>
			<DIV class="form-row" id="v1_3" style="display: none;">
				<LABEL><SPAN><B>3. </B>Do you prioritize eco-labels (e.g. EPEAT, Energy Star, EU
						Ecolabel, SWAN etc.)?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_3" value="high"> <SPAN>For 100 %
								of equipment</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_3" value="high" checked="checked"> <SPAN>For
								between 70 to 99 % of equipment</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_3" value="medium" checked="checked"> <SPAN>For
								between 40 to 69 % of equipment</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_3" value="low" checked="checked"> <SPAN>For
								less than 40 % of equipment</SPAN> </LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v1_3','v1_2')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v1_3','v1_4')"><BUTTON type="button"
										onclick="myFlag3()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v1_4" style="display: none;">
				<LABEL><SPAN><B>4. </B>How familiar are you with services that minimize the
						energy consumption and environmental impact of ICT equipment (e.g. virtualization,
						optimization, etc.)?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_4" value="high"> <SPAN>Extremely</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_4" value="medium" checked="checked"> <SPAN>Moderately</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_4" value="low" checked="checked"> <SPAN>None</SPAN>
						</LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v1_4','v1_3')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v1_4','v2_1')"><BUTTON type="button"
										onclick="myFlag4()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v2_1" style="display: none;">
				<LABEL><SPAN><B>5. </B>Have you ever conducted any ICT equipment energy
						consumption assessment?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_1" value="high" checked="checked"> <SPAN>Yes</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_1" value="low" > <SPAN>No</SPAN>
						</LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v2_1','v1_4')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v2_1','v2_2')"><BUTTON type="button"
										onclick="myFlag2_1()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v2_2" style="display: none;">
				<LABEL><SPAN><B>6. </B>Is the use of 'switch off' and 'standby' modes common in your
						company?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_2" value="high"> <SPAN>Yes for all</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_2" value="medium"> <SPAN>Occasionally</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_2" value="low" checked="checked"> <SPAN>No</SPAN>
						</LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v2_2','v2_1')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v2_2','v2_3')"><BUTTON type="button"
										onclick="myFlag2_2()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v2_3" style="display: none;">
				<LABEL><SPAN><B>7. </B>Have you installed any power management software in your
						company's ICT equipment?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_3" value="high"> <SPAN>Yes</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_3" value="low" checked="checked"> <SPAN>No</SPAN>
						</LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v2_3','v2_2')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v2_3','v2_4')"><BUTTON type="button"
										onclick="myFlag2_3()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v2_4" style="display: none;">
				<LABEL><SPAN><B>8. </B>How often do you follow any systematic approach for energy
						efficiency improvement (e.g. data collection, and data analysis)?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_4" value="high"> <SPAN>Always for
								all</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_4" value="medium" checked="checked"> <SPAN>Sometimes</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_4" value="low" checked="checked"> <SPAN>Never</SPAN>
						</LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v2_4','v2_3')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v2_4','v2_5')"><BUTTON type="button"
										onclick="myFlag2_4()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v2_5" style="display: none;">
				<LABEL><SPAN><B>9. </B>Does your company use energy from any of these renewable
						sources? (e.g. solar, wind, geothermal or biomass energy)?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_5" value="high"> <SPAN>Yes, from
								at least one</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_5" value="low" checked="checked"> <SPAN>No</SPAN>
						</LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v2_5','v2_4')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v2_5','v3_1')"><BUTTON type="button"
										onclick="myFlag2_5()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v3_1" style="display: none;">
				<LABEL><SPAN><B>10. </B>To what extent does the following statement apply to your company? "The
						network infrastructure makes use of equipment that adheres to the latest energy efficiency
						standards (sleep mode or Energy Efficient Ethernet)" </SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v3_1" value="high"> <SPAN>Extremely</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v3_1" value="medium" checked="checked"> <SPAN>Moderately</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v3_1" value="low"> <SPAN>Not at all</SPAN> </LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v3_1','v2_5')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v3_1','v3_2')"><BUTTON type="button"
										onclick="myFlag3_1()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v3_2" style="display: none;">
				<LABEL><SPAN><B>11. </B>To what extent does the following statement apply to your company? "Our company's required IT equipment, functionalities and quality of service are optimized in
						order to reduce environmental impact."</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v3_2" value="high"> <SPAN>Extremely</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v3_2" value="medium" checked="checked"> <SPAN>Moderately</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v3_2" value="low"> <SPAN>Not at all</SPAN> </LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v3_2','v3_1')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v3_2','v3_3')"><BUTTON type="button"
										onclick="myFlag3_2()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v3_3" style="display: none;">
				<LABEL><SPAN><B>12. </B>To what extent does the following statement apply to your company?
						"Routing is made energy aware and offers possibilities to choose the most energy efficient
						route instead of the shortest path."</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v3_3" value="high"> <SPAN>Extremely</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v3_3" value="medium" checked="checked"> <SPAN>Moderately</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v3_3" value="low"> <SPAN>Not at all</SPAN> </LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v3_3','v3_2')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v3_3','v4_1')"><BUTTON type="button"
										onclick="myFlag3_3()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v4_1" style="display: none;">
				<LABEL><SPAN><B>13. </B>Has your company adopted any documented reference
						architecture, with guiding principles for designing new services/products, aimed at minimize
						environmental impact?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v4_1" value="high" checked="checked"> <SPAN>Yes</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v4_1" value="low"> <SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v4_1','v3_3')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v4_1','v4_2')"><BUTTON type="button"
										onclick="myFlag4_1()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v4_2" style="display: none;">
				<LABEL><SPAN><B>14. </B>Does your company have any sustainable
						development-related training and communication activities for employees?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v4_2" value="high" checked="checked"> <SPAN>Yes</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v4_2" value="low"> <SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v4_2','v4_1')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v4_2','v4_3')"><BUTTON type="button"
										onclick="myFlag4_2()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v4_3" style="display: none;">
				<LABEL><SPAN><B>15. </B>Does your company promote the use of audio and video
						conferencing facilities that reduce business travel expenses?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v4_3" value="high" checked="checked"> <SPAN>Yes</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v4_3" value="low"> <SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v4_3','v4_2')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v4_3','v5_1')"><BUTTON type="button"
										onclick="myFlag4_3()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v5_1" style="display: none;">
				<LABEL><SPAN><B>16. </B>Does the following statement apply to your company?
						"Our company ensures the strict implementation of an e-waste policy for the reuse or recycling of ICT
						equipment to minimize environmental and social hazards after disposal." </SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v5_1" value="high" checked="checked"> <SPAN>Extremely</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v5_1" value="medium"> <SPAN>Moderately</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v5_1" value="low"> <SPAN>Not at all</SPAN> </LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v5_1','v4_3')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<A href="javascript:SwapDivsWithClick('v5_1','v5_2')"><BUTTON type="button"
										onclick="myFlag5_1()">Next</BUTTON> </A>
							</div></td>
					</tr>
				</TABLE>
			</DIV>
			<DIV class="form-row" id="v5_2" style="display: none;">
				<LABEL><SPAN><B>17. </B>Does your company use any collection and recovery (e.g.
						reuse, repairing, remanufacturing) channels (subcontractors) that can reduce the amount of
						waste sent to landfill? </SPAN> </LABEL>
				<DIV class="form-radio-buttons">
					<DIV>
						<LABEL> <INPUT type="radio" name="v5_2" value="high" checked="checked"> <SPAN>Yes</SPAN>
						</LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v5_2" value="low"> <SPAN>No </SPAN> </LABEL>
					</DIV>
				</DIV>
				<TABLE>
					<tr>
						<td><div class="btn_pairs_back">
								<A href="javascript:SwapDivsWithClick('v5_2','v5_1')"><BUTTON type="button">Back</BUTTON>
								</A>
							</div></td>
						<td><div class="btn_pairs_next">
								<BUTTON type="submit" id="myBtn" onmousedown="myFlag5_2()">Submit Form</BUTTON>
							</div></td>
					</tr>
				</TABLE>
				<!-- The Modal -->
				<div id="myModal" class="modal">
					<!-- Modal content -->
					<div class="modal-content">
						<span class="close">×</span>
						<p>It will take a few moments to process your request for the first time. Please wait
							while page is loading.</p>
					</div>
				</div>
			</DIV>
		</FORM>
	</DIV>
	<script>
		function myFlag1() {
			var row_v1_1 = document.getElementsByName('v1_1');
			var v1_1_value;
			for ( var i = 0; i < row_v1_1.length; i++) {
				if (row_v1_1[i].checked) {
					v1_1_value = row_v1_1[i].value;
					localStorage.setItem("v1_1", v1_1_value);
				}
			}

		}
		function myFlag2() {
			var row_v1_2 = document.getElementsByName('v1_2');
			var v1_2_value;
			for ( var i = 0; i < row_v1_2.length; i++) {
				if (row_v1_2[i].checked) {
					v1_2_value = row_v1_2[i].value;
					localStorage.setItem("v1_2", v1_2_value);
				}
			}

		}
		function myFlag3() {
			var row_v1_3 = document.getElementsByName('v1_3');
			var v1_3_value;
			for ( var i = 0; i < row_v1_3.length; i++) {
				if (row_v1_3[i].checked) {
					v1_3_value = row_v1_3[i].value;
					localStorage.setItem("v1_3", v1_3_value);
				}
			}
		}
		function myFlag4() {
			var row_v1_4 = document.getElementsByName('v1_4');
			var v1_4_value;
			for ( var i = 0; i < row_v1_4.length; i++) {
				if (row_v1_4[i].checked) {
					v1_4_value = row_v1_4[i].value;
					localStorage.setItem("v1_4", v1_4_value);
					//window.location.href='Recommendations.jsp#V1';

				}
			}
		}
		function myFlag2_1() {
			var row_v2_1 = document.getElementsByName('v2_1');
			var v2_1_value;
			for ( var i = 0; i < row_v2_1.length; i++) {
				if (row_v2_1[i].checked) {
					v2_1_value = row_v2_1[i].value;
					localStorage.setItem("v2_1", v2_1_value);

				}
			}
		}
		function myFlag2_2() {
			var row_v2_2 = document.getElementsByName('v2_2');
			var v2_2_value;
			for ( var i = 0; i < row_v2_2.length; i++) {
				if (row_v2_2[i].checked) {
					v2_2_value = row_v2_2[i].value;
					localStorage.setItem("v2_2", v2_2_value);

				}
			}
		}
		function myFlag2_3() {
			var row_v2_3 = document.getElementsByName('v2_3');
			var v2_3_value;
			for ( var i = 0; i < row_v2_3.length; i++) {
				if (row_v2_3[i].checked) {
					v2_3_value = row_v2_3[i].value;
					localStorage.setItem("v2_3", v2_3_value);

				}
			}
		}
		function myFlag2_4() {
			var row_v2_4 = document.getElementsByName('v2_4');
			var v2_4_value;
			for ( var i = 0; i < row_v2_4.length; i++) {
				if (row_v2_4[i].checked) {
					v2_4_value = row_v2_4[i].value;
					localStorage.setItem("v2_4", v2_4_value);

				}
			}
		}
		function myFlag2_5() {
			var row_v2_5 = document.getElementsByName('v2_5');
			var v2_5_value;
			for ( var i = 0; i < row_v2_5.length; i++) {
				if (row_v2_5[i].checked) {
					v2_5_value = row_v2_5[i].value;
					localStorage.setItem("v2_5", v2_5_value);

				}
			}
		}
		function myFlag3_1() {
			var row_v3_1 = document.getElementsByName('v3_1');
			var v3_1_value;
			for ( var i = 0; i < row_v3_1.length; i++) {
				if (row_v3_1[i].checked) {
					v3_1_value = row_v3_1[i].value;
					localStorage.setItem("v3_1", v3_1_value);

				}
			}
		}
		function myFlag3_2() {
			var row_v3_2 = document.getElementsByName('v3_2');
			var v3_2_value;
			for ( var i = 0; i < row_v3_2.length; i++) {
				if (row_v3_2[i].checked) {
					v3_2_value = row_v3_2[i].value;
					localStorage.setItem("v3_2", v3_2_value);

				}
			}
		}
		function myFlag3_3() {
			var row_v3_3 = document.getElementsByName('v3_3');
			var v3_3_value;
			for ( var i = 0; i < row_v3_3.length; i++) {
				if (row_v3_3[i].checked) {
					v3_3_value = row_v3_3[i].value;
					localStorage.setItem("v3_3", v3_3_value);

				}
			}
		}
		function myFlag4_1() {
			var row_v4_1 = document.getElementsByName('v4_1');
			var v4_1_value;
			for ( var i = 0; i < row_v4_1.length; i++) {
				if (row_v4_1[i].checked) {
					v4_1_value = row_v4_1[i].value;
					localStorage.setItem("v4_1", v4_1_value);

				}
			}
		}
		function myFlag4_2() {
			var row_v4_2 = document.getElementsByName('v4_2');
			var v4_2_value;
			for ( var i = 0; i < row_v4_2.length; i++) {
				if (row_v4_2[i].checked) {
					v4_2_value = row_v4_2[i].value;
					localStorage.setItem("v4_2", v4_2_value);

				}
			}
		}
		function myFlag4_3() {
			var row_v4_3 = document.getElementsByName('v4_3');
			var v4_3_value;
			for ( var i = 0; i < row_v4_3.length; i++) {
				if (row_v4_3[i].checked) {
					v4_3_value = row_v4_3[i].value;
					localStorage.setItem("v4_3", v4_3_value);

				}
			}
		}
		function myFlag5_1() {
			var row_v5_1 = document.getElementsByName('v5_1');
			var v5_1_value;
			for ( var i = 0; i < row_v5_1.length; i++) {
				if (row_v5_1[i].checked) {
					v5_1_value = row_v5_1[i].value;
					localStorage.setItem("v5_1", v5_1_value);

				}
			}
		}
		function myFlag5_2() {
			var row_v5_2 = document.getElementsByName('v5_2');
			var v5_2_value;
			for ( var i = 0; i < row_v5_2.length; i++) {
				if (row_v5_2[i].checked) {
					v5_2_value = row_v5_2[i].value;
					localStorage.setItem("v5_2", v5_2_value);

				}
			}
		}

		// alert(x)
	</script>
	<SCRIPT>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</SCRIPT>
	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-75929935-1', 'auto');
  ga('send', 'pageview');

</script>
</BODY>
</HTML>