<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
if(request.getParameter("already")!=null)
{
	out.println("<script>alert('You Already Gave the Exam...')</script>");
}
%>

<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="studenthome.jsp"><span>Home</span></a></li>
					<li><a href="aggrigate.jsp"><span>Aggregate</span></a></li>
					<li><a href="verifyProfile.jsp"><span>Prediction</span></a></li>
					<li class="selected"><a href="chats.jsp"><span>ChatBot</span></a></li>
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
				
				<h1><b>ChatBot Model</b></h1>
				  <h2>Welcome <%=session.getAttribute("fname")%>&nbsp;<%=session.getAttribute("lname")%><br></h2>
					<h2>Communicate with Faculty Members</h2>			
			
					<table border="10" cellpadding="5" cellspacing="8">
					<%
					String course = session.getAttribute("course").toString();
					Connection con = DbConnection.getConnection();
					
					PreparedStatement ps = con.prepareStatement("select * from facultyreg where course=?");
					ps.setString(1, course);
					ResultSet rs = ps.executeQuery();
					while(rs.next())
					{
						String fid = rs.getString("id");
						String fullname = rs.getString("fname")+" "+rs.getString("lname");
						
						%>
						<tr>
							<th>Name:</th>
							<th><%=fullname %></th>
							<td><a href="chats1.jsp?fid=<%= fid %>" style="background: yellow;">Click Here</a></td>
						</tr>
						<%
					}
					%>
					</table>
				
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