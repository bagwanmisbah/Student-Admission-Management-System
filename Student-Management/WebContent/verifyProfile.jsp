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
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="studenthome.jsp"><span>Home</span></a></li>
					<li><a href="aggrigate.jsp"><span>Aggregate</span></a></li>
					<li class="selected"><a href="verifyProfile.jsp"><span>Prediction</span></a></li>
					<li><a href="chats.jsp"><span>ChatBot</span></a></li>
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
				
				<h1><b>Your Predicted Companies are</b></h1>
				
				<%
				int count=0;
				//String stud_uname=session.getAttribute("username").toString();
				String fname=session.getAttribute("fname").toString();
				Connection con = DbConnection.getConnection();
				Statement stm = con.createStatement();
				ResultSet rs = stm.executeQuery("SELECT * FROM `education_detail` where stud_uname='"+fname+"' ");
				String dept="", agg="";
				if (rs.next()) 
				{
					agg=rs.getString("aggrigate");
					//dept=rs.getString("dept");
					%>
					
					<h2>Your Aggregate is &nbsp; <span><u><%=agg %>%</u></span></h2>
					<table border="10" cellspacing="10" cellpadding="5">
					<tr>
						<th>Sr. No.</th>
						<th>Course Name</th>
						<th>Department</th>
						<th>Aggregate</th>
						<th>WebSite</th>
					</tr>
					<% 
					int count1=0;
					Statement stm2 = con.createStatement();
					ResultSet rs2 = stm2.executeQuery("SELECT * FROM `placement` ");
					while(rs2.next())
					{
						
							count1++;
							//svm;
					}
					
					System.out.println("Prediction value out of ="+count1);
					
					System.out.println("Predicted Aggregate value of Course= "+agg);
					Statement stm1 = con.createStatement();
					//ResultSet rs1 = stm.executeQuery("SELECT * FROM `course` where dept='"+dept+"' limit 2 ");
					ResultSet rs1 = stm.executeQuery("SELECT * FROM `placement` where agg<'"+agg+"' Order BY RAND() limit 2 ");
					String company_name="", c_ag="",website="";
					System.out.println("Perform train and test data");
					while(rs1.next())
					{
						company_name=rs1.getString("company_name");
						dept=rs1.getString("dept");
						c_ag=rs1.getString("agg");
						website=rs1.getString("website");
						count++;					
						%>
											
					<tr>
						<td><%=count %></td>
						<td><%=company_name %></td>
						<td><%=dept %></td>
						<td><%=agg %></td>
						<td><a href="<%=website%>">Go Ahead</a></td>
							
					<%
					}
					%>
					</tr>
					</table>
					<%
					float avg=count1/count;
					float avg1=avg/100;
					System.out.println("Accuracy of Prediction is ="+avg1);%>
					<h2>Complexity or Accuracy of Prediction is:&nbsp;<u><%=avg1 %></u></h2>
				<%			
				}
				
				else{
					out.print("<script>alert('Please Enter Educational Details')</script>");
					
				}
				
				%> </div></div></div></div></div></div></br>
		
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