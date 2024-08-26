<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.unknown.GlobalFunction"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<style> p.inset {border-style: inset;}</style>

</head>
<body>

<br>
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="adminhome.jsp"><span>Home</span></a></li>
					<li><a href="facultyinfo.jsp">Faculty</a></li>
					<li><a href="studentinfo.jsp">Student</a></li>
					<li class="selected"><a href="graph.jsp">Graph</a></li>
					<!-- <li><a href="#"><span>Contact Us</span></a></li> -->
					<li><a href="index.jsp?logout"><span>Logout</span></a></li>
				</ul>
		</div>
	<div id="body">
		<div class="header">
			<div>
				<ul>
					<li><img src="images/discuss.jpg" alt="" /></li>	
					<li><img src="images/flags.jpg" alt="" /></li>
					<li><img src="images/graph.jpg" alt="" /></li>		
				</ul>		
				<div>
					<h3><span><img src="img/learn.jpg" alt="" height="180px" width="500px" /></span></h3>	
					</div>
			</div>
		</div>
		
<div class="page-section">
		<div class="page">
			<div class="left-section">
				<div class="panel">
					
					<div align="center">
					<h2>Sentiment Classification</h2>
				
			</div>
			
			<div align="center">
		<%
		GlobalFunction GF = new GlobalFunction();
		int p1 = GF.positiveClassification("schat");
		int n1 = GF.negativeClassification("schat");
		
		int p2 = GF.positiveClassification("fchat");
		int n2 = GF.negativeClassification("fchat");
		
		int po = p1+p2;
		int ne = n1+n2;
		
		%>
		
		<script type="text/javascript">
		window.onload = function () {
			var chart = new CanvasJS.Chart("chartContainer", {
				title: {
					text: "Students Performance Analysis"
				},
				data: [{
					type: "column",
					dataPoints: [
						{ y: <%=po%>, label: "Positive Performance" },
						{ y: <%=ne%>, label: "Negative Performance" },
						
					]
				}]
			});
			chart.render();
		}
	</script>
	<script src="canvasjs.min.js"></script>
	<script src="jquery.canvasjs.min.js"></script>
	<div id="chartContainer" style="height: 400px; width: 50%;"></div>
			
			</div></div>
		</div></div>
	<br /><br />
			<!-- <div class="body">
				<img src="images/tnpbanner.jpg" alt="" height="200px" width="850px" />					
			</div> -->
		</div></div>
		
	<div id="footer">
		<div>
			<div>
				<h3>america</h3>
				<ul>
					<li>457-380-1654 main</li>				
					<li>257-301-9417 toll free</li>
				</ul>			
			</div>		
			<div>
				<h3>europe</h3>
				<ul>
					<li>457-380-1654 main</li>				
					<li>257-301-9417 toll free</li>
				</ul>			
			</div>	
			<div>
				<h3>canada</h3>
				<ul>
					<li>457-380-1654 main</li>				
					<li>257-301-9417 toll free</li>
				</ul>			
			</div>	
			<div>
				<h3>middle east</h3>
				<ul>
					<li>457-380-1654 main</li>				
					<li>257-301-9417 toll free</li>
				</ul>			
			</div>	
			<div>
				<h3>follow us:</h3>
				<a class="facebook" href="http://facebook.com/freewebsitetemplates" target="_blank">Facebook</a>		
				<a class="twitter" href="http://twitter.com/fwtemplates" target="_blank">Twitter</a>
			</div>	
		</div>
		<div>
			<p><font color="blue"><b>@copy Copyright 2018-19. All rights reserved by Student</b></font></p>
		</div>
	</div></br>
</body>
</html>