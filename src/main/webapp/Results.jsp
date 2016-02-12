<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page language="java" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Results</title>
<link rel="stylesheet" href="assets/form-basic.css">
<link rel="stylesheet" href="assets/demo.css">
</head>
<header>
<h1>ER Assessment Belief rule-based system</h1>
</header>

<ul>
	<li><a href="index.jsp" >User Input</a></li>
	<li><a href="Results.jsp" class="active">Results</a></li>
	<li><a href="Recommendations.jsp">Recommendations</a></li>
</ul>
<div class="main-content"><!-- You only need this form and the form-labels-on-top.css -->

<form class="form-basic" action="http://localhost:8899/drools_project/Recommendations.jsp">

<div class="form-title-row">
<h1>Results of your ER level</h1>
<body>

</div>

<div class="form-row"><label><span>
Total ER index is 
<%
Object obj = session.getAttribute("object");
out.println(obj);
%> %</span></label>
</div>
<div class="form-row"><label><span>
ER index for Category 1 is 
<%
Object obj1 = session.getAttribute("ob");
out.println(obj1);
%> %</span></label>
</div>
<div class="form-row"><label><span>
ER index for Category 2 is 
<%
Object obj2 = session.getAttribute("ob2");
out.println(obj2);
%> %</span></label>
</div>
<div class="form-row"><label><span>
ER index for Category 3 is 
<%
Object obj3 = session.getAttribute("ob3");
out.println(obj3);
%> %</span></label>
</div>
<div class="form-row"><label><span>
ER index for Category 4 is 
<%
Object obj4 = session.getAttribute("ob4");
out.println(obj4);
%> %</span></label>
</div>
<div class="form-row"><label><span>
ER index for Category 5 is 
<%
Object obj5 = session.getAttribute("ob5");
out.println(obj5);
%> %</span></label>
</div>

<div class="form-row">
<button type="submit">See Recommendations</button>
</div>



</form>

</div>

</body>

</html>