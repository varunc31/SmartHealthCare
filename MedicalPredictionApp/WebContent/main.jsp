<!DOCTYPE html>
<html>
    <head>
        <title>My Project</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="js/geochart.js"></script>
    <script type="text/javascript" src="js/linechart.js"></script>
    <script type="text/javascript">
    
    
			function resetSelect() {
				document.getElementById('age').selectedIndex = 0;
				document.getElementById('sex').selectedIndex = 0;
				document.getElementById('country').selectedIndex = 0;
				document.getElementById('region').selectedIndex = 0;
				document.getElementById('year').selectedIndex = 0;
			}
			
			function showGraphs(){
				google.load("visualization", "1", {'packages':"corechart", 'callback': logic});
			}
			
			function logic(){
				
				var ageTemp = document.getElementById('age');
				var age = ageTemp.options[ageTemp.selectedIndex].text;
				
				var sexTemp = document.getElementById('sex');
				var sex = sexTemp.options[sexTemp.selectedIndex].text;
				
				var countryTemp = document.getElementById('country');
				var country = countryTemp.options[countryTemp.selectedIndex].text;
				
				var regionTemp = document.getElementById('region');
				var region = regionTemp.options[regionTemp.selectedIndex].text;
				
				var yearTemp = document.getElementById('year');
				var year = yearTemp.options[yearTemp.selectedIndex].text;
				
				categories = '{'
					+'"age" : "'+age+'",'
					+'"sex" : "'+sex+'",'
					+'"country" : "'+country+'",'
					+'"region" : "'+region+'",'
					+'"year" : "'+year+'"'
					+'}';
					
					$.ajax({
				        Type: "POST",
				        url: "http://localhost:8080/MedicalPredictionApp/MainPageServlet",
				        data: "categories="+categories,
				        success: function (msg) {
				        	alert("Loading google graphs! please wait");
				        	var jsonObj = JSON.parse(msg);
				        	//************************PIE CHART********************//
				        	
				        	var dataArrayPie = [ [ 'region', 'noOfDeaths' ]];
				        	//dataArrayPie.push([ jsonObj.region, parseInt(jsonObj.noOfDeaths) ]);
							 for ( var i = 0; i < jsonObj.length; i++) {
								dataArrayPie.push([ jsonObj[i].region, parseInt(jsonObj[i].noOfDeaths) ]);
							} 
							var dataPie = new google.visualization.arrayToDataTable(dataArrayPie);
							var options = {
							          title: "Deaths per region for year "+ year
							        };

				        	var chart = new google.visualization.PieChart(document.getElementById('piechart'));
							chart.draw(dataPie, options);
							drawBarGraph();
							
				        },
				    	error: function (error) {
				    		alert('Failed to save changes! please try again');
				    		$('#error-message').text("Error message");
				   		}
				  });
			}
			
				function drawBarGraph(){
				
				var ageTemp = document.getElementById('age');
				var age = ageTemp.options[ageTemp.selectedIndex].text;
				
				var sexTemp = document.getElementById('sex');
				var sex = sexTemp.options[sexTemp.selectedIndex].text;
				
				var countryTemp = document.getElementById('country');
				var country = countryTemp.options[countryTemp.selectedIndex].text;
				
				var regionTemp = document.getElementById('region');
				var region = regionTemp.options[regionTemp.selectedIndex].text;
				
				var yearTemp = document.getElementById('year');
				var year = yearTemp.options[yearTemp.selectedIndex].text;
				
				categories = '{'
					+'"age" : "'+age+'",'
					+'"sex" : "'+sex+'",'
					+'"country" : "'+country+'",'
					+'"region" : "'+region+'",'
					+'"year" : "'+year+'"'
					+'}';
					
					$.ajax({
				        Type: "POST",
				        url: "http://localhost:8080/MedicalPredictionApp/DrawBarGraphServlet",
				        data: "categories="+categories,
				        success: function (msg) {
				        	alert("Loading google graphs! please wait");
				        	var jsonObj = JSON.parse(msg);
				        	
							//************************BAR CHART********************//
							var dataArrayBar = [ [ 'age', 'noOfDeaths' ]];
							//dataArrayBar.push([ parseInt(jsonObj.age), parseInt(jsonObj.noOfDeaths) ]);
							 for ( var i = 0; i < jsonObj.length; i++) {
								 dataArrayBar.push([ jsonObj[i].age, parseInt(jsonObj[i].noOfDeaths) ]);
							} 
							var dataBar = new google.visualization.arrayToDataTable(dataArrayBar);
							var options = {
							          title: "Deaths per region for year "+ year,
							          vAxis: {title: 'Age',  titleTextStyle: {color: 'red'}},
							          hAxis: {title: 'Number Of Deaths',  titleTextStyle: {color: 'red'}}
							        };
							var chart = new google.visualization.BarChart(document.getElementById('chart_bar'));
							chart.draw(dataBar, options);
							
							//************************LINE CHART********************//
							/* var dataArrayLine = [ [ 'year', 'noOfDeaths' ]];
							dataArrayLine.push([ jsonObj.region, parseInt(jsonObj.noOfDeaths) ]);
							for ( var i = 0; i <= jsonObj.length; i++) {
								dataArray.push([ jsonObj[i].region, parseDouble(jsonObj[i].noOfDeaths) ]);
							} 
							/*var dataLine = new google.visualization.arrayToDataTable(dataArrayLine);
							var options = {
							          title: "How many people are affected by cancer in USA ?"
							        };
							var chart = new google.visualization.PieChart(document.getElementById('chart_line'));
							chart.draw(dataLine, options); */
							
				        },
				    	error: function (error) {
				    		alert('Failed to save changes! please try again');
				    		$('#error-message').text("Error message");
				   		}
				  });
			}
		</script>
    </head>

    <body>
    <div class="container">
    	<div class="row">
    		<div class="col-md-10">
				<div class = "logo">
				<img src="Smart Health Logo Final.PNG" width="242px" height="100px">
				</div>
		
		<nav class="navbar nav-tabs" role="navigation">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					  
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					  <ul class="nav navbar-nav">
						<li class="active"><a href="#"><b>Home</b></a></li>
						<li><a href="#"><b>Print</b></a></li>
						<li><a href="#"><b>Download</b></a></li>
						<li><a href="#"><b>Email</b></a></li>
						<li><a href="BiopsyDetails.jsp"><b>For Doctors Use</b></a>
					  </ul>
					</div><!-- /.navbar-collapse -->
				</nav>
				
				<div class="col-md-3">
					<div class="panel panel-primary">
					  <div class="panel-heading">
						<h4 style="color:white">Categories</h4>
					  </div>
					  <div class="panel-body">
					  
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="age" style="width:70%;" data-toggle="dropdown" aria-labelledby="dropdownMenu1">
    						<option><a href="#" data-dropdown="drop1" class="button dropdown">Age</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">Less than 1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1-4</option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5-9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10-14</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">15-19</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">20-24</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">25-29</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">30-34</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">35-39</option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">40-44</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">45-49</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">50-54</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">55-59</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">60-64</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">65-69</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">70-74</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">75-79</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">80-84</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">85+ </a></option>
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="sex" style="width:70%;" data-toggle="dropdown" aria-labelledby="dropdownMenu2">
    						<option><a href="#" data-dropdown="drop2" class="button dropdown">Sex</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">Male</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">Female</option>
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						 <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="country" style="width:70%;" data-toggle="dropdown" aria-labelledby="dropdownMenu3">
    						<option><a href="#" data-dropdown="drop3" class="button dropdown">Country</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">USA</a></option>
						  </select>
						</div>
						
						
					<br />
					
						<div class="dropdown">
						 <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="region" style="width:70%;" data-toggle="dropdown" aria-labelledby="dropdownMenu4">
    						<option><a href="#" data-dropdown="drop4" class="button dropdown">Region</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">West</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">East</option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">Central</option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">South</option>
							
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="year" style="width:70%;" data-toggle="dropdown" aria-labelledby="dropdownMenu5">
    						<option><a href="#" data-dropdown="drop5" class="button dropdown">Year</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2030</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2029</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2028</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2027</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2026</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2025</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2024</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2023</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2022</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2021</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2020</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2019</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2018</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2017</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2016</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2015</a></option>
   							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2014</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2013</option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2012</option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2011</option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2010</option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2009</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2008</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2007</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2006</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2005</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2004</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2003</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2002</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2001</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2000</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1999</a></option>
							
						  </select>
						</div>
						
						<br />
						
						<div>
						<button type="submit" class="btn btn-primary" style="width:80px;" onclick="showGraphs()">Submit</button>
						<button type="submit" class="btn btn-primary" style="width:80px;" onclick="resetSelect()">Reset</button>	
						</div>				
					  </div>
					</div>
				</div>
				<div class="col-md-9" id="predict">
					<div class="panel panel-primary">
					  <div class="panel-heading">
						<h4 style="color:white" id="h4">Prediction Charts</h4>
					  </div>
					   <!--Div that will hold the pie chart-->
    					<div id="piechart" style="width: 650px; height: 500px;"></div>
    					<div id="chart_bar" style="width: 650px; height: 350px;"></div><br><br>
    					<div id="chart_geo"></div><br>
    					<div id="chart_line" style="width: 650px; height: 350px;"></div>
					</div>
				</div>
			</div>
		
			<div class="col-md-2">
				
				<div>
				<% String userName = (String) request.getAttribute("userName"); %>
				<br>
				<p style="color:#428BCA"><b>Welcome</b></p> <p><b><%= userName %></b></p>
				
				<div>
				<button class="btn btn-md btn-primary btn-block" type="submit" style="width:80px">Logout</button>
				<a href = "index.html" alt ="Landing Page"></a>
				</div>
					<br> 
				<h4>Live Health News Updates</h4>
					<div id="widgetmain" style="text-align:left;overflow-y:auto;overflow-x:hidden;width:200px;background-color:#transparent; border:1px solid #428BCA;">
						<div id="rsswidget" style="height:500px;">
							<iframe src="http://us1.rssfeedwidget.com/getrss.php?time=1405993636617&amp;x=http%3A%2F%2Frss.news.yahoo.com%2Frss%2Fhealth&amp;w=200&amp;h=500&amp;bc=428BCA&amp;bw=1&amp;bgc=transparent&amp;m=20&amp;it=true&amp;t=(default)&amp;tc=333333&amp;ts=15&amp;tb=transparent&amp;il=true&amp;lc=0000FF&amp;ls=14&amp;lb=false&amp;id=true&amp;dc=333333&amp;ds=14&amp;idt=true&amp;dtc=284F2D&amp;dts=12" border="0" hspace="0" vspace="0" frameborder="no" marginwidth="0" marginheight="0" style="border:0; padding:0; margin:0; width:200px; height:500px;" id="rssOutput">Reading RSS Feed ...
							</iframe>
						</div>&nbsp;</span><br>
							</div>
						</div>
					</div>
				
				<div>
					<h4>Youtube</h4>
				</div>
			</div>
		</div>
	</div>
    </body>
</html>