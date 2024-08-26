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
if(request.getParameter("activate")!=null)
{
	out.println("<script>alert('Account Activated Successfully')</script>");
}
%>
<br>
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="adminhome.jsp"><span>Home</span></a></li>
					<li class="selected"><a href="facultyinfo.jsp">Faculty</a></li>
					<li><a href="studentinfo.jsp">Student</a></li>
					<li><a href="graph.jsp">Graph</a></li>
					<!-- <li><a href="#"><span>Contact Us</span></a></li> -->
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
				
				<h2>Faculty Information</h2>
			
			<table border="30" cellpadding="5" cellspacing="8">
			<tr>
				<th>Sr.No</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gender</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Expert</th>
				<th>Action</th>
			</tr>	
		<%
		int srno=1;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from facultyreg");
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			String flag = rs.getString("flag");
			%>
		
			<tr align="center">
					<td><%=srno++ %></td>
					<td><%=rs.getString("fname") %></td>
					<td><%=rs.getString("lname") %></td>
					<td><%=rs.getString("gender") %></td>
					<td><%=rs.getString("email") %></td>
					<td><%=rs.getString("mobile") %></td>
					<td><%=rs.getString("course") %></td>
					<%if(flag.equals("0")){ %>
					<td><a href="admin?id=<%= rs.getString("id") %>" style="background: yellow;">Activate</a></td>
					<%}else{ %>
					<td style="background: green;color: white;">Activated</td>
					<%
					}
				}
				%>
			</tr>
		</table>
		</div></div>
				</div></div>
					<br /><br />
			<div class="body">
				<img src="images/tnpbanner.jpg" alt="" height="200px" width="850px" />					
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