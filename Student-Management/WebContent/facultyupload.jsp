<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.*"%>
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
<%
if(request.getParameter("upload")!=null){
	out.println("<script>alert('File Upload Success.......')</script>"); 
}
%>
<%
if(request.getParameter("fail")!=null){
	out.println("<script>alert('File Upload Fail.......')</script>"); 
}
%>
		
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li class="selected"><a href="facultyhome.jsp"><span>Home</span></a></li>
					<li><a href="chatf.jsp"><span>ChatbBot</span></a></li>
					<li><a href="scheduletest.jsp"><span>Schedule_Test</span></a></li>
					<li><a href="fstudentinfo.jsp"><span>Student Info</span></a></li>
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
					<h2>Welcome <%=session.getAttribute("fname")%>&nbsp;<%=session.getAttribute("lname")%></h2>
					<div style="background: #0;color:black;height: 20px; margin-right: 500px;">
					<div align="center">
					<h2>Upload Stuff</h2>
		
				<form action="UploadFaculty" method="post" enctype="multipart/form-data">
				<table border="10" cellpadding="5" cellspacing="8">
					<tr>
						<td>Select File : </td>
						<td><input type="file" name="file" id="file" required /></td>
					</tr>
					<tr>
						<td>Course : </td>
						<td><input type="text" name="course" value="<%=session.getAttribute("course")%>" />
						</td>
					</tr>
					<tr>
						<td>Select Duration : </td>
						<td><select name="duration" required>
							<option value="">---Select---</option>
						<!--<option value="java">1</option>
							<option value="c">2</option>
							<option value="c++">3</option> -->
							
						<%
						Connection con = DbConnection.getConnection();
						PreparedStatement ps1 = con.prepareStatement("select distinct duration from studentreg where course=?");
						ps1.setString(1, session.getAttribute("course").toString());
						ResultSet rs1 = ps1.executeQuery();
						while(rs1.next())
						{
							%>
							<option value="<%=rs1.getString("duration") %>"><%=rs1.getString("duration") %></option>
							<%
						}
						%>
						
						</select></td>
						</tr>
						<tr>
							<td><input type="hidden" name="uploadedby" value="faculty" /></td>
							<td><input type="submit" value="Submit" /></td>
						</tr>
		
				</table>
		</form>
	</div></div></div></div>
	
			<div style="background: #0;color:black; height: 20px;margin-left: 542px;margin-top: -41px;">
				<div align="center">
				<h2>Upload Hall Ticket</h2>
		
				<form action="HallTickets" method="post" enctype="multipart/form-data">
				<table border="10" cellpadding="5" cellspacing="8">
					<tr>
						<td>Select Hall Ticket : </td>
						<td><input type="file" name="file" id="file" required /></td>
					</tr>
					<tr>
						<td>Semester : </td>
						<td><select name="semester" required>
							<option value="">---Select---</option>
							<option value="Sem1">Sem 1</option>
							<option value="Sem2">Sem 2</option>
							<option value="Sem3">Sem 3</option></select>
						</td>
					</tr>
					<tr>
						<td>Select Student : </td>
						<td><select name="email" required>
							<option value="">---Select---</option>
														
						<%
						Connection con1 = DbConnection.getConnection();
						PreparedStatement ps = con.prepareStatement("select * from studentreg");
						ResultSet rs = ps.executeQuery();
						while(rs.next())
						{
							String email=rs.getString("email");
							%>
							<option value="<%=rs.getString("email") %>"><%=rs.getString("email") %></option>
							<%
						}
						%>
						
						</select></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit" value="Submit" /></td>
						</tr>
		
				</table>
		</form>
		</div></div>
				</div></div>
					<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
			<div class="body">		
			</div>
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