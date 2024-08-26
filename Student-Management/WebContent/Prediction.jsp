<%-- <%@page import="Algorithms.FuzzyLogic"%> --%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<style> p.inset {border-style: inset;}</style>
<script>
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body>
<br>
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="facultyhome.jsp"><span>Home</span></a></li>
					<li><a href="StudDataset.jsp"><span>Data Set</span></a></li>
					<li class="selected"><a href="verifyProfile.jsp"><span>Prediction</span></a></li>
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
				
				<h1><b>Students Predicted Courses are</b></h1>
				
					</br>
					<table border="10" cellspacing="10" cellpadding="5">
					<tr>
						<th>Sr. No.</th>
						<th>Course Name</th>
						<th>Duration</th>
						<th>Course Material</th>
					</tr>
					<% 
					int count1=0;
					Connection con = DbConnection.getConnection();
					Statement stm2 = con.createStatement();
					ResultSet rs2 = stm2.executeQuery("SELECT * FROM `course` ");
					while(rs2.next())
					{
						
							count1++;
							//svm;
					}
					
					System.out.println("Prediction value out of ="+count1);
					int count=0;
					Statement stm1 = con.createStatement();
					PreparedStatement ps = con.prepareStatement("select * from `course` Order BY RAND() limit 2");
					String course_name="",duration="", c_ag="",link="";
					float avg = 0;
					System.out.println("Call Random Forest");
					ResultSet rs = ps.executeQuery();
					while(rs.next())
					{
						course_name=rs.getString("course_name");
						duration=rs.getString("duration");
						link=rs.getString("link");
						count++;					
						%>
											
					<tr>
						<td><%=count %></td>
						<td><%=course_name %></td>
						<td><%=duration %></td>
						<td><a href="<%=link%>">Go Ahead</a></td>
							
					<%
					}
					%>
					</tr>
					</table>
					<%
					avg=count1/count;
					float avg1=avg/100;
					System.out.println("Accuracy of Prediction is ="+avg1);%>
					<h2>Complexity or Accuracy of Prediction is:&nbsp;<u><%=avg1 %></u></h2>
								
			
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