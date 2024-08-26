<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<style> p.inset {border-style: inset;}</style>

</head>
<body>
<%
if(request.getParameter("regFail")!=null)
{
	out.println("<script>alert('Registration Fail......!!')</script>");
}
%>

	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li class="selected"><a href="facultyhome.jsp"><span>Home</span></a></li>
					<li><a href="facultyupload.jsp"><span>Upload_Stuff</span></a></li>
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
						
						<%
							int srno=1;
							Connection con = DbConnection.getConnection();
							String id = request.getParameter("id");
							String email = request.getParameter("email");
							PreparedStatement ps = con.prepareStatement("select * from examform where email=?");
							ps.setString(1, email);
							ResultSet rs = ps.executeQuery();
							while(rs.next())
							{
							
						%>
						<h2><%=rs.getString("fname")%>&nbsp;<%=rs.getString("lname")%>'s Examination Form</h2>
							<table border="5" cellpadding="5" cellspacing="8">
							<tr>
								<td>First Name : </td>
								<td><%=rs.getString("fname")%></td>
								<td>Last Name : </td>
								<td><%=rs.getString("lname")%></td>
							</tr>
							<tr>
								<td>Gender : </td>
								<td><%=rs.getString("gender")%></td>
								<td>Date of Birth : </td>
								<td><%=rs.getString("dob")%></td>
							</tr>
							<tr>
								<td>Email : </td>
								<td><%=rs.getString("email")%></td>
								<td>Mobile : </td>
								<td><%=rs.getString("mobile")%></td>
							</tr>
							<tr>
								<td>Cast : </td>
								<td><%=rs.getString("cast")%></td>
								<td>Year : </td>
								<td><%=rs.getString("year")%></td>
							</tr>
							<tr>
								<td>Branch : </td>
								<td><%=rs.getString("branch")%></td>
								<td>Fees Paid : </td>
								<td><%=rs.getString("fees")%></td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2" align="center"><a href="ExamFormRequest?email=<%=rs.getString("email") %>" style="background: yellow;">Accept Request</a></td>
								<td></td>
							</tr>
							<%} %>
						</table>
					</div></div>
				</div></div>
					<br /><br />
						
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