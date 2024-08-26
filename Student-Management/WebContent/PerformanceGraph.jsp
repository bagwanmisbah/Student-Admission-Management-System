<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<script src="js/Chart.js"></script>
<style> p.inset {border-style: inset;}</style>
<style>
.button {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #898988f;
  background-color: yellow;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

</style>
</head>
<body>   
   <div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="facultyhome.jsp"><span>Home</span></a></li>
					<li><a href="chatf.jsp"><span>ChatbBot</span></a></li>
					<li><a href="scheduletest.jsp"><span>Schedule_Test</span></a></li>
					<li class="selected"><a href="fstudentinfo.jsp"><span>Student Info</span></a></li>
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
												
<%

int s1,s2,s3;

%>

<%

try{
	

	Connection con=DbConnection.getConnection();
	String qur1="SELECT count(id) FROM result where marks='10'";
	PreparedStatement ps1= con.prepareStatement(qur1);
	ResultSet rs1=ps1.executeQuery();
	
	
	
	rs1.next();
	{
		s1=rs1.getInt(1);
		System.out.println("String s1:"+s1);
				
	}
	

 	Connection con1=DbConnection.getConnection();
	String qur2="SELECT count(id) FROM result where marks='8'";
	PreparedStatement ps2= con.prepareStatement(qur2);
	ResultSet rs2=ps2.executeQuery();
	 
	rs2.next();
	{
		s2=rs2.getInt(1);
		System.out.println("String s2:"+s2);
				
	}

 	Connection con2=DbConnection.getConnection();
	String qur3="SELECT count(id) FROM result where marks='6'";
	PreparedStatement ps3= con.prepareStatement(qur3);
	ResultSet rs3=ps2.executeQuery();
	 
	rs3.next();
	{
		s3=rs3.getInt(1);
		System.out.println("String s3:"+s3);
				
	}


%>

		<!-- <div class="content" style="margin-top: 200px;margin-left: 200px;"> -->

			<%
					
			%>
			<div class="mainbar">
				<div class="article" style="height: 300px" align="center">

					<div align="center"><h3><b>Student Performance Graph</b></h3>

					<div style="width: 300px; margin-center: auto; margin-top: 20px">
						<div class="panel">

						<canvas id="canvas" height="300" width="700px" align="center" style="margin-top: 50px;margin-left: -170px;"></canvas>
						<script>
							var barChartData = {
								labels : ["CRITICAL", "MODERATE","AVERAGE"],
								datasets : [

								{

									fillColor : "rgba(238,130,150,1)",
									strokeColor : "rgba(238,130,238,1)",
									data : [<%=s1%>,<%=s2%>,<%=s3%>,0]
								} ]

							}

							var myLine = new Chart(document.getElementById(
									"canvas").getContext("2d"))
									.Bar(barChartData);
						</script>
						<script src="canvasjs.min.js"></script>
						<script src="jquery.canvasjs.min.js"></script>
						<!-- <div id="chartContainer" style="height: 400px; width: 50%;"></div> -->
					</div>
					<br></br>
						<a class="button" href="fstudentinfo.jsp">Back to Home</a> <br></br>
				</div>
			</div>
			</div>
		</div>

	</div>
</div>
<br /><br />
<%

}
catch(Exception e)
{
	System.out.println("Exe:"+e);
}

%>
<br /><br />
</div></div>
				</div></div>
					<br /><br />
			<div class="body">
				<!-- <img src="images/tnpbanner.jpg" alt="" height="200px" width="850px" /> -->			
			</div>
		<br /><br /><br /><br />
		
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
	</div>
</body>
</html>