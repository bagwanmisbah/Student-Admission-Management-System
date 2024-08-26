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
if(request.getParameter("Fal")!=null)
{
	out.println("<script>alert('Admin Login Failed')</script>");
}
%>
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="index.jsp"><span>Home</span></a></li>
					<li><a href="studentlogin.jsp"><span>Student</span></a></li>
					<li><a href="facultylogin.jsp"><span>Faculty</span></a></li>
					<li class="selected"><a href="adminlogin.jsp"><span>Admin</span></a></li>
					<li><a href="#"><span>contact us</span></a></li>			
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
						<h1><b>Admin Login</b></h1>
						<br />

						<form action="admin" method="post">
							<table border="20" cellpadding="5" cellspacing="8">
								<tr>
									<td><b>Username : </b></td>
									<td><input type="text" name="username" required /></td>
								</tr>
								<tr>
									<td><b>Password : </b></td>
									<td><input type="password" name="password" required /></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><input type="submit" value="Login" /></td>
								</tr>
								</table>
							</form>
			
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