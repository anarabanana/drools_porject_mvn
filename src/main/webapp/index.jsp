<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>ER Assessment BRB toolkit</title>

<link rel="stylesheet" href="assets/demo.css">
<link rel="stylesheet" href="assets/form-basic.css">

</head>


<header>
<h1>ER Assessment Belief rule-based system</h1>
</header>

<ul>
	<li><a href="index.html" class="active">User Input</a></li>
	<li><a href="Results.jsp">Recommendations</a></li>
	<li><a href="Resources.html">Resources</a></li>
</ul>


<div class="main-content"><!-- You only need this form and the form-labels-on-top.css -->

<form class="form-basic" method="POST" action="ReadParams">

<div class="form-title-row">
<h1>Please answer the questions</h1>
</div>

<div class="form-row"><label><span><b>A1:</b>If ICT
equipment is purchased Green ICT procurement guidelines are followed
that consider the whole life cycle: rare material use, energy
consumption, recyclable, etc. Prioritizing labelled, mobile, shared,
multifunction and appropriately sized equipment to reach energy saving.
Use Life Cycle Assessment Tool as a purchase criteria.
<br><b>A5</b>:Use of ICT
services that minimise the energy consumption and environmental impact
of managing ICT equipment, such as cloud computing and virtualization;
reduce paper consumption and consumables: dematerialization.</span></label>
<div class="form-radio-buttons">

<div><label> <input type="radio" name="v1" value="high"> <span>Yes</span> </label></div>

<div><label> <input type="radio" name="v1" value="medium"> <span>Sometimes</span> </label></div>

<div><label> <input type="radio" name="v1" value="low" checked="checked"> <span>No</span> </label></div>
</div>
</div>


<div class="form-row"><label><span><b>A2</b>:Assess the
use of IT devices, and to remove the unused ones, increase the use of
switch off and stand-by modes. The use of power management software and
general efficient design.
<br><b>A3</b>: Systematic
approach to energy efficiency improvement, collecting data monitoring,
analysing data and renewable energy 
<br><b>A4</b>: Electricity
use from renewable sources that significantly reduces the carbon
footprint of electricity. On-site electricity generation systems using
solar, wind, geothermal or biomass energy can be set up in order to
supply ICT equipment with low- carbon electricity.</span></label>
<div class="form-radio-buttons">

<div><label> <input type="radio" name="v2" value="high"> <span>All activities</span> </label></div>

<div><label> <input type="radio" name="v2" value="medium"> <span>Only some of them</span> </label></div>

<div><label> <input type="radio" name="v2" value="low" checked="checked"> <span>Nothing</span> </label></div>
</div>
</div>


<div class="form-row"><label><span><b>A6</b>: The network
infrastructure makes use of equipment that adheres to the latest energy
efficiency standards (sleep mode or Energy Efficient Ethernet), an
optimum balance is found between the number of devices required and the
functionalities and quality of service offered. Routing is made energy
aware and offers possibilities to choose the most energy efficient route
instead of the shortest path. </span></label>
<div class="form-radio-buttons">

<div><label> <input type="radio" name="v3" value="high"> <span>True</span> </label></div>

<div><label> <input type="radio" name="v3"value="medium" checked="checked"> <span>Not sure</span> </label></div>

<div><label> <input type="radio" name="v3" value="low"> <span>False</span> </label></div>
</div>
</div>

<div class="form-row"><label><span><b>A7</b>: Adoption of
a documented reference architecture with principles aimed to minimize
environmental impact, used as a guiding principle for designing new
services and is accessible for the entire organization. Training and
communication.Travel reductions with ICT : audio and video conferencing,
broadband enabling telecommuting. </span></label>
<div class="form-radio-buttons">

<div><label> <input type="radio" name="v4" value="high" checked="checked"> <span>Yes</span> </label></div>

<div><label> <input type="radio" name="v4" value="medium"> <span>Sometimes</span> </label></div>

<div><label> <input type="radio" name="v4" value="low"> <span>No</span> </label></div>
</div>
</div>

<div class="form-row"><label><span><b>A8</b>: Extending
ICT equipment life - waste prevention, Establishing collection and
recovery (e.g. reuse, repairing, remanufacturing) channels can reduce
the amount of waste sent to landfill and to ensure that it is recycled
properly. An E-waste policy is in use to properly reuse or recycle ICT
equipment and to minimize environmental and social hazards after
disposal. </span></label>
<div class="form-radio-buttons">

<div><label> <input type="radio" name="v5" value="high" checked="checked"> <span>Strongly agree</span> </label></div>

<div><label> <input type="radio" name="v5" value="medium"> <span>Maybe</span> </label></div>

<div><label> <input type="radio" name="v5" value="low"> <span>Strongly disagree</span> </label></div>
</div>
</div>


<div class="form-row">
<button type="submit">Submit Form</button>
</div>
</form>

</div>

</body>

</html>