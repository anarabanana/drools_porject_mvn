
<!DOCTYPE html>
<HTML>
<HEAD>
<META charset="utf-8">
<META http-equiv="X-UA-Compatible" content="IE=edge">
<META name="viewport" content="width=device-width, initial-scale=1">
<TITLE>Calculator</TITLE>
<LINK rel="stylesheet" href="assets/demo.css">
<LINK rel="stylesheet" href="assets/form-mini.css">
<LINK rel="icon" href="assets/favicon.ico" type="image/png" sizes="16x16">
<LINK rel="stylesheet" media="screen" href="assets/handsontable.full.css">
<SCRIPT src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"
	type="text/javascript"></SCRIPT>
<SCRIPT src="assets/handsontable.full.js" type="text/javascript"></SCRIPT>
<!-- <SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/jquery/jquery-1.10.2.js"
	type="text/javascript"></SCRIPT> -->
<!-- <script src="assets/parser.js"></script>
<script src="assets/ruleJS.js"></script>
<script src="assets/handsontable.formula.js"></script> -->
<!-- <SCRIPT
	src="http://handsontable.github.io/handsontable-ruleJS/lib/handsontable/handsontable.full.js"
	type="text/javascript"></SCRIPT> -->
<!-- <LINK rel="stylesheet" media="screen"
	href="http://handsontable.github.io/handsontable-ruleJS/lib/handsontable/handsontable.full.css">
 -->
<!-- <SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/lodash/lodash.js"
	type="text/javascript"></SCRIPT> 
	<SCRIPT
	src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/underscore.string/underscore.string.js"
	type="text/javascript"></SCRIPT>
	<SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/moment/moment.js"
	type="text/javascript"></SCRIPT>
	<SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/numeral/numeral.js"
	type="text/javascript"></SCRIPT>
	<SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/numericjs/numeric.js"
	type="text/javascript"></SCRIPT>
	<SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/js-md5/md5.js"
	type="text/javascript"></SCRIPT>
	<SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/jstat/jstat.js"
	type="text/javascript"></SCRIPT>
	<SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/lib/formulajs/formula.js"
	type="text/javascript"></SCRIPT>
	<SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/js/parser.js"
	type="text/javascript"></SCRIPT>
	<SCRIPT src="http://handsontable.github.io/handsontable-ruleJS/lib/RuleJS/js/ruleJS.js"
	type="text/javascript"></SCRIPT>
	
	<SCRIPT
	src="http://handsontable.github.io/handsontable-ruleJS/lib/handsontable/handsontable.formula.js"
	type="text/javascript"></SCRIPT>-->
<SCRIPT src="assets/lodash.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/underscore.string.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/moment.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/numeral.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/numeric.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/md5.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/jstat.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/formula.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/parser.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/ruleJS.js" type="text/javascript"></SCRIPT>
<SCRIPT src="assets/handsontable.formula.js" type="text/javascript"></SCRIPT>
<script src="assets/numeral.min.js"></script>
<SCRIPT type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></SCRIPT>
<!-- <SCRIPT src="http://docs.handsontable.com/0.15.0-beta6/bower_components/raphael/raphael-min.js"
	type="text/javascript"></SCRIPT> 
	<SCRIPT src="http://docs.handsontable.com/0.15.0-beta6/scripts/graphael-demo/g.raphael-min.js"
	type="text/javascript"></SCRIPT>
	<SCRIPT src="http://docs.handsontable.com/0.15.0-beta6/scripts/graphael-demo/g.bar-min.js"
	type="text/javascript"></SCRIPT>-->

 <script src='http://alasql.org/console/xlsx.core.min.js'></script>
<script src='http://alasql.org/console/alasql.min.js'></script> 

<script src='assets/xlsx.full.min.js'></script>
<!-- <script src='assets/alasql.min.js'></script>
<script src='assets/xlsx.core.min.js'></script> -->

<SCRIPT type="text/javascript">
var indexesData = [];
 //var indexesData; 
