<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
			
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="studenthome.jsp"><span>Home</span></a></li>
					<li><a href="aggrigate.jsp"><span>Aggregate Details</span></a></li>
					<li><a href="chats.jsp"><span>ChatbBot</span></a></li>
					<li class="selected"><a href="files.jsp"><span>Files</span></a></li>
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
					<h2>Welcome <%=session.getAttribute("fname")%>&nbsp;<%=session.getAttribute("lname")%> </h2>
					<div style="background: #0;color:black;height: 20px; margin-right: 500px; margin-left: 82px;">
					<div align="center">
					<h2>Files Uploaded by Admin</h2>	
						<table border="10" cellpadding="5" cellspacing="8">
						<tr>
							<th>Sr.No.</th>
							<th>Events</th>
							<th>File Name</th>
							<th>Download</th>
							<th>See &nbsp;&nbsp;&nbsp;&nbsp;</th>
						</tr>
						
						<%
						int srno=1;
						Connection con = DbConnection.getConnection();
						String course = session.getAttribute("course").toString();
						String duration = session.getAttribute("duration").toString();
						PreparedStatement ps = con.prepareStatement("select * from files where uploadedby='admin' and course=?");
						ps.setString(1, course);
						ResultSet rs = ps.executeQuery();
						while(rs.next())
						{
						%>
						<tr>
							<td><%=srno++ %></td>
							<td><%=rs.getString("upcomings") %></td>
							<td><%=rs.getString("filename") %></td>
							<td><a href="Download?filename=<%= rs.getString("filename") %>">Download</a></td>
							<td><a href="" onClick='window.open(src="upload/<%= rs.getString("filename") %>")' title="Click to Open">See</a></td>
							<%
						}
						%>
						</tr>
						</table>
					</div>
				</div>
			</div>
			<div align="center">
			<div style="background: #0;color:black; height: 20px;margin-left: 952px;margin-top: -41px;">
				<div align="center">
				<h2>Files Uploaded by Faculty</h2>
				<table border="10" cellpadding="5" cellspacing="8">
				<tr>
					<th>Sr.No.</th>
					<th>File Name</th>
					<th>Download</th>
					<th>See&nbsp;&nbsp;&nbsp;</th>
				</tr>
		
			<%
			int srno1=1;
	
		    //PreparedStatement ps1 = con.prepareStatement("select * from filesfaculty where uploadedby='faculty' and course=? and duration=?");
		    PreparedStatement ps1 = con.prepareStatement("select * from filesfaculty");
			//ps1.setString(1, course);
			//ps1.setString(2, duration);
			ResultSet rs1 = ps1.executeQuery();
			while(rs1.next())
			{
				%>
			<tr>
				<td><%=srno1++ %></td>
				<td><%=rs1.getString("filename") %></td>
				<td><a href="Download?filename=<%= rs1.getString("filename") %>">Download</a></td>
				<td><a href="" onClick='window.open(src="upload/<%= rs1.getString("filename") %>")' title="Click to Open">See</a></td>
			<%
		}
		%>
		</tr>
		</table>
		</div></div>
			<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
			<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
					</div>
				</div>
				</div>
				</div>
			<br></br>
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