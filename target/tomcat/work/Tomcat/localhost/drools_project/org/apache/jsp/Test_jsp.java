/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2016-03-26 12:38:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Test_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("<title>Calculator</title>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/demo.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/form-mini.css\">\n");
      out.write("<link rel=\"icon\" href=\"assets/favicon.ico\" type=\"image/png\"\n");
      out.write("\tsizes=\"16x16\">\n");
      out.write("<link rel=\"stylesheet\" media=\"screen\"\n");
      out.write("\thref=\"assets/handsontable.full.css\">\n");
      out.write("<!--  <SCRIPT\n");
      out.write("\tsrc=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js\"\n");
      out.write("\ttype=\"text/javascript\"></SCRIPT>  -->\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/jquery/jquery-1.10.2.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"assets/handsontable.full.js\"></script>\n");
      out.write("\n");
      out.write("<!-- <script src=\"assets/parser.js\"></script>\n");
      out.write("<script src=\"assets/ruleJS.js\"></script>\n");
      out.write("<script src=\"assets/handsontable.formula.js\"></script> -->\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/jquery/jquery-1.10.2.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/handsontable/handsontable.full.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" media=\"screen\"\n");
      out.write("\thref=\"http://handsontable.github.io/handsontable-ruleJS/lib/handsontable/handsontable.full.css\">\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/lodash/lodash.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/underscore.string/underscore.string.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/moment/moment.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/numeral/numeral.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/numericjs/numeric.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/js-md5/md5.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/jstat/jstat.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/formulajs/formula.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/js/parser.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/js/ruleJS.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://handsontable.github.io/handsontable-ruleJS/lib/handsontable/handsontable.formula.js\"></script>\n");
      out.write("<script type=\"text/javascript\"\n");
      out.write("\tsrc=\"https://www.gstatic.com/charts/loader.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://docs.handsontable.com/0.15.0-beta6/bower_components/raphael/raphael-min.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://docs.handsontable.com/0.15.0-beta6/scripts/graphael-demo/g.raphael-min.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"http://docs.handsontable.com/0.15.0-beta6/scripts/graphael-demo/g.bar-min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("\tvar MyProject = {};\n");
      out.write("\tvar servers_total = '49932';\n");
      out.write("\tvar s = '100';\n");
      out.write("\t$(document)\n");
      out.write("\t\t\t.ready(\n");
      out.write("\n");
      out.write("\t\t\t\t\tfunction() {\n");
      out.write("\n");
      out.write("\t\t\t\t\t\tvar data = [\n");
      out.write("\t\t\t\t\t\t\t\t[ \"A\", \"B\", \"C\", \"D\", \"E\", \"F\", \"G\", \"H\", \"I\" ],\n");
      out.write("\t\t\t\t\t\t\t\t/* [ \"\", \"Server Rooms\", \"Number 1U servers\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Watts per server (c)\", \"Total Server Watts\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Hours/y\", ,\"Overhead (d)\", \"Total kWh/y\" ], */\n");
      out.write("\t\t\t\t\t\t\t\t[ \"2\", \"Central servers\", 10, 350, '=(C2*D2)',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t8760, , , '=+((E2*F2)/1000)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"3\", \"Small scale servers\", 3, 100,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=(C3*D3)', 8760, , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+((E3*F3)/1000)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"4\", \"Storage & other server equipment (d)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t, , , , , 0, '=(I2*H4)+(I3*H4)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"5\", \"Server/equipment sub-total\", , , , , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t, '=+(SUM(I2:I4))' ],\n");
      out.write("\t\t\t\t\t\t\t\t[\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"6\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Server cooling & power supply overhead (e)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t, , , , , '0.5', '=+(SUM(I2:I4)*H6)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"7\", \"SERVER SUB-TOTAL\", , , , , , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=SUM(I4:I6)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"8\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"9\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"10\", \"PCs & Monitors\", \"Number\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Watts (Active, idle) (f)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Watts (Standby) (f)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Hours (Active, idle) (g)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Hours (Standby) (g)\", \"kWh/y per PC\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Total kWh/y\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"11\", \"Medium performance, standard PCs\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t180, 60, 2, 2000, '=(8760-F11)',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+((D11*F11)+(E11*G11))/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(H11*C11)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"12\", \"Low power, green PCs\", 0, 30, 2, 2000,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=(8760-F12)',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+((D12*F12)+(E12*G12))/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(H12*C12)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"13\", \"Portable PCs \", 0, 30, 1, 2080,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=(8760-F13)',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+((D13*F13)+(E13*G13))/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(H13*C13)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"14\", \"Thin clients\", 70, 7, 7, 2080,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=(8760-F14)',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+((D14*F14)+(E14*G14))/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(H14*C14)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"15\", \"Flat (LCD or TFT) Monitors\", 160, 25,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t2, 2080, '=(8760-F15)',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+((D15*F15)+(E15*G15))/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(H15*C15)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"16\", \"CRT Monitors\", 0, 70, 5, 2080,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=(8760-F16)',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+((D16*F16)+(E16*G16))/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(H16*C16)' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"17\", \"POS terminals\", , , , , , , 0 ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"18\", \"Other\", , , , , , , 0 ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"19\", \"Aircon overhead for computer suites\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t, , , , , , 0 ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"20\", \"PCs & MONITORS SUB-TOTAL\", , , , , , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=(SUM(I11:I19))' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"21\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"22\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"23\", \"Networks\", \"Number\", \"Watts/unit (h)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t, \"Hours/y\", , , \"Total kWh/y\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"24\", \"Edge switches\", 10, 50, , 8760, , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C24*D24*F24)/1000\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"25\", \"Aggregation switches\", 7, 88, , 8760,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t, , \"=(C25*D25*F25)/1000\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"26\", \"Core switches\", 0, 600, , 8760, , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C26*D26*F26)/1000\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"27\", \"Wireless access points\", 25, 165, ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t8760, , , \"=(C27*D27*F27)/1000\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"28\", \"Room based hubs\", 25, 4, , 8760, , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C28*D28*F28)/1000\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"29\", \"Unmanaged edge switches\", 10, 23, ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t8760, , , \"=(C29*D29*F29)/1000\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"30\", \"Power over ethernet (POE)\", 0, 170, ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t8760, , , \"=(C30*D30*F30)/1000\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"31\", \"NETWORKS SUB-TOTAL\", , , , , , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=SUM(I24:I30)\" ],\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t[ \"32\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"33\", \"\", , , , , , , '' ],\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t[ \"34\", \"Phones\", \"Number\", \"Watts/unit\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Total Watts\", \"Hours/y\", \"Overhead\", ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Total kWh/y\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"35\", \"PABX distributed (i)\", 250, 1.75,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(C35*D35)', 8760, , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+((E35*F35)/1000)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"36\", \"PABX cooling and power supply (j)\", 0,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t0, , , 0.1, , '383.25' ],\n");
      out.write("\t\t\t\t\t\t\t\t[\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"37\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Locally powered VOIP phones (k,Cisco) \",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t0, 3, \"=+(C37*D37)\", 8760, , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(E37*F37)/1000\" ],\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t[ \"38\", \"PHONES SUB-TOTAL\", , , , , , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=SUM(I35:I37)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"39\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"40\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"41\", \"Imaging\", \"Number\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Watts (active/idle)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Watts(Standby)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Hours (active/idle)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Hours (Standby) \", \"kWh/unit\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Total kWh/y\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"42\", \"High volume copiers (l)\", '0', '1200',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"3\", \"2080\", \"=8760-F42\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D42*F42+E42*G42)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H42*C42)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"43\", \"High volume printers (m)\", '0', '500',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"15\", \"2080\", \"=8760-F43\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D43*F43+E43*G43)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H43*C43)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"44\", \"Regular photocopiers (n)\", '20',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'1000', \"29\", \"1000\", \"3000\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D44*F44+E44*G44)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H44*C44)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"45\", \"High/medium volume copiers/MFDs (o)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'0', '1000', \"29\", \"520\", \"=8760-F45\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D45*F45+E45*G45)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H45*C45)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"46\", \"Low/medium volume copiers/MFDs (o)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'10', '600', \"19\", \"520\", \"=8760-F46\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D46*F46+E46*G46)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H46*C46)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"47\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Networked monochrome laser printers (p)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'10', '440', \"14\", \"520\", \"=8760-F47\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D47*F47+E47*G47)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H47*C47)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"48\", \"Networked colour laser printers (p)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'10', '512', \"30\", \"520\", \"=8760-F48\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D48*F48+E48*G48)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H48*C48)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"49\", \"Scanners (q)\", '0', '5', \"0\", \"1680\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=8760-F49\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D49*F49+E49*G49)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H49*C49)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"50\", \"Monochrome laser printer (s)\", '10',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'350', \"7\", \"87\", \"=8760-F50\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D50*F50+E50*G50)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H50*C50)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"51\", \"Inkjet printer (s)\", '10', '20', \"6\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"87\", \"=8760-F51\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'=+(D51*F151+E51*G51)/1000',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+(H51*C51)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"52\", \"IMAGING SUB-TOTAL\", , , , , , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=+SUM(I42:I51)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"53\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"54\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"55\", \"Audio/Video\", \"Number\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Watts (Active)\", \"Watts (Standby) \",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Hours (Active)\", \"Hours (Standby)\", ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Total kWh/y\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"56\", \"Projectors (u)\", '20', '290', \"8\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'500', \"=(8760-F56)\", ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C56*(D56*F56+E56*G56))/1000\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"57\", \"Audio sets\", 0, \"1\", \"1\", 8000,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(8760-F3)\", ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C57*(D57*F57+E57*G57))/1000\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"58\", \"Plasma screens ( 61' screen) (u1)\", 0,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"700\", \"3\", 8000, \"=(8760-F58)\", ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C58*(D58*F58+E58*G58))/1000\" ],\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t[ \"59\", \"AV SUB-TOTAL\", , , , , , ,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=SUM(I56:I58)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"60\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"61\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"62\", \"Category\", \"Energy Use (kWh/y)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Energy Cost (£/y) \",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"CO2 emissions (kg/y)\", , , , ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"63\", \"Servers\", '=SUM(I4:I6)', \"=(C63*C72)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C63*C73)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"64\", \"PCs\", '=(SUM(I11:I19))', \"=(C64*C72)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C64*C73)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"65\", \"Networks\", \"=SUM(I24:I30)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C65*C72)\", \"=(C65*C73)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"66\", \"Telephony\", \"=SUM(I35:I37)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C66*C72)\", \"=(C66*C73)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"67\", \"Imaging\", \"=+SUM(I42:I51)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C67*C72)\", \"=(C67*C73)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"68\", \"AV\", \"=SUM(I56:I58)\", \"=(C68*C72)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C68*C73)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"69\", \"TOTAL\", \"=SUM(C63:C68)\", \"=(C69*C72)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"=(C69*C73)\" ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"70\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"71\t\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"72\", \"Default electricity price (p/KwH)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'0.12', , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"73\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\"Default CO2 emission (kg CO2/kWh) (w)\",\n");
      out.write("\t\t\t\t\t\t\t\t\t\t'0.537', , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"74\", \"\", , , , , , , '' ],\n");
      out.write("\t\t\t\t\t\t\t\t[ \"75\t\", \"\", , , , , , , '' ]\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t];\n");
      out.write("\t\t\t\t\t\tgoogle.charts.load(\"current\", {\n");
      out.write("\t\t\t\t\t\t\tpackages : [ \"corechart\" ]\n");
      out.write("\t\t\t\t\t\t});\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\t\tvar container = document.getElementById('servers_grid');\n");
      out.write("\t\t\t\t\t\tvar hot = new Handsontable(\n");
      out.write("\t\t\t\t\t\t\t\tcontainer,\n");
      out.write("\t\t\t\t\t\t\t\t{\n");
      out.write("\t\t\t\t\t\t\t\t\tformulas : true,\n");
      out.write("\t\t\t\t\t\t\t\t\tdata : data,\n");
      out.write("\t\t\t\t\t\t\t\t\trenderAllRows : true,\n");
      out.write("\t\t\t\t\t\t\t\t\tobserveChanges : true,\n");
      out.write("\t\t\t\t\t\t\t\t\twordWrap : true,\n");
      out.write("\t\t\t\t\t\t\t\t\tautoWrapRow : true,\n");
      out.write("\t\t\t\t\t\t\t\t\tcolWidths : [ 35, 180, 100, 155, 160, 160,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t160, 160, 100, 115 ],\n");
      out.write("\t\t\t\t\t\t\t\t\tafterChangesObserved : function() {\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvar servers_total = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 62,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvar pcs_total = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 63,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvar networks_total = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 64,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvar telephony_total = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 65,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvar imaging_total = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 66,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvar av_total = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 67,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvar servers_energy = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 62,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 3\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvar pcs_energy = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 63,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 3\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tvar networks_energy = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 64,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 3\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tvar telephony_energy = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 65,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 3\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tvar imaging_energy = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 66,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 3\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tvar av_energy = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow : 67,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcol : 3\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t\t\t\t\t//\ts =  $('#servers_grid').handsontable('getDataAtCell', 62, 2);\n");
      out.write("\t\t\t\t\t\t\t\t\t//\talert(servers_total);\n");
      out.write("\t\t\t\t\t\t\t\t\t\tgoogle.charts\n");
      out.write("\t\t\t\t\t\t\t\t\t\t.setOnLoadCallback(drawChart);\n");
      out.write("\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\tfunction drawChart() {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\talert(servers_total);\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tvar data = google.visualization\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t.arrayToDataTable([\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t[ 'Category', '%' ],\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t[ 'Servers',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tservers_total ],\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t[\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'PCs',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpcs_total ],\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t[\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'AV',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tav_total ],\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t[\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'Phones',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttelephony_total ],\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t[\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'Imaging',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\timaging_total ],\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t[\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'Networking',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tnetworks_total ] ]);\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tvar view = new google.visualization.DataView(\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tdata);\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tview\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t.setColumns([\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t0,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t{\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttype : 'number',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tlabel : data\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getColumnLabel(1),\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcalc : function(\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdt, row) {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar value = dt\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getValue(\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t1);\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tif (value == 0) {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t// change value to a very small, non-zero number\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t// must be much smaller than all normal values in the chart\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvalue = 0.000001;\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treturn {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tv : value,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tf : dt\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getFormattedValue(\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trow,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t1)\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t};\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t} ]);\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tvar options = {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\ttitle : 'Breakdown of ICT Energy Use by Category',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tis3D : true,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tsliceVisibilityThreshold : 0,\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tpieSliceText : 'label',\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tslices : {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t0 : {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t},\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t1 : {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t},\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t2 : {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t},\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t3 : {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t},\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t4 : {\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\toffset : 0.2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t},\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t};\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tvar chart = new google.visualization.PieChart(\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\tdocument\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.getElementById('piechart'));\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tchart.draw(data, options);\n");
      out.write("\t\t\t\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t});\n");
      out.write("\n");
      out.write("\t\t\t\t/* \t\thot.render();\n");
      out.write("\t\t\t\t\t\thot.addHook('beforeChange', function() {\n");
      out.write("\t\t\t\t\t\t\tservers_total = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\trow : 62,\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tcol : 2\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t})).value\n");
      out.write("\t\t\t\t\t\t}); */\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t/* s = $('#servers_grid').handsontable('getDataAtCell',\n");
      out.write("\t\t\t\t\t\t\t\t62, 2); */\n");
      out.write("\t\t\t\t/* \t\tservers_total = hot.plugin.matrix\n");
      out.write("\t\t\t\t\t\t\t\t.getItem(hot.plugin.utils.translateCellCoords({\n");
      out.write("\t\t\t\t\t\t\t\t\trow : 62,\n");
      out.write("\t\t\t\t\t\t\t\t\tcol : 2\n");
      out.write("\t\t\t\t\t\t\t\t})).value */\n");
      out.write("\t\t\t\t\t\t//alert(servers_total);\n");
      out.write("\t\t\t\t\t\t//\t alert(servers_total);\n");
      out.write("\t\t\t\t\t\t/*var cellId=hot.plugin.utils.translateCellCoords({row: 62, col: 2});\n");
      out.write("\n");
      out.write("\t\t\t\t\t\tvar formula=hot.getDataAtCell(62, 2);\n");
      out.write("\t\t\t\t\t\tformula = formula.substr(1).toUpperCase();\n");
      out.write("\t\t\t\t\t\tvar newValue = hot.plugin.parse(formula, {row: 62, col: 2, id: cellId});         \n");
      out.write("\n");
      out.write("\t\t\t\t\t\talert(newValue.result);\n");
      out.write("\t\t\t\t\t\thot.render(); */\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("/* .handsontable table thead th {\n");
      out.write("  white-space: pre-line;\n");
      out.write("  max-width: 100;\n");
      out.write("} */\n");
      out.write(".form-mini {\n");
      out.write("\tpadding: 20px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("<header>\n");
      out.write("\t<h1>ER Assessment Belief rule-based system</h1>\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<ul>\n");
      out.write("\t<LI><A href=\"Hello.html\">Home</A>\n");
      out.write("\t</LI>\n");
      out.write("\t<li><a href=\"index.jsp\">User Input</a>\n");
      out.write("\t</li>\n");
      out.write("\t<li><a href=\"Results.jsp\">Results</a>\n");
      out.write("\t</li>\n");
      out.write("\t<li><a href=\"Recommendations.jsp\">Recommendations</a>\n");
      out.write("\t<li><a href=\"Calculate.jsp\" class=\"active\">Calculator</a></li>\n");
      out.write("</ul>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\t<div class=\"main-content\">\n");
      out.write("\n");
      out.write("\t\t<!-- You only need this form and the form-mini.css -->\n");
      out.write("\n");
      out.write("\t\t<!-- <div class=\"form-mini-container\"> -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<form class=\"form-mini\">\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t<iframe width=\"710\" height=\"750\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" src=\"http://calculator.carbonfootprint.com/calculator.aspx?c=flight\">\n");
      out.write("            <p>Your browser doesn't support IFRAMES - please use the <a href=\"http://calculator.carbonfootprint.com/calculator.aspx?c=flight\" target=\"_blank\">basic calculator</a> instead.</p>\n");
      out.write("            </iframe>\n");
      out.write("            \n");
      out.write("\n");
      out.write("\t\t\t\t<!-- <div id=\"servers_grid\"></div>\n");
      out.write("\t\t\t\t<br> <br> <br>\n");
      out.write("\n");
      out.write("\t\t\t\t<div id=\"piechart\" style=\"width: 500px; height: 400px;\"></div> -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</form>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<!-- </div> -->\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("<!-- http://codepen.io/ashblue/pen/mCtuA -->");
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
