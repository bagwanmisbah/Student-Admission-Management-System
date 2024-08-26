<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

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
					<li class="selected"><a href="studenthome.jsp"><span>Home</span></a></li>
					<li><a href="AddPercent.jsp"><span>Add %</span></a></li>
					<li><a href="aggrigate.jsp"><span>Aggregate</span></a></li>
					<li><a href="#"><span>Contact Us</span></a></li>
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
					<h2>Welcome <%=session.getAttribute("fname")%>&nbsp;<%=session.getAttribute("lname")%> to</h2>
					<h1><b>Your Education Detail</b></h1>

					<table border="21" cellpadding="5">
						<%
							String stud_uname = session.getAttribute("fname").toString();
							Connection con = DbConnection.getConnection();
							try{
							Statement stm = con.createStatement();
							ResultSet rs = stm
									.executeQuery("Select * from `education_detail` where stud_uname='"
											+ stud_uname + "'");
							String fyear="",syear="",tyear="",fryear="",agg = "";
							if (rs.next()) {
								fyear = rs.getString("fyear");
								syear = rs.getString("syear");
								tyear = rs.getString("tyear");
								fryear = rs.getString("fryear");
								agg = rs.getString("aggrigate");
							}
							
							
							Statement stm1 = con.createStatement();
							ResultSet rs1 = stm1
									.executeQuery("Select * from `studentreg` where fname='"
											+ stud_uname + "'");
							String mobile = "",course="",email="";
							if (rs1.next()) {
								mobile = rs1.getString("mobile");
								email = rs1.getString("email");
								course = rs1.getString("course");
							}
							
						%>

						<tr>
							<td><b>Student Name</b></td>
							<td><strong><%=session.getAttribute("fname")%><%-- &nbsp;<%=session.getAttribute("lname")%> --%></strong></td>
							<td><b>Percentage</b></td>
						</tr>
						<tr>
							<td><b>Aggregate</b></td>
							<td><%=agg%> &nbsp;% </td>
							<td>First Year= <%=fyear%>%</td>
						</tr>
						<tr>
							<td><b>Mobile Number</b></td>
							<td><%=mobile%></td>
							<td>Second Year= <%=syear%>%</td>
						</tr>
						<tr>
							<td><b>Email Id</b></td>
							<td><%=email%></td>
							<td>Third Year= <%=tyear%>%</td>
						</tr>
						<tr>
							<td><b>Course Done</b></td>
							<td><%=course%></td>
							<td>Final Year= <%=fryear%>%</td>
						</tr>

					</table>

					<%
							}
								catch(Exception e){	
						}
						 %>
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