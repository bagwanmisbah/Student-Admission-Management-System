<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Admission System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<style> p.inset {border-style: inset;}</style>
</head>
<body>
<%
if(request.getParameter("Update")!=null)
{
	out.println("<script>alert('Request updated Successfull')</script>");
}
%>
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="facultyhome.jsp"><span>Home</span></a></li>
					<li><a href="chatf.jsp"><span>ChatbBot</span></a></li>
					<li><a href="scheduletest.jsp"><span>Schedule_Test</span></a></li>
					<li class="selected"><a href="fstudentinfo.jsp"><span>Student Info</span></a></li>
					<!-- <li><a href="#"><span>About us</span></a></li>
					<li><a href="#"><span>contact us</span></a></li> -->
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
						<h2>Student Information</h2>
			
						<table border="5" cellpadding="5" cellspacing="8">
						<tr>
							<th>Sr.No</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Gender</th>
							<th>Email</th>
							<th>Mobile</th>
							<th>Course</th>
							<th>Duration</th>
							<th>Exam Form</th>
							<th>Result</th>
						</tr>
						<%
						int srno=1;
						Connection con = DbConnection.getConnection();
						PreparedStatement ps = con.prepareStatement("select * from studentreg where course=?");
						ps.setString(1, session.getAttribute("course").toString());
						ResultSet rs = ps.executeQuery();
						while(rs.next())
						{
							String flag = rs.getString("flag");
							String fullname = rs.getString("fname")+" "+rs.getString("lname");
							%>
							<tr align="center">
							<td><%=srno++ %></td>
							<td><%=rs.getString("fname") %></td>
							<td><%=rs.getString("lname") %></td>
							<td><%=rs.getString("gender") %></td>
							<td><%=rs.getString("email") %></td>
							<td><%=rs.getString("mobile") %></td>
							<td><%=rs.getString("course") %></td>
							<td><%=rs.getString("duration") %>&nbsp;Month</td>
							
							<td><a href="EForm.jsp?id=<%= rs.getString("id") %>&fullname=<%=fullname %>&email=<%=rs.getString("email") %>" style="background: yellow;">Check Status</a></td>
							<td><a href="result.jsp?id=<%= rs.getString("id") %>&fullname=<%=fullname %>&email=<%=rs.getString("email") %>" style="background: yellow;">See Result</a></td>
							<%
						}
						
						%>
						</tr>
					</table>		
					
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