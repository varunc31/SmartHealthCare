<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Biopsy Information for Doctors</title>

 		<link href="css/bootstrap.min.css" rel="stylesheet">
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		
		<script type='text/javascript' src='https://www.google.com/jsapi'></script>
	    <script type="text/javascript" src="js/guageChart.js"></script>
	    <script type="text/javascript">
	    
	    
	    function resetCategories() {
				document.getElementById('clumpThickness').selectedIndex = 0;
				document.getElementById('cellSize').selectedIndex = 0;
				document.getElementById('cellShape').selectedIndex = 0;
				document.getElementById('marginalAdhesion').selectedIndex = 0;
				document.getElementById('epithelialCellSize').selectedIndex = 0;
				document.getElementById('bareNuclei').selectedIndex = 0;
				document.getElementById('blandChromatin').selectedIndex = 0;
				document.getElementById('mitoses').selectedIndex = 0;

			}

	    </script>
	    
	    </head>

<!--  Biopsy Information for the Doctors -->

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
						<li><a href="#"><b>for Doctors</b></a>
					  </ul>
					</div><!-- /.navbar-collapse -->
				</nav>
				
				<div class="col-md-5">
					<div class="panel panel-primary">
					  <div class="panel-heading">
						<h4 style="color:white">Categories</h4>
					  </div>
					  <div class="panel-body">
					  
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="clumpThickness" style="width:90%;" data-toggle="dropdown" aria-labelledby="dropdownMenu1">
    						<option><a href="#" data-dropdown="drop1" class="button dropdown">Clump Thickness</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></option>
							
							
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="cellSize" style="width:90%;" data-toggle="dropdown" aria-labelledby="dropdownMenu2">
    						<option><a href="#" data-dropdown="drop2" class="button dropdown">Uniformity of Cell Size</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></option>
							
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						 <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="cellShape" style="width:90%;" data-toggle="dropdown" aria-labelledby="dropdownMenu3">
    						<option><a href="#" data-dropdown="drop3" class="button dropdown">Uniformity of Cell Shape</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></option>
							
						  </select>
						</div>
						
						
					<br />
					
						<div class="dropdown">
						 <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="marginalAdhesion" style="width:90%;" data-toggle="dropdown" aria-labelledby="dropdownMenu4">
    						<option><a href="#" data-dropdown="drop4" class="button dropdown">Marginal Adhesion</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></option>
							
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="epithelialCellSize" style="width:90%;" data-toggle="dropdown" aria-labelledby="dropdownMenu5">
    						<option><a href="#" data-dropdown="drop5" class="button dropdown">Single Epithelial Cell Size</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></option>
							
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="bareNuclei" style="width:90%;" data-toggle="dropdown" aria-labelledby="dropdownMenu5">
    						<option><a href="#" data-dropdown="drop5" class="button dropdown">Bare Nuclei</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></option>
							
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="blandChromatin" style="width:90%;" data-toggle="dropdown" aria-labelledby="dropdownMenu5">
    						<option><a href="#" data-dropdown="drop5" class="button dropdown">Bland Chromatin</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></option>
							
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="normalNucleoli" style="width:90%;" data-toggle="dropdown" aria-labelledby="dropdownMenu5">
    						<option><a href="#" data-dropdown="drop5" class="button dropdown">Normal Nucleoli</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></option>
							
						  </select>
						</div>
						
						<br />
						
						<div class="dropdown">
						  <select class="btn btn-default dropdown dropdown-toggle" type="button" role="menu" id="mitoses" style="width:90%;" data-toggle="dropdown" aria-labelledby="dropdownMenu5">
    						<option><a href="#" data-dropdown="drop5" class="button dropdown">Mitoses</a></option>
    						<option role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></option>
							<option role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></option>
							
						  </select>
						</div>
						
						<br />
						
						<div>
						<button type="submit" class="btn btn-primary" style="width:80px;" onclick="showGuageChart()">Submit</button>
						<button type="submit" class="btn btn-primary" style="width:80px;" onclick="resetCategories()">Reset</button>	
						</div>				
					  </div>
					</div>
				</div>
				<div class="col-md-7" id="predict">
					<div class="panel panel-primary">
					  <div class="panel-heading">
						<h4 style="color:white" id="h4">Prediction Charts</h4>
					  </div>
					   <!--Div that will hold the guage chart-->
    					<div id="chart_guage" align="center"></div>
    					
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