<!DOCTYPE html>
<HTML>

<HEAD>

<META charset="utf-8">
<META http-equiv="X-UA-Compatible" content="IE=edge">
<META name="viewport" content="width=device-width, initial-scale=1">
<SCRIPT
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"
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
	font-family: Verdana, sans-serif; font-size : 17px; margin : auto;
	padding: 20px;
	
	width: 80%;
	margin: auto;
	font-size: 15px;
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


<TITLE>ER Assessment BRB toolkit</TITLE>

<LINK rel="stylesheet" href="assets/demo.css">
<LINK rel="stylesheet" href="assets/form-basic.css">

</HEAD>


<HEADER>
	<H1>ER Assessment Belief rule-based system</H1>
</HEADER>

<UL>
	<LI><A href="index.jsp" class="active">User Input</A>
	</LI>
	<LI><A href="Results.jsp">Results</A>
	</LI>
	<LI><A href="Recommendations.jsp">Recommendations</A>
	</LI>
</UL>
<BODY>

	<DIV class="main-content">
		<!-- You only need this form and the form-labels-on-top.css -->

		<FORM class="form-basic" method="POST" action="ReadParams">


			<DIV class="form-title-row">
				<H1>Please answer the questions</H1>
			</DIV>

			<DIV class="form-row" id="v1_1">
				<LABEL><SPAN><B>1. </B>Does your company follow Green
						ICT procurement guidelines when ICT equipment is purchased?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v1_1" value="high">
							<SPAN>Yes</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v1_1" value="medium">
							<SPAN>Undecided</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v1_1" value="low"
							checked="checked"> <SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>
				<A href="javascript:SwapDivsWithClick('v1_1','v1_2')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>

			<DIV class="form-row" id="v1_2" style="display: none;">
				<LABEL><SPAN><B>2. </B>Have you ever used Life Cycle
						Impact Assessment as a product/service purchase criterion?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v1_2" value="high"
							checked="checked"> <SPAN>Yes</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v1_2" value="low">
							<SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>

				<A href="javascript:SwapDivsWithClick('v1_2','v1_3')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>

			<DIV class="form-row" id="v1_3" style="display: none;">
				<LABEL><SPAN><B>3. </B>Do you prioritize eco-labels
						(e.g. EPEAT, Energy Star, EU Ecolabel, SWAN etc.)?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v1_3" value="high">
							<SPAN>For 100 % of equipment</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v1_3" value="medium"
							checked="checked"> <SPAN>For between 70 to 99 % of
								equipment</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_3" value="medium"
							checked="checked"> <SPAN>For between 40 to 69 % of
								equipment</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_3" value="low"
							checked="checked"> <SPAN>For less than 40 % of
								equipment</SPAN> </LABEL>
					</DIV>
				</DIV>

				<A href="javascript:SwapDivsWithClick('v1_3','v1_4')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>


			<DIV class="form-row" id="v1_4" style="display: none;">
				<LABEL><SPAN><B>4. </B>Are you familiar with use of
						services that minimise the energy consumption and environmental
						impact of ICT equipment (e.g. virtualization, optimization, etc.)?</SPAN>
				</LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v1_4" value="high">
							<SPAN>Extremely</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v1_4" value="medium"
							checked="checked"> <SPAN>Moderately</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v1_4" value="low"
							checked="checked"> <SPAN>None</SPAN> </LABEL>
					</DIV>
				</DIV>

				<A href="javascript:SwapDivsWithClick('v1_4','v2_1')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>

			<DIV class="form-row" id="v2_1" style="display: none;">
				<LABEL><SPAN><B>5. </B>Have you ever conducted any
						ICT equipment energy consumption assessment?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_1" value="high">
							<SPAN>Yes</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_1" value="low"
							checked="checked"> <SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>

				<A href="javascript:SwapDivsWithClick('v2_1','v2_2')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>
			<DIV class="form-row" id="v2_2" style="display: none;">
				<LABEL><SPAN><B>6. </B>Is use of switch off and
						standby modes common in your company?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_2" value="high">
							<SPAN>Yes for all</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_2" value="medium">
							<SPAN>Undecided</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_2" value="low"
							checked="checked"> <SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>

				<A href="javascript:SwapDivsWithClick('v2_2','v2_3')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>

			<DIV class="form-row" id="v2_3" style="display: none;">
				<LABEL><SPAN><B>7. </B>Have you installed any power
						management software in your company ICT equipment?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_3" value="high">
							<SPAN>Yes</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_3" value="low"
							checked="checked"> <SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>

				<A href="javascript:SwapDivsWithClick('v2_3','v2_4')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>
			<DIV class="form-row" id="v2_4" style="display: none;">
				<LABEL><SPAN><B>8. </B>Have you followed any
						systematic approach for energy efficiency improvement (e.g. data
						collection, and data analysis)?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_4" value="high">
							<SPAN>Always for all</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_4" value="medium"
							checked="checked"> <SPAN>Sometimes</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_4" value="low"
							checked="checked"> <SPAN>Never</SPAN> </LABEL>
					</DIV>
				</DIV>

				<A href="javascript:SwapDivsWithClick('v2_4','v2_5')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>

			<DIV class="form-row" id="v2_5" style="display: none;">
				<LABEL><SPAN><B>9. </B>Does your company use energy
						from any of these renewable sources? (e.g. solar, wind, geothermal
						or biomass energy)?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v2_5" value="high">
							<SPAN>Yes, from at least one</SPAN> </LABEL>
					</DIV>
					<DIV>
						<LABEL> <INPUT type="radio" name="v2_5" value="low"
							checked="checked"> <SPAN>No</SPAN> </LABEL>
					</DIV>
				</DIV>

				<A href="javascript:SwapDivsWithClick('v2_5','v3_1')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>

			<DIV class="form-row" id="v3_1" style="display: none;">
				<LABEL><SPAN><B>10. </B>Do the following statement
						apply to your company? "The network infrastructure makes use of
						equipment that adheres to the latest energy efficiency standards
						(sleep mode or Energy Efficient Ethernet)" </SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v3_1" value="high">
							<SPAN>Extremely</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v3_1" value="medium"
							checked="checked"> <SPAN>Moderately</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v3_1" value="low">
							<SPAN>Not at all</SPAN> </LABEL>
					</DIV>
				</DIV>
				<A href="javascript:SwapDivsWithClick('v3_1','v3_2')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>

			<DIV class="form-row" id="v3_2" style="display: none;">
				<LABEL><SPAN><B>11. </B>Do the following statement
						apply to your company? "The number of required IT equipment,
						functionalities, and quality of service are optimized in order to
						reduce environmental impact."</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v3_2" value="high">
							<SPAN>Extremely</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v3_2" value="medium"
							checked="checked"> <SPAN>Moderately</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v3_2" value="low">
							<SPAN>Not at all</SPAN> </LABEL>
					</DIV>
				</DIV>
				<A href="javascript:SwapDivsWithClick('v3_2','v3_3')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>

			<DIV class="form-row" id="v3_3" style="display: none;">
				<LABEL><SPAN><B>11. </B>Do the following statement
						apply to your company? "Routing is made energy aware and offers
						possibilities to choose the most energy efficient route instead of
						the shortest path."</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v3_3" value="high">
							<SPAN>Extremely</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v3_3" value="medium"
							checked="checked"> <SPAN>Moderately</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v3_3" value="low">
							<SPAN>Not at all</SPAN> </LABEL>
					</DIV>
				</DIV>
				<A href="javascript:SwapDivsWithClick('v3_3','v4_1')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>


			<DIV class="form-row" id="v4_1" style="display: none;">
				<LABEL><SPAN><B>12. </B>Has your company adopted any
						documented reference architecture (with guiding principles for
						designing new services/products) aimed to minimize environmental
						impact?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v4_1" value="high"
							checked="checked"> <SPAN>True</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v4_1" value="low">
							<SPAN>False</SPAN> </LABEL>
					</DIV>
				</DIV>
				<A href="javascript:SwapDivsWithClick('v4_1','v4_2')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>
			<DIV class="form-row" id="v4_2" style="display: none;">
				<LABEL><SPAN><B>13. </B>Does your company have any
						sustainable development-related training and communication
						activities for employees?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v4_2" value="high"
							checked="checked"> <SPAN>True</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v4_2" value="low">
							<SPAN>False</SPAN> </LABEL>
					</DIV>
				</DIV>
				<A href="javascript:SwapDivsWithClick('v4_2','v4_3')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>
			<DIV class="form-row" id="v4_3" style="display: none;">
				<LABEL><SPAN><B>14. </B>Does your company promote the
						use of audio and video conferencing facilities reduce travel?</SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v4_3" value="high"
							checked="checked"> <SPAN>True</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v4_3" value="low">
							<SPAN>False</SPAN> </LABEL>
					</DIV>
				</DIV>
				<A href="javascript:SwapDivsWithClick('v4_3','v5_1')"><BUTTON
						type="button">Next</BUTTON> </A>

			</DIV>


			<DIV class="form-row" id="v5_1" style="display: none;">
				<LABEL><SPAN><B>15. </B>Does the following statement
						apply to your company? "Ensure a strict implementation of an
						e-waste policy for the reuse or recycling of ICT equipment to
						minimize environmental and social hazards after disposal." </SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v5_1" value="high"
							checked="checked"> <SPAN>Extremely</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v5_1" value="medium">
							<SPAN>Moderately</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v5_1" value="low">
							<SPAN>Not at all</SPAN> </LABEL>
					</DIV>
				</DIV>
				<A href="javascript:SwapDivsWithClick('v5_1','v5_2')"><BUTTON
						type="button">Next</BUTTON> </A>
			</DIV>
			<DIV class="form-row" id="v5_2" style="display: none;">
				<LABEL><SPAN><B>16. </B>Does your company have any
						collection and recovery (e.g. reuse, repairing, remanufacturing)
						channels (subcontractors) that can reduce the amount of waste sent
						to landfill? </SPAN> </LABEL>
				<DIV class="form-radio-buttons">

					<DIV>
						<LABEL> <INPUT type="radio" name="v5_2" value="high"
							checked="checked"> <SPAN>True</SPAN> </LABEL>
					</DIV>

					<DIV>
						<LABEL> <INPUT type="radio" name="v5_2" value="low">
							<SPAN>False </SPAN> </LABEL>
					</DIV>
				</DIV>
				<BUTTON type="submit" id="myBtn">Submit Form</BUTTON>

				<!-- The Modal -->
				<div id="myModal" class="modal">

					<!-- Modal content -->
					<div class="modal-content">
						<span class="close">×</span>
						<p>It will take a few moments to process your request for the
							first time.Please wait while page is loading.</p>
					</div>

				</div>
			</DIV>


		</FORM>

	</DIV>
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

</BODY>

</HTML>