/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2016-03-19 17:46:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class Results_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<title>Results</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/demo.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/form-basic.css\">\n");
      out.write("<link rel=\"icon\" href=\"assets/favicon.ico\" type=\"image/png\" sizes=\"16x16\">\n");
      out.write("<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t$(document).ready(function() {\n");
      out.write("\t\t$(\"#loading\").hide();\n");
      out.write("\t});\n");
      out.write("</script>\n");

	Double doubleVar1 = (Double) session.getAttribute("ob");

      out.write('\n');

	Double doubleVar2 = (Double) session.getAttribute("ob2");

      out.write('\n');

	Double doubleVar3 = (Double) session.getAttribute("ob3");

      out.write('\n');

	Double doubleVar4 = (Double) session.getAttribute("ob4");

      out.write('\n');

	Double doubleVar5 = (Double) session.getAttribute("ob5");

      out.write('\n');

	Double doubleVar = (Double) session.getAttribute("object");

      out.write('\n');

	ArrayList<String> flag_activities = (ArrayList<String>) session.getAttribute("flag_activities");

      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("\tgoogle.charts.load(\"current\", {\n");
      out.write("\t\tpackages : [ \"corechart\" ]\n");
      out.write("\t});\n");
      out.write("\tgoogle.charts.setOnLoadCallback(drawChart);\n");
      out.write("\tfunction drawChart() {\n");
      out.write("\t\tvar var1 =\n");
      out.print(doubleVar1);
      out.write("\n");
      out.write("\t;\n");
      out.write("\t\tvar var2 =\n");
      out.print(doubleVar2);
      out.write("\n");
      out.write("\t;\n");
      out.write("\t\tvar var3 =\n");
      out.print(doubleVar3);
      out.write("\n");
      out.write("\t;\n");
      out.write("\t\tvar var4 =\n");
      out.print(doubleVar4);
      out.write("\n");
      out.write("\t;\n");
      out.write("\t\tvar var5 =\n");
      out.print(doubleVar5);
      out.write("\n");
      out.write("\t;\n");
      out.write("\n");
      out.write("\t\tvar data = google.visualization.arrayToDataTable([ [ 'Category', '%' ],\n");
      out.write("\t\t\t\t[ 'Category 1', var1 ], [ 'Category 2', var2 ], [ 'Category 3', var3 ], [ 'Category 4', var4 ],\n");
      out.write("\t\t\t\t[ 'Category 5', var5 ] ]);\n");
      out.write("\t\tvar view = new google.visualization.DataView(data);\n");
      out.write("\t\tview.setColumns([ 0, {\n");
      out.write("\t\t\ttype : 'number',\n");
      out.write("\t\t\tlabel : data.getColumnLabel(1),\n");
      out.write("\t\t\tcalc : function(dt, row) {\n");
      out.write("\t\t\t\tvar value = dt.getValue(row, 1);\n");
      out.write("\t\t\t\tif (value == 0) {\n");
      out.write("\t\t\t\t\t// change value to a very small, non-zero number\n");
      out.write("\t\t\t\t\t// must be much smaller than all normal values in the chart\n");
      out.write("\t\t\t\t\tvalue = 0.000001;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\treturn {\n");
      out.write("\t\t\t\t\tv : value,\n");
      out.write("\t\t\t\t\tf : dt.getFormattedValue(row, 1)\n");
      out.write("\t\t\t\t};\n");
      out.write("\t\t\t}\n");
      out.write("\t\t} ]);\n");
      out.write("\n");
      out.write("\t\tvar options = {\n");
      out.write("\t\t\ttitle : 'ER index components',\n");
      out.write("\t\t\tis3D : true,\n");
      out.write("\t\t\tsliceVisibilityThreshold : 0,\n");
      out.write("\t\t\t'legend':'right',\n");
      out.write("\t\t\t\n");
      out.write("\n");
      out.write("\t\t\tpieSliceText : 'label',\n");
      out.write("\t\t\tslices : {\n");
      out.write("\t\t\t\t0 : {\n");
      out.write("\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t1 : {\n");
      out.write("\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t2 : {\n");
      out.write("\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t3 : {\n");
      out.write("\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t4 : {\n");
      out.write("\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t},\n");
      out.write("\t\t};\n");
      out.write("\n");
      out.write("\t\tvar chart = new google.visualization.PieChart(document\n");
      out.write("\t\t\t\t.getElementById('piechart'));\n");
      out.write("\t\tchart.draw(data, options);\n");
      out.write("\t}\n");
      out.write("</script>\n");
      out.write("<style>\n");
      out.write(".form-basic {\n");
      out.write("\tmax-width: 1000px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-basic .form-row>label span {\n");
      out.write("\twidth: 380px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a:link {\n");
      out.write("\ttext-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-row {\n");
      out.write("\tposition: relative;\n");
      out.write("\tdisplay: inline-block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-basic .form-row>label span:hover {\n");
      out.write("\tcolor: #8000ff;\n");
      out.write("\t/* font-weight: bold; */\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-row .tooltiptext {\n");
      out.write("\tvisibility: hidden;\n");
      out.write("\twidth: 150px;\n");
      out.write("\tbackground-color: #bf80ff;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\ttext-align: center;\n");
      out.write("\tborder-radius: 6px;\n");
      out.write("\tpadding: 5px 0;\n");
      out.write("\tposition: absolute;\n");
      out.write("\tz-index: 1;\n");
      out.write("\tbottom: 100%;\n");
      out.write("\tleft: 50%;\n");
      out.write("\tmargin-left: -60px;\n");
      out.write("\t/* Fade in tooltip - takes 1 second to go from 0% to 100% opac: */\n");
      out.write("\topacity: 0;\n");
      out.write("\ttransition: opacity 1s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-row:hover .tooltiptext {\n");
      out.write("\tvisibility: visible;\n");
      out.write("\topacity: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".alert {\n");
      out.write("\tpadding: 20px;\n");
      out.write("\tbackground-color: #f44336;\n");
      out.write("\tcolor: white;\n");
      out.write("\topacity: 1;\n");
      out.write("\ttransition: opacity 0.6s;\n");
      out.write("\tmargin-bottom: 15px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".alert.success {\n");
      out.write("\tbackground-color: #4CAF50;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".alert.info {\n");
      out.write("\tbackground-color: #2196F3;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".alert.warning {\n");
      out.write("\tbackground-color: #ff9800;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".closebtn {\n");
      out.write("\tmargin-left: 15px;\n");
      out.write("\tcolor: white;\n");
      out.write("\tfont-weight: bold;\n");
      out.write("\tfloat: right;\n");
      out.write("\tfont-size: 22px;\n");
      out.write("\tline-height: 20px;\n");
      out.write("\tcursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".closebtn:hover {\n");
      out.write("\tcolor: black;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<header>\n");
      out.write("\t<h1>ER ASSESSMENT BELIEF RULE-BASED SYSTEM</h1>\n");
      out.write("</header>\n");
      out.write("<ul>\n");
      out.write("\t<LI><A href=\"index.html\">Home</A></LI>\n");
      out.write("\t<li><a href=\"Assessment.jsp\">Form</a>\n");
      out.write("\t</li>\n");
      out.write("\t<li><a href=\"Results.jsp\" class=\"active\">Results</a>\n");
      out.write("\t</li>\n");
      out.write("\t<li><a href=\"Recommendations.jsp\">Recommendations</a>\n");
      out.write("\t</li>\n");
      out.write("\t<li><a href=\"Calculate.jsp\">Calculate</a>\n");
      out.write("\t</li>\n");
      out.write("</ul>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"main-content\">\n");
      out.write("\t\t<!-- You only need this form and the form-labels-on-top.css -->\n");
      out.write("\t\t<form class=\"form-basic\" action=\"Recommendations.jsp\">\n");
      out.write("\t\t\t<div class=\"form-title-row\">\n");
      out.write("\t\t\t\t<h1>Results of your ER level</h1>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- alert(flag_activities)\n");
      out.write("\t\t\tconsole.log(flag_activities) -->\n");
      out.write("\t\t\t");

				if (doubleVar >= 80.0) {
			
      out.write("\n");
      out.write("\t\t\t<div class=\"alert success\">\n");
      out.write("\t\t\t\t<span class=\"closebtn\">×</span> <strong>Level: Leading.</strong> Your ER index is great.Keep\n");
      out.write("\t\t\t\tdoing.\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t");

				} else if (doubleVar >= 60.0 && doubleVar < 80.0) {
			
      out.write("\n");
      out.write("\t\t\t<div class=\"alert info\">\n");
      out.write("\t\t\t\t<span class=\"closebtn\">×</span> <strong>Level: Succeeding.</strong> You are doing almost\n");
      out.write("\t\t\t\tperfect.\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t");

				} else if (doubleVar >= 40.0 && doubleVar < 60.0) {
			
      out.write("\n");
      out.write("\t\t\t<div class=\"alert warning\">\n");
      out.write("\t\t\t\t<span class=\"closebtn\">×</span> <strong>Level: Improving.</strong> You might want to see\n");
      out.write("\t\t\t\trecommended activities to perform better.\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t");

				} else {
			
      out.write("\n");
      out.write("\t\t\t<div class=\"alert\">\n");
      out.write("\t\t\t\t<span class=\"closebtn\">×</span> <strong>Level: Beginning.</strong> You should start from\n");
      out.write("\t\t\t\trecommended activities list.\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t");

				}
			
      out.write("\n");
      out.write("\t\t\t<script>\n");
      out.write("\t\t\t\tvar close = document.getElementsByClassName(\"closebtn\");\n");
      out.write("\t\t\t\tvar i;\n");
      out.write("\n");
      out.write("\t\t\t\tfor (i = 0; i < close.length; i++) {\n");
      out.write("\t\t\t\t\tclose[i].onclick = function() {\n");
      out.write("\t\t\t\t\t\tvar div = this.parentElement;\n");
      out.write("\t\t\t\t\t\tdiv.style.opacity = \"0\";\n");
      out.write("\t\t\t\t\t\tsetTimeout(function() {\n");
      out.write("\t\t\t\t\t\t\tdiv.style.display = \"none\";\n");
      out.write("\t\t\t\t\t\t}, 600);\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t</script>\n");
      out.write("\t\t\t<table>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t<div class=\"form-row\">\n");
      out.write("\t\t\t\t\t\t\t<label><span> Total estimated ER index is ");

								Object obj = session.getAttribute("object");
								out.println(obj);
							
      out.write(" %</span> </label> <label><span> ER indexes for: <br>\n");
      out.write("\t\t\t\t\t\t\t</label></span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"form-row\" onClick=\"window.location.href='Recommendations.jsp#V1';\">\n");
      out.write("\t\t\t\t\t\t\t<label><span>1. Equipment procurement compliance with Green ICT guidelines is\n");
      out.write("\t\t\t\t\t\t\t\t\tabout ");

								Object obj1 = session.getAttribute("ob");
								out.println(obj1);
								Double dD = (Double) session.getAttribute("ob");
							
      out.write(" %</span> </label><span class=\"tooltiptext\">Click to see recommendations</span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"form-row\" onClick=\"window.location.href='Recommendations.jsp#V2';\">\n");
      out.write("\t\t\t\t\t\t\t<label><span>2. Energy performance improvement and monitoring is about ");

								Object obj2 = session.getAttribute("ob2");
								out.println(obj2);
							
      out.write(" %</span> </label><span class=\"tooltiptext\">Click to see recommendations</span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"form-row\" onClick=\"window.location.href='Recommendations.jsp#V3';\">\n");
      out.write("\t\t\t\t\t\t\t<label><span>3. Energy aware networks engineering adherence is about ");

								Object obj3 = session.getAttribute("ob3");
								out.println(obj3);
							
      out.write(" %</span> </label><span class=\"tooltiptext\">Click to see recommendations</span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"form-row\" onClick=\"window.location.href='Recommendations.jsp#V4';\">\n");
      out.write("\t\t\t\t\t\t\t<label><span>4. Social commitment is about ");

								Object obj4 = session.getAttribute("ob4");
								out.println(obj4);
							
      out.write(" %</span> </label><span class=\"tooltiptext\">Click to see recommendations</span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"form-row\" onClick=\"window.location.href='Recommendations.jsp#V5';\">\n");
      out.write("\t\t\t\t\t\t\t<label><span>5. Waste management is about ");

								Object obj5 = session.getAttribute("ob5");
								out.println(obj5);
							
      out.write(" %</span> </label><span class=\"tooltiptext\">Click to see recommendations</span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"form-row\">\n");
      out.write("\t\t\t\t\t\t\t<label><span><B> Please hover over to see more</B> </span> </label>\n");
      out.write("\t\t\t\t\t\t</div></td>\n");
      out.write("\t\t\t\t\t<td style=\"width: 50%\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-row\">\n");
      out.write("\t\t\t\t\t\t\t<div id=\"piechart\" style=\"width: 470px; height: 400px;\"></div>\n");
      out.write("\t\t\t\t\t\t</div></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t</form>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
