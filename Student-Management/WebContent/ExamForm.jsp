<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
					<li class="selected"><a href="studenthome.jsp"><span>Home</span></a></li>
					<li><a href="AddPercent.jsp"><span>Add %</span></a></li>
					<li><a href="aggrigate.jsp"><span>Aggregate</span></a></li>
					<li><a href="files.jsp"><span>Files</span></a></li>
					<li><a href="notification.jsp"><span>Notification</span></a></li>
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
						<h2>Student Examination Form</h2>
						<form action="ExamForm" name="ureg" method="post">
							<table border="5" cellpadding="5" cellspacing="8">
							<tr>
								<td>First Name : </td>
								<td><input type="text" value="<%=session.getAttribute("fname")%>" name="fname" onblur="AllowAlphabet"  required /></td>
								<td>Last Name : </td>
								<td><input type="text" value="<%=session.getAttribute("lname")%>" name="lname" onblur="AllowAlphabet" required /></td>
							</tr>
							<tr>
								<td>Gender : </td>
								<td><select name="gender" required>
								<option value="">---Select---</option>
								<option value="male">Male</option>
								<option value="female">Female</option>
								</select></td>
								<td>Date of Birth : </td>
								<td><input type="date" name="dob" value="<%=session.getAttribute("dob")%>" required /></td>
							</tr>
							<tr>
								<td>Email : </td>
								<td><input type="email" name="email" value="<%=session.getAttribute("email")%>" onblur="validEmail()" required /></td>
								<td>Mobile : </td>
								<td><input type="text" name="mobile" maxlength="10" value="<%=session.getAttribute("mobile")%>" onblur="Validate()" required /></td>
							</tr>
							<tr>
								<td>Cast : </td>
								<td><select name="cast" required >
								<option value="">---Select---</option>
								<option value="Open">Open</option>
								<option value="SC">SC</option>
								<option value="NT">NT</option>
								</select></td>
								<td>Year : </td>
								<td><select name="year" required >
								<option value="">---Select---</option>
								<option value="1st Year">1st Year</option>
								<option value="2nd Year">2nd Year</option>
								<option value="3rd Year">3rd Year</option>
								</select></td>
							</tr>
							<tr>
								<td>Branch : </td>
								<td><select name="branch" required >
								<option value="">---Select---</option>
								<option value="CS">CS</option>
								<option value="IT">IT</option>
								<option value="Other">Other</option>	
								</select></td>
								<td>Fees Paid : </td>
								<td><input type="text" name="fees" required /></td>
							</tr>
							<tr>
								<td></td>
								<td align="center"><input type="submit" style="height: 45px; width: 120px;" value="Submit" class="button"></input></td>
								<td align="left"><input type="reset" style="height: 45px; width: 120px;" value="Reset"></input></td>
								<td></td>
							</tr>
						<%
						int srno=1;
						Connection con = DbConnection.getConnection();
						String email = session.getAttribute("email").toString();
						PreparedStatement ps = con.prepareStatement("select * from examform where email=?");
						ps.setString(1, email);
						ResultSet rs = ps.executeQuery();
						while(rs.next())
						{
							%>
						<tr>
							<th>File Name</th>
							<td><%=rs.getString("hallticket") %></td>
							<%-- <td><a href="Download?hallticket=<%= rs.getString("hallticket") %>">Download</a></td> --%>
							<td colspan="2"><a href="" onClick='window.open(src="upload/<%= rs.getString("hallticket") %>")' title="Click to Open">Open View</a></td>
						</tr>		
						</table>
					</form>
					<%} %>
					
					
					<br /><br />
			<div class="body">				
			</div>
		</div></div></div></div></div></div>
		
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