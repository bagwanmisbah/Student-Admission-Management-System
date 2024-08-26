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
if(request.getParameter("fail")!=null){
	out.println("<script>alert('File Upload Fail.......')</script>"); 
}
%>
	
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="adminhome.jsp"><span>Home</span></a></li>
					<li class="selected"><a href="adminupload.jsp"><span>Upload_Stuff</span></a></li>
					<li><a href="addCourse.jsp"><span>Add Course</span></a></li>
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
						<h2>Upload Stuff</h2>
				
							<form action="uploadadmin" method="post" enctype="multipart/form-data">
							<table border="10" cellpadding="10" cellspacing="10">
							<tr>
								<td><b>Select File : </b></td>
								<td><input type="file" name="file" id="file" required /></td>
							</tr>
							<tr>
								<td><b>Course : </b></td>
								<td><select name="course" required>
									<option value="">---Select---</option>
									<option value="java">Java</option>
									<option value="c">C</option>
									<option value="c++">C++</option>
									</select></td>
							</tr>
							<tr>
								<td><b>Upcoming Events <br> and Notice : </b></td>
								<td><textarea rows="3" cols="15" name="upcomings"></textarea></td>
							</tr>
							<tr>
								<td><input type="hidden" name="uploadedby" value="admin" /></td>
								<td><input type="submit" value="Submit" /></td>
							</tr>
							
							</table>
							
							</form>
				</div></div></div></div>
					<br /><br />
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