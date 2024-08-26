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
if(request.getParameter("add")!=null)
{
	out.print("<script>alert('Add Successfully Done')</script>");
}
%>
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="adminhome.jsp"><span>Home</span></a></li>
					<li><a href="adminupload.jsp"><span>Upload_Stuff</span></a></li>
					<li class="selected"><a href="addCourse.jsp"><span>Add Course</span></a></li>
					<li><a href="graph.jsp"><span>Graph</span></a></li>
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
					<h1><b>Add Course Details</b></h1>

					<form action="AddCourse" method="post">
						<table border="15" cellspacing="10" cellpadding="10">
							<tr>
								<td><b>Course Name</b></td>
								<td><input type="text" name="cname" required /></td>
							</tr>
							<tr>
								<td><b>Duration</b></td>
								<td><input type="text" name="duration" required /></td>
							</tr>
							<tr>
								<td><b>Department</b></td>
								<td><input type="text" name="dept" required /></td>
							</tr>
							<tr>
								<td><b>BE Aggregate</b></td>
								<td><input type="text" name="beagg" required /></td>
							</tr>
							<tr>
								<td><b>Course Material Link</b></td>
								<td><input type="text" name="cmat" required /></td>
							</tr>
							<tr align="center">
								<td><input type="submit" value="Submit" /></td>
								<td><input type="reset" value="Reset" /></td>
							</tr>
							
						</table>
					</form>
				</div></div></div></div>
					<br /><br />
			<!-- <div class="body">
				<img src="images/tnpbanner.jpg" alt="" height="200px" width="850px" />					
			</div> -->
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