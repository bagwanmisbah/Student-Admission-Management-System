<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/Chart.js"></script>
<title><%@include file="title.jsp" %></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>   
   <div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<%@include file="logo.jsp" %>
		</div>
		<div id="menu">
			<ul>         
                <li class="current_page_item"><a href="facultyhome.jsp" accesskey="1" title="">Home</a></li>
				<li><a href="facultyupload.jsp" accesskey="2" title="">Upload Files</a></li>
				<li><a href="scheduletest.jsp" accesskey="3" title="">Schedule Test</a></li>
				<!-- <li><a href="#" accesskey="4" title="">Student Info</a></li> -->
				<li><a href="chatf.jsp" accesskey="4" title="">Chat</a></li>
				<li><a href="index.jsp?logout" accesskey="4" title="">Logout</a></li>
			</ul>
		</div>
	</div>
</div>
	<div id="wrapper">
	<div id="welcome" class="wrapper-style1">
				
		<div class="page-section">
		<div class="page">
			<div class="left-section">
				<div class="panel">
				
												

			<div class="mainbar">
				<div class="article" style="height: 300px" align="center">

					<!-- <div align="center"><h3><b>Student Performance Graph</b></h3> -->

					<!-- <div style="width: 300px; margin-center: auto; margin-top: 20px">
						<div class="panel">

						<canvas id="canvas" height="300" width="700px" align="center"></canvas> -->
						
						<%
				String fyear = "";
				String syear = "";
				String tyear = "";
				String fryear = "";
				String aggrigate = "";
				//String stud_uname = session.getAttribute("fname").toString();
				String stud_uname=request.getParameter("stud_uname");
				System.out.println("Name="+stud_uname);
		        Connection con =DbConnection.getConnection();
				PreparedStatement ps = con.prepareStatement("Select * from `education_detail` where stud_uname='"+stud_uname+"'");
				//ps.setString(1, stud_uname);
				System.out.println("Student Name="+stud_uname);
				ResultSet rs = ps.executeQuery();
				if(rs.next())
				{
					fyear = rs.getString("fyear");
					syear = rs.getString("syear");
					tyear = rs.getString("tyear");
					fryear = rs.getString("fryear");
					aggrigate = rs.getString("aggrigate");
				}
				%>
		
		<script type="text/javascript">
		window.onload = function () {
			var chart = new CanvasJS.Chart("chartContainer", {
				title: {
					text: "Students Performace Analysis Graph"
				},
				data: [{
					type: "column",
					dataPoints: [
						{ y: <%=fyear%>, label: "First Year" },
						{ y: <%=syear%>, label: "Second Year" },
						{ y: <%=tyear%>, label: "Third Year" },
						{ y: <%=fryear%>, label: "Final Year" },
						{ y: <%=aggrigate%>, label: "Aggrigate" },
					]
				}]
			});
			chart.render();
		}
	</script>
	<script src="canvasjs.min.js"></script>
				<div id="chartContainer" style="height: 400px; width: 500px;"></div>
						
					</div>
						 <a href="fstudentinfo.jsp"><img src="img/back.png" height=70px align="left"></a><br>
				</div>
			</div>
			</div>
		</div>

	</div>
</div>
<br /><br />

<br /><br />
</div></div>
			</div></div>
					
			
		</div></div>
		
	</div>
		


<div id="footer" class="container">
	
	<p>&copy; A Machine Learning Approach for Tracking and Predicting Student Performance in Degree Programs </p>
</div>
</body>
</html>
