/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2016-03-11 09:01:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Readme_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<title>Readme</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/demo.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/form-mini.css\">\n");
      out.write("<link rel=\"icon\" href=\"assets/favicon.ico\" type=\"image/png\" sizes=\"16x16\">\n");
      out.write("<style>\n");
      out.write("p {\n");
      out.write("\ttext-indent: 50px;\n");
      out.write("\ttext-align: left;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<header>\n");
      out.write("\t<h1>ER Assessment Belief rule-based system</h1>\n");
      out.write("</header>\n");
      out.write("<ul>\n");
      out.write("\t<LI><A href=\"index.html\">Home</A></LI>\n");
      out.write("\t<li><a href=\"Assessment.jsp\">User Input</a></li>\n");
      out.write("\t<li><a href=\"Results.jsp\">Results</a></li>\n");
      out.write("\t<li><a href=\"Recommendations.jsp\">Recommendations</a>\n");
      out.write("\t</li>\n");
      out.write("\t<li><a href=\"Calculate.jsp\">Calculate</a>\n");
      out.write("\t</li>\n");
      out.write("</ul>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"main-content\">\n");
      out.write("\t\t<!-- You only need this form and the form-mini.css -->\n");
      out.write("\t\t<div class=\"form-mini-container\">\n");
      out.write("\t\t\t<form class=\"form-mini\" style=\"text-align: left;\">\n");
      out.write("\t\t\t\t<b>Acknowledgments</b><br>\n");
      out.write("\t\t\t\t\t<p style = \"text-indent: 50px;\">This part of a project was inspired by\n");
      out.write("\t\t\t\t\t<b><a href=\"http://www.susteit.org.uk/\">SusteIT</a> </b> (Sustainable IT in Tertiary Education)\n");
      out.write("\t\t\t\t\tinitiative, which reviews the environmental and social impacts of IT in further and higher\n");
      out.write("\t\t\t\t\teducation, and identifies and disseminates examples of good practice within it (Project\n");
      out.write("\t\t\t\t\tDirector, Peter James).</p>\n");
      out.write("\t\t\t\t\t<b>Instructions</b><br>\n");
      out.write("\t\t\t\t<p>Below are the different categories of ICT equipment and the assumptions used to obtain\n");
      out.write("\t\t\t\t\tthe default data. Note that all usage figures assume that equipment is NOT switched off at the\n");
      out.write("\t\t\t\t\tmains supply at any point, i.e. standby mode is the lowest power mode in this tool.\n");
      out.write("\t\t\t\t\tFor some equipment types it may not be practical or cost effective to measure actual energy consumption,\n");
      out.write("in which case a theoretical measurement can be used. Ensure that the source of the data is documented\n");
      out.write("for future reference, for example supplier or equipment specification information. Use of theoretical data\n");
      out.write("should be kept to a minimum to improve overall accuracy.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t<ol style = \"text-indent: 20px;\">\n");
      out.write("\t\t\t\t\t<li>Server Rooms - Enter data on central and departmental servers plus storage and\n");
      out.write("\t\t\t\t\t\tcooling/power supply overhead</li>\n");
      out.write("\t\t\t\t\t<li>PCs and Monitors - Enter data on PCs, laptops, thin clients and monitors</li>\n");
      out.write("\t\t\t\t\t<li>Networks - Enter data on hubs, switches, routers and Power Over Ethernet</li>\n");
      out.write("\t\t\t\t\t<li>Phones - Enter data on PABX and VOIP phones power supply/cooling overhead for PABX</li>\n");
      out.write("\t\t\t\t\t<li>Imaging - Enter data on printers, copiers, scanners, faxes</li>\n");
      out.write("\t\t\t\t\t<li>AV - Enter data on projectors,TVs and plasma screens</li>\n");
      out.write("\t\t\t\t\t<li>Total and Analysis - Displays results for energy use and carbon dioxide emissions\n");
      out.write("\t\t\t\t\t\tbroken down by category of device</li>\n");
      out.write("\t\t\t\t\t<li>Energy Use - Provides graphic displays of energy use broken down by category of device</li>\n");
      out.write("\t\t\t\t\t<li>Energy Cost - Provides graphic displays of energy cost broken down by category of\n");
      out.write("\t\t\t\t\t\tdevice</li>\n");
      out.write("\t\t\t\t\t<li>CO2 Emissions - Provides graphic displays of carbon dioxide emissions broken down by\n");
      out.write("\t\t\t\t\t\tcategory of device</li>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t<b>Server rooms</b>\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t\t<ol>\n");
      out.write("\t\t\t\t\t<li>(c) Watts per unit: 300W, based on <a\n");
      out.write("\t\t\t\t\t\thref=\"http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.87.5562&rep=rep1&type=pdf\">Jonathan\n");
      out.write("\t\t\t\t\t\t\tKoomey's landmark 2007</a> of global computing who came up with three averages, based on server\n");
      out.write("\t\t\t\t\t\tclass - volume: 183W, mid-range: 423W high-end: 4,874W. Also <a\n");
      out.write("\t\t\t\t\t\thref=http://www.ibmsystemsmag.com/mainframe/Business-Strategy/ROI/energy_estimating>IBM\n");
      out.write("\t\t\t\t\t\t\tSystems Magazine</a> uses 425W for Power Usage at Average Load, getting <a\n");
      out.write("\t\t\t\t\t\thref=\"http://www.vertatique.com/average-power-use-server\">350</a> Watts for an average volume\n");
      out.write("\t\t\t\t\t\tserver and 100 for small scale. In this assessment total measured figure for all server\n");
      out.write("\t\t\t\t\t\tequipment is available only with no breakdown based on numbers of servers or equipment.</li>\n");
      out.write("\t\t\t\t\t<li>(d) Other server equipment. A figure of 15% of total server power was used based on\n");
      out.write("\t\t\t\t\t\tEmerson (2007) (see References below). In this assessment total a total measured figure for\n");
      out.write("\t\t\t\t\t\tall server equipment is available only with no breakdown based on numbers of servers or\n");
      out.write("\t\t\t\t\t\tequipment.</li>\n");
      out.write("\t\t\t\t\t<li>(e) Aircon overhead: +50%. Based on general experience at universities (SusteIT) of an\n");
      out.write("\t\t\t\t\t\tair conditioning overhead of 40-45% and power supply losses associated with the UPS of 5-10%.\n");
      out.write("\t\t\t\t\t\tA median figure of 50% was adopted to account for both. For well managed server rooms a lower\n");
      out.write("\t\t\t\t\t\toverhead of 40-45% may be used.</li>\n");
      out.write("\t\t\t\t\t<li>(e1)Based on the range in (e) above a median value of 42.5% was used for the cooling\n");
      out.write("\t\t\t\t\t\toverhead.\n");
      out.write("\t\t\t\t\t<li>(e2) Based on the range in (e) above a median value of 7.5% was used for the power\n");
      out.write("\t\t\t\t\t\tsupply overhead.</li>\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t<b>PCs and Monitors</b>\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t\t<ol>\n");
      out.write("\t\t\t\t\t<li>(f) Watts per unit for active/idle power consumption were based on vendor provided\n");
      out.write("\t\t\t\t\t\tmeasurements on individual computers, rounded up. The idle power rating was adopted as most\n");
      out.write("\t\t\t\t\t\tPCs spend most of their time in this mode. Typically idle mode for a desktop can range between\n");
      out.write("\t\t\t\t\t\t40-90W. Standby mode for a desktop is typically between 1-3 W. Laptop power is typically\n");
      out.write("\t\t\t\t\t\tlower. Thin client power was based on measurements of SunRay units without a monitor which use\n");
      out.write("\t\t\t\t\t\taround 7W on a 24*7 basis.</li> (g) Hours per year in use for active/idle and standby were based on\n");
      out.write("\t\t\t\t\tthe following:\n");
      out.write("\t\t\t\t\t<li>Managed computers (i.e. PCs are powered down automatically by the network after a\n");
      out.write("\t\t\t\t\t\tcertain time in idle mode and hence spend more time in standby) are in active/idle mode for 40\n");
      out.write("\t\t\t\t\t\thours per week, 52 weeks a year (i.e.2,080 hours/year), and in standby for the remaining hours\n");
      out.write("\t\t\t\t\t\tof the year.</li>\n");
      out.write("\t\t\t\t\t<li>Unmanaged computers in computer suites and departments are in active/idle mode for 70\n");
      out.write("\t\t\t\t\t\thours per week, 52 weeks per year (i.e. 3,640 hours/year) (and in standby for the remaining\n");
      out.write("\t\t\t\t\t\ttime).</li>\n");
      out.write("\t\t\t\t\t<li>Laptops and monitors are active/idle for 40 hours per week, 52 weeks per year (i.e.\n");
      out.write("\t\t\t\t\t\t2,080 hours/year) as the default on most operating systems tends to power them down to standby\n");
      out.write("\t\t\t\t\t\tafter 20 minutes.</li>\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t<b>Networking</b>\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t\t<ol>\n");
      out.write("\t\t\t\t\t<li>(h) All networking equipment assumed to be on throughout the year. Power usage for\n");
      out.write("\t\t\t\t\t\tnetwork equipment was based on measurements at the University of Sheffield, rounded up.</li>\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t<b>Phones</b>\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t\t<ol>\n");
      out.write("\t\t\t\t\t<li>(i) Watts per PABX distributed phone were based on measurements at University of\n");
      out.write("\t\t\t\t\t\tSheffield of 1.75W, rounded up.</li>\n");
      out.write("\t\t\t\t\t<li>(j) An overhead of 10% was made for the extra electricity used by the UPS units based\n");
      out.write("\t\t\t\t\t\ton estimates at the University of Sheffield.</li>\n");
      out.write("\t\t\t\t\t<li>(k) Locally powered VOIP phones were assumed to use 8W per phone based on a CISCO IP\n");
      out.write("\t\t\t\t\t\tphone (5 W per hone and 3W per Ethernet port) (Cartledge, 2007).</li>\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t<b>Imaging Devices</b>\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t\t<ol>\n");
      out.write("\t\t\t\t\t<li>(l) High volume copiers power use in active and standby mode were based on University\n");
      out.write("\t\t\t\t\t\tof Sheffield figures, rounded up, for a student photocopier. UK usage figures (MTP, 2007a)\n");
      out.write("\t\t\t\t\t\tsuggest that a non-domestic copier is active for 27 hours a week and idle for 13 hours a week,\n");
      out.write("\t\t\t\t\t\ttherefore it was assumed that central photocopiers are active/idle for 40 hours a week, 52\n");
      out.write("\t\t\t\t\t\tweeks a year (i.e. 2,080 hours/year). Assumed to be on standby for the remaining time. While\n");
      out.write("\t\t\t\t\t\tthe worked example for University of Sheffield appears to show no high volume copiers, their\n");
      out.write("\t\t\t\t\t\tenergy use is taken account of by the administrative software used to derive the total energy\n");
      out.write("\t\t\t\t\t\tuse of imaging equipment.</li>\n");
      out.write("\t\t\t\t\t<li>(m) High volume printers power use in active and standby mode was based on MTP (2007)\n");
      out.write("\t\t\t\t\t\t(see references) UK average stock figures for a 2007 non-domestic laser printer, rounded up.\n");
      out.write("\t\t\t\t\t\tOn-active and on-ready power was weighted using a ratio of 1:3 to give a weighted power figure\n");
      out.write("\t\t\t\t\t\tin active/idle mode of 475 W. Usage was based on an assumption of active/idle mode for 40\n");
      out.write("\t\t\t\t\t\thours per week, 52 weeks a year. The remainder is assumed to be standby. While the worked\n");
      out.write("\t\t\t\t\t\texample for University of Sheffield appears to show no high volume printers, their energy use\n");
      out.write("\t\t\t\t\t\tis taken account of by the administrative software used to derive the total energy use of\n");
      out.write("\t\t\t\t\t\timaging equipment.</li>\n");
      out.write("\t\t\t\t\t<li>(n) Rregular photocopiers power rating was based on University of Sheffield figures\n");
      out.write("\t\t\t\t\t\tfor Sharp copiers, rounded up and estimated usage figures.</li>\n");
      out.write("\t\t\t\t\t<li>(o) High/medium and low/medium volume copiers power rating was based on University of\n");
      out.write("\t\t\t\t\t\tSheffield figures for Sharp departmental copiers, rounded up. The active/idle mode power\n");
      out.write("\t\t\t\t\t\tconsumption was estimated from a fluctuating measured value as each sheet of paper is printed,\n");
      out.write("\t\t\t\t\t\twhile the standby figure was measured. The devices were found to return to standby anywhere\n");
      out.write("\t\t\t\t\t\tbetween 30 seconds or 20 minutes after last use. It was assumed that devices would be copying\n");
      out.write("\t\t\t\t\t\tfor two hours a day, 5 days a week or 520 hours per year.</li>\n");
      out.write("\t\t\t\t\t<li>(p) Departmental shared laser printers (monochrome and colour) power rating was based\n");
      out.write("\t\t\t\t\t\ton University of Sheffield measured figures for active and standby mode, rounded up. It was\n");
      out.write("\t\t\t\t\t\tassumed devices would be printing for two hours a day, 5 days a week or 520 hours per year,\n");
      out.write("\t\t\t\t\t\tbased on experience at the University of Sheffield.</li>\n");
      out.write("\t\t\t\t\t<li>(q) Scanners power rating based on maximum sleep power rating for EU Energy Star\n");
      out.write("\t\t\t\t\t\tscanners of 5W (EU Energy Star, 2006). Sleep mode is assumed to be similar to idle mode.\n");
      out.write("\t\t\t\t\t\tStandby power was assumed to be 2W. Usage was based on active use for 1 hours a day, 5 days a\n");
      out.write("\t\t\t\t\t\tweek, 52 weeks a year, idle for 7 hours a day, 5 days a week, 52 weeks a year. Assumed to be\n");
      out.write("\t\t\t\t\t\ton standby for the remaining time. No figures available from the University of Sheffield.</li>\n");
      out.write("\t\t\t\t\t<li>(s) Monochrome laser printer and inkjet printer power rating based on University of\n");
      out.write("\t\t\t\t\t\tSheffield measured figures and estimated usage of 20 minutes active use per day, 5 days per\n");
      out.write("\t\t\t\t\t\tweek, 52 weeks per year (i.e. 87 hours per year).</li>\n");
      out.write("\t\t\t\t\t<li>(t) Personal MFD power rating based on MTP (2007) (see references) UK 2007 stock\n");
      out.write("\t\t\t\t\t\taverage figures for a domestic laser MFD. An average of 'on-active' and 'on-ready' power was\n");
      out.write("\t\t\t\t\t\tused for active mode, and 'sleep/off' for standby mode. Usage was assumed the same as (s)\n");
      out.write("\t\t\t\t\t\tabove.</li>\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t<b>Audio-Visual Devices</b>\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t\t<ol>\n");
      out.write("\t\t\t\t\t<li>(u) Projectors power use based on manufacturer's stated data for active use and\n");
      out.write("\t\t\t\t\t\tmeasured data for standby power for devices at the University of Sheffield, rounded up.</li>\n");
      out.write("\t\t\t\t\t<li>(u1) Plasma screens based on power consumption for typical 61\" plasma screen. However\n");
      out.write("\t\t\t\t\t\tpower rating would need to be increased or decreased for larger and smaller screens\n");
      out.write("\t\t\t\t\t\trespectively. E.g 84\" screen typically 1100W,42\" screen typically 275W. Assumed that these are\n");
      out.write("\t\t\t\t\t\trun 24/7 but adjustment would need to be made for screens powered down with timer switches to\n");
      out.write("\t\t\t\t\t\tstandby.</li>\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t<b>Energy Costs</b>\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t\t<ol>\n");
      out.write("\t\t\t\t\t<li>(v) Energy costs are based on a nominal electricity price of 12 pounds/kWh (incl. VAT)\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t<b>Carbon Dioxide Emissions</b>\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t\t<ol>\n");
      out.write("\t\t\t\t\t<li>(w) Carbon dioxide (CO2) emissions are based EIA 2011-2015 cycle conversion factor of\n");
      out.write("\t\t\t\t\t\t0.53702 kg/kWh, further information can be found <a href = \"http://www.greenrhinoenergy.com/climatechange/carbon_management/emissions_map.php\" >\n");
      out.write("\t\t\t\t\t\there</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
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
