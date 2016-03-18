
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Readme</title>
<link rel="stylesheet" href="assets/demo.css">
<link rel="stylesheet" href="assets/form-mini.css">
<link rel="icon" href="assets/favicon.ico" type="image/png" sizes="16x16">
<style>
p {
	text-indent: 50px;
	text-align: left;
}
</style>
</head>
<header>
	<h1>ER Assessment Belief rule-based system</h1>
</header>
<ul>
	<LI><A href="index.html">Home</A></LI>
	<li><a href="Assessment.jsp">User Input</a></li>
	<li><a href="Results.jsp">Results</a></li>
	<li><a href="Recommendations.jsp">Recommendations</a>
	</li>
	<li><a href="Calculate.jsp">Calculate</a>
	</li>
</ul>
<body>
	<div class="main-content">
		<!-- You only need this form and the form-mini.css -->
		<div class="form-mini-container">
			<form class="form-mini" style="text-align: left;">
				<b>Acknowledgments</b><br>
					<p style = "text-indent: 50px;">This part of a project was inspired by
					<b><a href="http://www.susteit.org.uk/">SusteIT</a> </b> (Sustainable IT in Tertiary Education)
					initiative, which reviews the environmental and social impacts of IT in further and higher
					education, and identifies and disseminates examples of good practice within it (Project
					Director, Peter James).</p>
					<b>Instructions</b><br>
				<p>Below are the different categories of ICT equipment and the assumptions used to obtain
					the default data. Note that all usage figures assume that equipment is NOT switched off at the
					mains supply at any point, i.e. standby mode is the lowest power mode in this tool.
					For some equipment types it may not be practical or cost effective to measure actual energy consumption,
