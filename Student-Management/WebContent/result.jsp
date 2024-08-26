<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Admission System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<style> p.inset {border-style: inset;}</style>
<style>
.button {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #898988f;
  background-color: yellow;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

</style>
</head>
<body>
	
<%
if(request.getParameter("fail")!=null)
{
	out.println("<script>alert('Failed.... Please Generate Report Again')</script>");
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
					
						<h2>Student Results</h2>
				
						<h3><%=request.getParameter("fullname") %></h3><br />
						<table border="0" cellpadding="10" cellspacing="10">
												
						<%
						int srno=1;
						Connection con = DbConnection.getConnection();
						String id = request.getParameter("id");
						String email = request.getParameter("email");
						PreparedStatement ps = con.prepareStatement("select * from result where stdid=?");
						ps.setString(1, id);
						ResultSet rs = ps.executeQuery();
						while(rs.next())
						{
							
						%>
							<tr align="center">
								<th>Sr.No.</th>
								<th></th>
								<th>Test <%=srno++ %></th>
							</tr>
							<tr align="center">	
								<th>Marks </th>
								<th>:=</th>
								<th><%=rs.getString("marks") %></th>
							</tr>
							<tr align="center">
								<th>Out of </th>
								<th>:=</th>
								<th>10</th>
			
						<%
							}
						%>
						</tr>
					</table>		
				<br />	
			<br />
			<strong>If All Tests are Completed Then Generate the Final Result</strong><br></br><br></br>
			<a class="button" href="result?id=<%= id %>&email=<%=email%>&fullname=<%=request.getParameter("fullname")%>">Generate Result</a> 
			<br></br><br></br>
			<a class="button" href="PerformanceGraph.jsp?id=<%= id %><%-- &email=<%=email%>&fullname=<%=request.getParameter("fullname")%> --%>">Generate Performance Graph</a>
		
			<br /><br /><br /><br /><br /><br />
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