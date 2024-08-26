<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
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
if(request.getParameter("done")!=null)
{
	out.println("<script>alert('Test Scheduled Successfully')</script>");
}
if(request.getParameter("present")!=null)
{
	out.println("<script>alert('Test Already Scheduled')</script>");
}
%>
				
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="facultyhome.jsp"><span>Home</span></a></li>
					<li><a href="chatf.jsp"><span>ChatbBot</span></a></li>
					<li class="selected"><a href="scheduletest.jsp"><span>Schedule_Test</span></a></li>
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
				
					<h2>Schedule The Test</h2>
						<form action="scheduletest" method="post">
			<table border="10" cellpadding="5" cellspacing="8">
			<tr>
				<td>Select Course : </td>
				<td><input type="text" name="course" value="<%=session.getAttribute("course").toString() %>" readonly="readonly" /></td>
			</tr>
			
			<tr>
				<td>Select Duration : </td>
				<td>
			<select name="duration" required>
			<option value="">---Select---</option>
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
			</select>
			</td>
			</tr>
			<tr>
				<td>Select Date : </td>
				<td><input type="date" name="date" /></td>
			</tr>
			<tr>
				<td>Select Time : </td>
				<td><input type="time" name="time" /></td>
			</tr>
			
			<tr>
				<!-- <td></td> -->
				<td colspan="2" align="center"><input type="submit" value="Submit" /></td>
			</tr>
			</table>
			</form>

			</div></div>
				</div></div>
					<br /><br />
			<div class="body">
				<!-- <img src="images/tnpbanner.jpg" alt="" height="200px" width="850px" /> -->			
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