/*   var getIndexesData = function(result){ 
	 console.log(result)
	 return result;	 
	 }; */
 var src = alasql('select * into ? from xlsx("assets/Data.xlsx",{range:"X23:Y176"})',
        [indexesData,],function(data_xlsx){
	
		// getIndexesData(data_xlsx);
		//console.log(indexesData)
		//indexesData.push(data_xlsx); 
		
		});


	 //indexesData = getIndexesData();
console.log(indexesData)
//alert(indexesData)
	 


//alert(indexesData[59].V)
	var country;
	var resultObject;
	//var indexesData;
	$(document).ready(

			function() {

				var data = [
						/* [ "A", "B", "C", "D", "E", "F", "G", "H", "I" ], */
						[ "", "Server Rooms", "Number 1U servers", "Watts per server (c)",
								"Total Server Watts", "Hours/y", , "Overhead (d)", "Total kWh/y" ],
						[ "2", "Central servers", 10, 350, '=(C2*D2)', 8760, , , '=+((E2*F2)/1000)' ],
						[ "3", "Small scale servers", 3, 100, '=(C3*D3)', 8760, , , '=+((E3*F3)/1000)' ],
						[ "4", "Storage & other server equipment (d)", , , , , , 0, '=(I2*H4)+(I3*H4)' ],
						[ "5", "Server/equipment sub-total", , , , , , , '=+(SUM(I2:I4))' ],
						[ "6", "Server cooling & power supply overhead (e)", , , , , , '0.5',
								'=+(SUM(I2:I4)*H6)' ],
						[ "7", "SERVER SUB-TOTAL", , , , , , , '=SUM(I4:I6)' ],
						[ "8", "", , , , , , , '' ],
						[ "9", "", , , , , , , '' ],
						[ "10", "PCs & Monitors", "Number", "Watts (Active, idle) (f)",
								"Watts (Standby) (f)", "Hours (Active, idle) (g)", "Hours (Standby) (g)",
								"kWh/y per PC", "Total kWh/y" ],
						[ "11", "Medium performance, standard PCs", 180, 60, 3, 2000, '=(8760-F11)',
								'=+((D11*F11)+(E11*G11))/1000', '=+(H11*C11)' ],
						[ "12", "Low power, green PCs", 0, 30, 2, 2000, '=(8760-F12)',
								'=+((D12*F12)+(E12*G12))/1000', '=+(H12*C12)' ],
						[ "13", "Portable PCs ", 0, 30, 1, 2080, '=(8760-F13)',
								'=+((D13*F13)+(E13*G13))/1000', '=+(H13*C13)' ],
						[ "14", "Thin clients", 70, 7, 7, 2080, '=(8760-F14)',
								'=+((D14*F14)+(E14*G14))/1000', '=+(H14*C14)' ],
						[ "15", "Flat (LCD or TFT) Monitors", 160, 25, 2, 2080, '=(8760-F15)',
								'=+((D15*F15)+(E15*G15))/1000', '=+(H15*C15)' ],
						[ "16", "CRT Monitors", 0, 70, 5, 2080, '=(8760-F16)',
								'=+((D16*F16)+(E16*G16))/1000', '=+(H16*C16)' ],
						[ "17", "POS terminals", , , , , , , 0 ],
						[ "18", "Other", , , , , , , 0 ],
						[ "19", "Aircon overhead for computer suites", , , , , , , 0 ],
						[ "20", "PCs & MONITORS SUB-TOTAL", , , , , , , '=(SUM(I11:I19))' ],
						[ "21", "", , , , , , , '' ],
						[ "22", "", , , , , , , '' ],
						[ "23", "Networks", "Number", "Watts/unit (h)", , "Hours/y", , , "Total kWh/y" ],
						[ "24", "Edge switches", 10, 50, , 8760, , , "=(C24*D24*F24)/1000" ],
						[ "25", "Aggregation switches", 7, 87, , 8760, , , "=(C25*D25*F25)/1000" ],
						[ "26", "Core switches", 0, 600, , 8760, , , "=(C26*D26*F26)/1000" ],
						[ "27", "Wireless access points", 25, 165, , 8760, , , "=(C27*D27*F27)/1000" ],
						[ "28", "Room based hubs", 25, 4, , 8760, , , "=(C28*D28*F28)/1000" ],
						[ "29", "Unmanaged edge switches", 10, 23, , 8760, , , "=(C29*D29*F29)/1000" ],
						[ "30", "Power over ethernet (POE)", 0, 170, , 8760, , , "=(C30*D30*F30)/1000" ],
						[ "31", "NETWORKS SUB-TOTAL", , , , , , , "=SUM(I24:I30)" ],

						[ "32", "", , , , , , , '' ],
						[ "33", "", , , , , , , '' ],

						[ "34", "Phones", "Number", "Watts/unit", "Total Watts", "Hours/y", "Overhead", ,
								"Total kWh/y" ],
						[ "35", "PABX distributed (i)", 250, 1.75, '=+(C35*D35)', 8760, , ,
								"=+((E35*F35)/1000)" ],
						[ "36", "PABX cooling and power supply (j)", 0, 0, , , 0.1, , '383.25' ],
						[ "37", "Locally powered VOIP phones (k) ", 0, 3, "=+(C37*D37)", 8760, , ,
								"=(E37*F37)/1000" ],

						[ "38", "PHONES SUB-TOTAL", , , , , , , "=SUM(I35:I37)" ],
						[ "39", "", , , , , , , '' ],
						[ "40", "", , , , , , , '' ],
						[ "41", "Imaging", "Number", "Watts (active/idle)", "Watts(Standby)",
								"Hours (active/idle)", "Hours (Standby) ", "kWh/unit", "Total kWh/y" ],
						[ "42", "High volume copiers (l)", '0', '1200', "3", "2080", "=8760-F42",
								'=+(D42*F42+E42*G42)/1000', "=+(H42*C42)" ],
						[ "43", "High volume printers (m)", '0', '500', "15", "2080", "=8760-F43",
								'=+(D43*F43+E43*G43)/1000', "=+(H43*C43)" ],
						[ "44", "Regular photocopiers (n)", '20', '1000', "29", "1000", "3000",
								'=+(D44*F44+E44*G44)/1000', "=+(H44*C44)" ],
						[ "45", "High/medium volume copiers/MFDs (o)", '0', '1000', "29", "520", "=8760-F45",
								'=+(D45*F45+E45*G45)/1000', "=+(H45*C45)" ],
						[ "46", "Low/medium volume copiers/MFDs (o)", '10', '600', "19", "520", "=8760-F46",
								'=+(D46*F46+E46*G46)/1000', "=+(H46*C46)" ],
						[ "47", "Networked monochrome laser printers (p)", '10', '440', "15", "520",
								"=8760-F47", '=+(D47*F47+E47*G47)/1000', "=+(H47*C47)" ],
						[ "48", "Networked colour laser printers (p)", '10', '500', "30", "520", "=8760-F48",
								'=+(D48*F48+E48*G48)/1000', "=+(H48*C48)" ],
						[ "49", "Scanners (q)", '0', '5', "0", "1680", "=8760-F49",
								'=+(D49*F49+E49*G49)/1000', "=+(H49*C49)" ],
						[ "50", "Monochrome laser printer (s)", '10', '350', "7", "87", "=8760-F50",
								'=+(D50*F50+E50*G50)/1000', "=+(H50*C50)" ],
						[ "51", "Inkjet printer (s)", '10', '20', "6", "87", "=8760-F51",
								'=+(D51*F151+E51*G51)/1000', "=+(H51*C51)" ],
						[ "52", "IMAGING SUB-TOTAL", , , , , , , "=+SUM(I42:I51)" ],
						[ "53", "", , , , , , , '' ],
						[ "54", "", , , , , , , '' ],
						[ "55", "Audio/Video", "Number", "Watts (Active)", "Watts (Standby) ",
								"Hours (Active)", "Hours (Standby)", , "Total kWh/y" ],
						[ "56", "Projectors (u)", '20', '290', "8", '500', "=(8760-F56)", ,
								"=(C56*(D56*F56+E56*G56))/1000" ],
						[ "57", "Audio sets", 0, "1", "1", 8000, "=(8760-F3)", ,
								"=(C57*(D57*F57+E57*G57))/1000" ],
						[ "58", "Plasma screens ( 61' screen) (u1)", 0, "700", "3", 8000, "=(8760-F58)", ,
								"=(C58*(D58*F58+E58*G58))/1000" ],

						[ "59", "AV SUB-TOTAL", , , , , , , "=SUM(I56:I58)" ],
						[ "60", "", , , , , , , '' ],
						[ "61", "", , , , , , , '' ],
						[ "62", "Category", "Energy Use (kWh/y)", "Energy Cost (£/y) ",
								"CO2 emissions (kg/y)", , , , ],
						[ "63", "Servers", '=CEILING(SUM(I4:I6),1)', "=CEILING((C63*C72),1)", "=CEILING((C63*C73),1)" ],
						[ "64", "PCs", '=CEILING(SUM(I11:I19),1)', "=CEILING((C64*C72),1)", "=CEILING((C64*C73),1)" ],
						[ "65", "Networks", "=CEILING(SUM(I24:I30),1)", "=CEILING((C65*C72),1)", "=CEILING((C65*C73),1)" ],
						[ "66", "Telephony", "=CEILING(SUM(I35:I37),1)", "=CEILING((C66*C72),1)", "=CEILING((C66*C73),1)" ],
						[ "67", "Imaging", "=CEILING(SUM(I42:I51),1)", "=CEILING((C67*C72),1)", "=CEILING((C67*C73),1)" ],
						[ "68", "AV", "=CEILING(SUM(I56:I58),1)", "=CEILING((C68*C72),1)", "=CEILING((C68*C73),1)" ],
						[ "69", "TOTAL", "=CEILING(SUM(C63:C68),1)", "=CEILING((C69*C72),1)", "=CEILING((C69*C73),1)" ],
						[ "70", "", , , , , , , '' ], [ "71	", "", , , , , , , '' ],
						[ "72", "Default electricity price (p/KwH)", '0.12', , , , , , '' ],
						[ "73", "Default CO2 emission (kg CO2/kWh) (w)", '0.5678', , , , , , '' ],
						[ "74", "", , , , , , , '' ], [ "75	", "", , , , , , , '' ]

				];
				google.charts.load("current", {
					packages : [ "corechart" ]
				});

				var container = document.getElementById('servers_grid');
				function firstRowRenderer(instance, td, row, col, prop, value, cellProperties) {
					Handsontable.renderers.TextRenderer.apply(this, arguments);
					td.style.fontWeight = 'bold';
					td.style.color = 'black';
					td.style.background = '#e0e0d1';
				}
				function negativeValueRenderer(instance, td, row, col, prop, value, cellProperties) {
					Handsontable.renderers.TextRenderer.apply(this, arguments);
					
					//td.className = 'make-me-red';
					//  td.style.background = '#ccccff';

				}
				greenRenderer = function (instance, td, row, col, prop, value, cellProperties) {
					Handsontable.renderers.NumericRenderer.apply(this, arguments);
					
				  };
				Handsontable.renderers.registerRenderer('negativeValueRenderer', negativeValueRenderer);

			  	/* indexesData = [ {
					name : 'GB',
					factor : '0.527'
				}, {
					name : 'FR',
					factor : '0.09'
				} ,
				{
					name : 'KZ',
					factor : '0.777'
				},];  
			  	console.log(indexesData) */

				

				var hot = new Handsontable(container,
						{
							formulas : true,
							data : data,
							renderAllRows : true,
							observeChanges : true,
							wordWrap : true,
							autoWrapRow : true,
							enterBeginsEditing : false,
							manualColumnResize : true,
							manualRowResize : true,
							cell : [

							{
								row : 1,
								col : 8,
								readOnly : true
							}, {
								row : 2,
								col : 8,
								readOnly : true
							}, {
								row : 3,
								col : 8,
								readOnly : true
							}, {
								row : 4,
								col : 8,
								readOnly : true
							}, {
								row : 5,
								col : 8,
								readOnly : true
							}, {
								row : 6,
								col : 8,
								readOnly : true
							},

							/* PCS */

							{
								row : 10,
								col : 7,
								readOnly : true
							}, {
								row : 11,
								col : 7,
								readOnly : true
							}, {
								row : 12,
								col : 7,
								readOnly : true
							}, {
								row : 13,
								col : 7,
								readOnly : true
							}, {
								row : 14,
								col : 7,
								readOnly : true
							}, {
								row : 15,
								col : 7,
								readOnly : true
							},

							{
								row : 10,
								col : 8,
								readOnly : true
							}, {
								row : 11,
								col : 8,
								readOnly : true
							}, {
								row : 12,
								col : 8,
								readOnly : true
							}, {
								row : 13,
								col : 8,
								readOnly : true
							}, {
								row : 14,
								col : 8,
								readOnly : true
							}, {
								row : 15,
								col : 8,
								readOnly : true
							}, {
								row : 16,
								col : 8,
								readOnly : true
							}, {
								row : 17,
								col : 8,
								readOnly : true
							}, {
								row : 18,
								col : 8,
								readOnly : true
							}, {
								row : 19,
								col : 8,
								readOnly : true
							},

							/* Networks */

							{
								row : 23,
								col : 5,
								readOnly : true
							}, {
								row : 24,
								col : 5,
								readOnly : true
							}, {
								row : 25,
								col : 5,
								readOnly : true
							}, {
								row : 26,
								col : 5,
								readOnly : true
							}, {
								row : 27,
								col : 5,
								readOnly : true
							}, {
								row : 28,
								col : 5,
								readOnly : true
							}, {
								row : 29,
								col : 5,
								readOnly : true
							}, {
								row : 30,
								col : 5,
								readOnly : true
							},

							{
								row : 23,
								col : 8,
								readOnly : true
							}, {
								row : 24,
								col : 8,
								readOnly : true
							}, {
								row : 25,
								col : 8,
								readOnly : true
							}, {
								row : 26,
								col : 8,
								readOnly : true
							}, {
								row : 27,
								col : 8,
								readOnly : true
							}, {
								row : 28,
								col : 8,
								readOnly : true
							}, {
								row : 29,
								col : 8,
								readOnly : true
							}, {
								row : 30,
								col : 8,
								readOnly : true
							},

							/*Phones */

							// {row: 22, col: 8, readOnly: true},
							{
								row : 34,
								col : 8,
								readOnly : true
							}, {
								row : 35,
								col : 8,
								readOnly : true
							}, {
								row : 36,
								col : 8,
								readOnly : true
							}, {
								row : 37,
								col : 8,
								readOnly : true
							},

							/* Imaging */

							{
								row : 41,
								col : 8,
								readOnly : true
							}, {
								row : 42,
								col : 8,
								readOnly : true
							}, {
								row : 43,
								col : 8,
								readOnly : true
							}, {
								row : 44,
								col : 8,
								readOnly : true
							}, {
								row : 45,
								col : 8,
								readOnly : true
							}, {
								row : 46,
								col : 8,
								readOnly : true
							}, {
								row : 47,
								col : 8,
								readOnly : true
							}, {
								row : 48,
								col : 8,
								readOnly : true
							}, {
								row : 49,
								col : 8,
								readOnly : true
							}, {
								row : 50,
								col : 8,
								readOnly : true
							}, {
								row : 51,
								col : 8,
								readOnly : true
							},

							{
								row : 41,
								col : 7,
								readOnly : true
							}, {
								row : 42,
								col : 7,
								readOnly : true
							}, {
								row : 43,
								col : 7,
								readOnly : true
							}, {
								row : 44,
								col : 7,
								readOnly : true
							}, {
								row : 45,
								col : 7,
								readOnly : true
							}, {
								row : 46,
								col : 7,
								readOnly : true
							}, {
								row : 47,
								col : 7,
								readOnly : true
							}, {
								row : 48,
								col : 7,
								readOnly : true
							}, {
								row : 49,
								col : 7,
								readOnly : true
							}, {
								row : 50,
								col : 7,
								readOnly : true
							},

							/*AV */

							{
								row : 55,
								col : 8,
								readOnly : true
							}, {
								row : 56,
								col : 8,
								readOnly : true
							}, {
								row : 57,
								col : 8,
								readOnly : true
							}, {
								row : 58,
								col : 8,
								readOnly : true
							},

							/*Total table */

							// {row: 22, col: 8, readOnly: true},
							{
								row : 62,
								col : 2,
								readOnly : true
							}, {
								row : 63,
								col : 2,
								readOnly : true
							}, {
								row : 64,
								col : 2,
								readOnly : true
							}, {
								row : 65,
								col : 2,
								readOnly : true
							}, {
								row : 66,
								col : 2,
								readOnly : true
							}, {
								row : 67,
								col : 2,
								readOnly : true
							}, {
								row : 68,
								col : 2,
								readOnly : true
							},

							{
								row : 62,
								col : 3,
								readOnly : true
							}, {
								row : 63,
								col : 3,
								readOnly : true
							}, {
								row : 64,
								col : 3,
								readOnly : true
							}, {
								row : 65,
								col : 3,
								readOnly : true
							}, {
								row : 66,
								col : 3,
								readOnly : true
							}, {
								row : 67,
								col : 3,
								readOnly : true
							}, {
								row : 68,
								col : 3,
								readOnly : true
							},

							{
								row : 62,
								col : 4,
								readOnly : true
							}, {
								row : 63,
								col : 4,
								readOnly : true
							}, {
								row : 64,
								col : 4,
								readOnly : true
							}, {
								row : 65,
								col : 4,
								readOnly : true
							}, {
								row : 66,
								col : 4,
								readOnly : true
							}, {
								row : 67,
								col : 4,
								readOnly : true
							}, {
								row : 68,
								col : 4,
								readOnly : true,
								format: '0.00'
								
							},

							{
								row : 72,
								col : 2,
								type : 'handsontable',

								handsontable : {
									
									colHeaders: ['Factor', 'Country'],
									data : indexesData,
								  /*   columns: [
								      {
								    	  indexesData:'Factor'
								    	  
								      },
								      {
								    	indexesData: 'Country',
								        readOnly: true
								      }], */
									autoColumnSize: true
									
								
								},

							},

							],
							afterSelection : function(row, col, row2, col2) {
								/*  var meta = this.getCellMeta(row2, col2);

								 if (meta.readOnly) {
								   this.updateSettings({fillHandle: false});
								 }
								 else {
								   this.updateSettings({fillHandle: true});
								 } */
							},
							cells : function(row, col, prop) {
								var cellProperties = {};

								if (row === 0 || row === 9 || row === 22 || row === 33 || row === 40
										|| row === 54 || row === 61) {
									cellProperties.readOnly = true; // make cell read-only if it is first row or the text reads 'readOnly'
								}
								if (row === 71 && col === 2) {
									cellProperties.renderer = greenRenderer;
									 //cellProperties.type = 'numeric';
								     cellProperties.format = '0.0';
									}
								
								if (row === 0 || row === 9 || row === 22 || row === 33 || row === 40
										|| row === 54 || row === 61) {
									cellProperties.renderer = firstRowRenderer; // uses function directly
								}
								if (row === 1 && col === 2 || row === 2 && col === 2 || row === 10
										&& col === 2 || row === 11 && col === 2 || row === 12 && col === 2
										|| row === 13 && col === 2 || row === 14 && col === 2 || row === 15
										&& col === 2 || row === 16 && col === 2 || row === 17 && col === 2
										|| row === 23 && col === 2 || row === 24 && col === 2 || row === 25
										&& col === 2 || row === 26 && col === 2 || row === 27 && col === 2
										|| row === 28 && col === 2 || row === 29 && col === 2

										|| row === 41 && col === 2 || row === 42 && col === 2 || row === 43
										&& col === 2 || row === 44 && col === 2 || row === 45 && col === 2
										|| row === 46 && col === 2 || row === 47 && col === 2 || row === 48
										&& col === 2 || row === 49 && col === 2 || row === 50 && col === 2
										|| row === 55 && col === 2 || row === 56 && col === 2 || row === 57
										&& col === 2 || row === 34 && col === 2 || row === 35 && col === 2
										|| row === 36 && col === 2 || row === 71 && col === 2 || row === 72
										&& col === 2 || row === 5 && col === 7

								) {
									cellProperties.renderer = "negativeValueRenderer"; // uses lookup 
								}

								return cellProperties;
							},

							//type: 'numeric',

							roundFloat : 2,
							//colHeaders: [ "A", "B", "C", "D", "E", "F", "G", "H", "I" ],
							currentRowClassName : 'currentRow',
							currentColClassName : 'currentCol',

							colWidths : [ 35, 180, 110, 170, 160, 160, 160, 160, 100, 125 ],

							afterChangesObserved : function() {

								var servers_total = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 62,
											col : 2
										})).value
								var pcs_total = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 63,
											col : 2
										})).value
								var networks_total = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 64,
											col : 2
										})).value
								var telephony_total = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 65,
											col : 2
										})).value
								var imaging_total = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 66,
											col : 2
										})).value
								var av_total = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 67,
											col : 2
										})).value

								var servers_energy = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 62,
											col : 3
										})).value
								var pcs_energy = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 63,
											col : 3
										})).value
								var networks_energy = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 64,
											col : 3
										})).value
								var telephony_energy = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 65,
											col : 3
										})).value
								var imaging_energy = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 66,
											col : 3
										})).value
								var av_energy = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 67,
											col : 3
										})).value

								var servers_carbon = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 62,
											col : 4
										})).value
								var pcs_carbon = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 63,
											col : 4
										})).value
								var networks_carbon = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 64,
											col : 4
										})).value
								var telephony_carbon = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 65,
											col : 4
										})).value
								var imaging_carbon = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 66,
											col : 4
										})).value
								var av_carbon = hot.plugin.matrix.getItem(hot.plugin.utils
										.translateCellCoords({
											row : 67,
											col : 4
										})).value
								//	s =  $('#servers_grid').handsontable('getDataAtCell', 62, 2);
								//	alert(servers_total);
								google.charts.setOnLoadCallback(drawChart);

								function drawChart() {
									//alert(servers_total);
									var data = google.visualization.arrayToDataTable([
											[ 'Category', 'kWh/y' ], [ 'Servers', servers_total ],
											[ 'PCs', pcs_total ], [ 'AV', av_total ],
											[ 'Phones', telephony_total ], [ 'Imaging', imaging_total ],
											[ 'Networking', networks_total ] ]);
									var data_energy = google.visualization.arrayToDataTable([
											[ 'Category', '£/y' ], [ 'Servers', servers_energy ],
											[ 'PCs', pcs_energy ], [ 'Imaging', imaging_energy ],
											[ 'Networking', networks_energy ], [ 'AV', av_energy ],
											[ 'Phones', telephony_energy ] ]);
									var data_carbon = google.visualization.arrayToDataTable([
											[ 'Category', 'kg/y' ], [ 'Servers', servers_carbon ],
											[ 'PCs', pcs_carbon ], [ 'AV', av_carbon ],
											[ 'Phones', telephony_carbon ], [ 'Imaging', imaging_carbon ],
											[ 'Networking', networks_carbon ] ]);

									var view = new google.visualization.DataView(data);
									view.setColumns([ 0, {
										type : 'Energy Cost (£/y) ',
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
										title : 'Breakdown of ICT Energy Use, in kWh/y',
										is3D : true,
										sliceVisibilityThreshold : 0,
										

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

									var view_energy = new google.visualization.DataView(data_energy);
									view_energy.setColumns([ 0, {
										type : 'number',
										label : data_energy.getColumnLabel(1),
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

									var options_energy = {
										title : 'Breakdown of ICT Energy Use Cost, in £/y',
										is3D : true,
										sliceVisibilityThreshold : 0,
										colors: ['silver','silver', 'silver','silver','silver','silver'],

										pieSliceText : 'kg',
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

									var chart_energy = new google.visualization.ColumnChart(document
											.getElementById('piechart_energy'));
									chart_energy.draw(data_energy, options_energy);

									var view_carbon = new google.visualization.DataView(data_carbon);
									view_carbon.setColumns([ 0, {
										type : 'number',
										label : data_carbon.getColumnLabel(1),
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

									var options_carbon = {
										title : 'Carbon emissions of ICT equipment',
										is3D : true,
										sliceVisibilityThreshold : 0,

										pieSliceText : 'kg',
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

									var chart_carbon = new google.visualization.BarChart(document
											.getElementById('piechart_carbon'));
									chart_carbon.draw(data_carbon, options_carbon);
								}

							}

						});

				function search(nameKey, myArray) {
					for ( var i = 0; i < myArray.length; i++) {
						if (myArray[i].W === nameKey) {
							return myArray[i].V;
						}
					}
				}
				
				
				// alert(indexesData[i].name)
				   $.getJSON("http://ip-api.com/xml/?fields=countryCode", function(data) {
           
            country = data.CountryCode;
            alert(country+" yeah");
        });
				$.getJSON("http://freegeoip.net/json/", function(data) {
					country = data.country_code;
					//country_name = data.country_name;
					//alert(country_name);

					//alert(country);
					// for (var i=0; i < indexesData.length; i++) 

					//var regex = new RegExp( country, 'g' );
					//resultObjectCode = search(country, indexesData);
					alasql('select * from xlsx("assets/Data.xlsx",{range:"V23:W176"})',
				        [],function(data_xlsx) {
					//console.log(data_xlsx);
				//	alert(data_xlsx[59].W)
					
					resultObject = (search(country, data_xlsx))/1000;
					alert("Your country code is: " + country + ". Emissions factor is: " + resultObject)
					hot.setDataAtCell(72, 2, resultObject);

					//indexesData[i].name.match(regex);
					//alert(indexesData[i].name.match(regex));
					});
					

				hot.render();
				// $('#servers_grid').handsontable('setDataAtCell', 73, 2, "100");
				//data[72][2]=resultObject;

			});
				
			});
</SCRIPT>
<STYLE type="text/css">
/* .handsontable table thead th {
  white-space: pre-line;
  max-width: 100;
} */
.form-mini {
	padding: 20px;
}

.make-me-red { //
	color: #000099;
	background-color: #ccccff;
	font-weight: bold;
}
</STYLE>
</HEAD>
<HEADER>
	<H1>ER Assessment Belief rule-based system</H1>
</HEADER>
<UL>
	<LI><A href="index.html">Home</A>
	</LI>
	<LI><A href="Assessment.jsp">Form</A>
	</LI>
	<LI><A href="Results.jsp">Results</A>
	</LI>
	<LI><A href="Recommendations.jsp">Recommendations</A>
	</LI>
	<LI><A href="Calculate.jsp" class="active">Calculator</A></LI>
</UL>
<BODY>
	<DIV class="main-content">
		<FORM class="form-mini" action="">
			<DIV class="container">
			<DIV class="form-radio-buttons">
			
			<label><span>Introduction<BR>
			
			This tool is designed to help SMEs estimate their in-office energy use, costs and carbon footprint of non-residential ICT usage.
			<BR>It requires a number for each of the different types of ICT device and/or to get more accurate results
			in addition to numbers of devices users can enter company specific data on the power rating 
			of equipment and typical usage hours.
			<BR>For each item please fill in determined (estimated) data and measure your progress directly (totals sections gets adjusted).
			<BR> For more information and assumptions please check <a href="Readme.jsp">README</a> section.
			</span></label>
			
			</DIV>
			<BR>
				<DIV id="servers_grid"></DIV>
				<BR> <BR> <BR>
				<TABLE>
					<TR>
						<TD><DIV id="piechart" style="width: 400px; height: 400px;"></DIV></TD>
						<TD><DIV id="piechart_energy" style="width: 400px; height: 400px;"></DIV></TD>
						<TD>
							<DIV id="piechart_carbon" style="width: 400px; height: 400px;"></DIV></TD>
					</TR>
				</TABLE>
			</DIV>
		</FORM>
	</DIV>
	<!-- </div> -->
</BODY>
</HTML>
<!-- http://codepen.io/ashblue/pen/mCtuA -->