in which case a theoretical measurement can be used. Ensure that the source of the data is documented
for future reference, for example supplier or equipment specification information. Use of theoretical data
should be kept to a minimum to improve overall accuracy.</p>
									<ol style = "text-indent: 20px;">
					<li>Server Rooms - Enter data on central and departmental servers plus storage and
						cooling/power supply overhead</li>
					<li>PCs and Monitors - Enter data on PCs, laptops, thin clients and monitors</li>
					<li>Networks - Enter data on hubs, switches, routers and Power Over Ethernet</li>
					<li>Phones - Enter data on PABX and VOIP phones power supply/cooling overhead for PABX</li>
					<li>Imaging - Enter data on printers, copiers, scanners, faxes</li>
					<li>AV - Enter data on projectors,TVs and plasma screens</li>
					<li>Total and Analysis - Displays results for energy use and carbon dioxide emissions
						broken down by category of device</li>
					<li>Energy Use - Provides graphic displays of energy use broken down by category of device</li>
					<li>Energy Cost - Provides graphic displays of energy cost broken down by category of
						device</li>
					<li>CO2 Emissions - Provides graphic displays of carbon dioxide emissions broken down by
						category of device</li>
				
				</ol>
				<p>
					<b>Server rooms</b>
				</p>
				<ol>
					<li>(c) Watts per unit: 300W, based on <a
						href="http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.87.5562&rep=rep1&type=pdf">Jonathan
							Koomey's landmark 2007</a> of global computing who came up with three averages, based on server
						class - volume: 183W, mid-range: 423W high-end: 4,874W. Also <a
						href=http://www.ibmsystemsmag.com/mainframe/Business-Strategy/ROI/energy_estimating>IBM
							Systems Magazine</a> uses 425W for Power Usage at Average Load, getting <a
						href="http://www.vertatique.com/average-power-use-server">350</a> Watts for an average volume
						server and 100 for small scale. In this assessment total measured figure for all server
						equipment is available only with no breakdown based on numbers of servers or equipment.</li>
					<li>(d) Other server equipment. A figure of 15% of total server power was used based on
						Emerson (2007) (see References below). In this assessment total a total measured figure for
						all server equipment is available only with no breakdown based on numbers of servers or
						equipment.</li>
					<li>(e) Aircon overhead: +50%. Based on general experience at universities (SusteIT) of an
						air conditioning overhead of 40-45% and power supply losses associated with the UPS of 5-10%.
						A median figure of 50% was adopted to account for both. For well managed server rooms a lower
						overhead of 40-45% may be used.</li>
					<li>(e1)Based on the range in (e) above a median value of 42.5% was used for the cooling
						overhead.
					<li>(e2) Based on the range in (e) above a median value of 7.5% was used for the power
						supply overhead.</li>
				</ol>
				<p>
					<b>PCs and Monitors</b>
				</p>
				<ol>
					<li>(f) Watts per unit for active/idle power consumption were based on vendor provided
						measurements on individual computers, rounded up. The idle power rating was adopted as most
						PCs spend most of their time in this mode. Typically idle mode for a desktop can range between
						40-90W. Standby mode for a desktop is typically between 1-3 W. Laptop power is typically
						lower. Thin client power was based on measurements of SunRay units without a monitor which use
						around 7W on a 24*7 basis.</li> (g) Hours per year in use for active/idle and standby were based on
					the following:
					<li>Managed computers (i.e. PCs are powered down automatically by the network after a
						certain time in idle mode and hence spend more time in standby) are in active/idle mode for 40
						hours per week, 52 weeks a year (i.e.2,080 hours/year), and in standby for the remaining hours
						of the year.</li>
					<li>Unmanaged computers in computer suites and departments are in active/idle mode for 70
						hours per week, 52 weeks per year (i.e. 3,640 hours/year) (and in standby for the remaining
						time).</li>
					<li>Laptops and monitors are active/idle for 40 hours per week, 52 weeks per year (i.e.
						2,080 hours/year) as the default on most operating systems tends to power them down to standby
						after 20 minutes.</li>
				</ol>
				<p>
					<b>Networking</b>
				</p>
				<ol>
					<li>(h) All networking equipment assumed to be on throughout the year. Power usage for
						network equipment was based on measurements at the University of Sheffield, rounded up.</li>
				</ol>
				<p>
					<b>Phones</b>
				</p>
				<ol>
					<li>(i) Watts per PABX distributed phone were based on measurements at University of
						Sheffield of 1.75W, rounded up.</li>
					<li>(j) An overhead of 10% was made for the extra electricity used by the UPS units based
						on estimates at the University of Sheffield.</li>
					<li>(k) Locally powered VOIP phones were assumed to use 8W per phone based on a CISCO IP
						phone (5 W per hone and 3W per Ethernet port) (Cartledge, 2007).</li>
				</ol>
				<p>
					<b>Imaging Devices</b>
				</p>
				<ol>
					<li>(l) High volume copiers power use in active and standby mode were based on University
						of Sheffield figures, rounded up, for a student photocopier. UK usage figures (MTP, 2007a)
						suggest that a non-domestic copier is active for 27 hours a week and idle for 13 hours a week,
						therefore it was assumed that central photocopiers are active/idle for 40 hours a week, 52
						weeks a year (i.e. 2,080 hours/year). Assumed to be on standby for the remaining time. While
						the worked example for University of Sheffield appears to show no high volume copiers, their
						energy use is taken account of by the administrative software used to derive the total energy
						use of imaging equipment.</li>
					<li>(m) High volume printers power use in active and standby mode was based on MTP (2007)
						(see references) UK average stock figures for a 2007 non-domestic laser printer, rounded up.
						On-active and on-ready power was weighted using a ratio of 1:3 to give a weighted power figure
						in active/idle mode of 475 W. Usage was based on an assumption of active/idle mode for 40
						hours per week, 52 weeks a year. The remainder is assumed to be standby. While the worked
						example for University of Sheffield appears to show no high volume printers, their energy use
						is taken account of by the administrative software used to derive the total energy use of
						imaging equipment.</li>
					<li>(n) Rregular photocopiers power rating was based on University of Sheffield figures
						for Sharp copiers, rounded up and estimated usage figures.</li>
					<li>(o) High/medium and low/medium volume copiers power rating was based on University of
						Sheffield figures for Sharp departmental copiers, rounded up. The active/idle mode power
						consumption was estimated from a fluctuating measured value as each sheet of paper is printed,
						while the standby figure was measured. The devices were found to return to standby anywhere
						between 30 seconds or 20 minutes after last use. It was assumed that devices would be copying
						for two hours a day, 5 days a week or 520 hours per year.</li>
					<li>(p) Departmental shared laser printers (monochrome and colour) power rating was based
						on University of Sheffield measured figures for active and standby mode, rounded up. It was
						assumed devices would be printing for two hours a day, 5 days a week or 520 hours per year,
						based on experience at the University of Sheffield.</li>
					<li>(q) Scanners power rating based on maximum sleep power rating for EU Energy Star
						scanners of 5W (EU Energy Star, 2006). Sleep mode is assumed to be similar to idle mode.
						Standby power was assumed to be 2W. Usage was based on active use for 1 hours a day, 5 days a
						week, 52 weeks a year, idle for 7 hours a day, 5 days a week, 52 weeks a year. Assumed to be
						on standby for the remaining time. No figures available from the University of Sheffield.</li>
					<li>(s) Monochrome laser printer and inkjet printer power rating based on University of
						Sheffield measured figures and estimated usage of 20 minutes active use per day, 5 days per
						week, 52 weeks per year (i.e. 87 hours per year).</li>
					<li>(t) Personal MFD power rating based on MTP (2007) (see references) UK 2007 stock
						average figures for a domestic laser MFD. An average of 'on-active' and 'on-ready' power was
						used for active mode, and 'sleep/off' for standby mode. Usage was assumed the same as (s)
						above.</li>
				</ol>
				<p>
					<b>Audio-Visual Devices</b>
				</p>
				<ol>
					<li>(u) Projectors power use based on manufacturer's stated data for active use and
						measured data for standby power for devices at the University of Sheffield, rounded up.</li>
					<li>(u1) Plasma screens based on power consumption for typical 61" plasma screen. However
						power rating would need to be increased or decreased for larger and smaller screens
						respectively. E.g 84" screen typically 1100W,42" screen typically 275W. Assumed that these are
						run 24/7 but adjustment would need to be made for screens powered down with timer switches to
						standby.</li>
				</ol>
				<p>
					<b>Energy Costs</b>
				</p>
				<ol>
					<li>(v) Energy costs are based on a nominal electricity price of 12 pounds/kWh (incl. VAT)
					</li>
				</ol>
				<p>
					<b>Carbon Dioxide Emissions</b>
				</p>
				<ol>
					<li>(w) Carbon dioxide (CO2) emissions are based EIA 2011-2015 cycle conversion factor of
						0.53702 kg/kWh, further information can be found <a href = "http://www.greenrhinoenergy.com/climatechange/carbon_management/emissions_map.php" >
						here</a>
						</li>
				</ol>

				
			</form>
		</div>
	</div>
</body>
</html>