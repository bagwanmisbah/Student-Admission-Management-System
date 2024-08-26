<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<style> p.inset {border-style: inset;}</style>

<script>
	function AllowAlphabet() {
		if (!ureg.fname.value.match(/^[a-zA-Z]+$/) && ureg.fname.value != "") {
			ureg.fname.value = "";
			ureg.fname.focus();
			alert("Please Enter only alphabet in text");
		}
		if (!ureg.mname.value.match(/^[a-zA-Z]+$/) && ureg.mname.value != "") {
			ureg.mname.value = "";
			ureg.mname.focus();
			alert("Please Enter only alphabets in text");
		}
		if (!ureg.lname.value.match(/^[a-zA-Z]+$/) && ureg.lname.value != "") {
			ureg.lname.value = "";
			ureg.lname.focus();
			alert("Please Enter only alphabets in text");
		}
		if (!ureg.address.value.match(/^[a-zA-Z]+$/) && ureg.address.value != "") {
			ureg.address.value = "";
			ureg.address.focus();
			alert("Please Enter only alphabets in text");
		}
	}

	function Validate() {
		var y = document.ureg.mobile.value;

		if (isNaN(y) || y.indexOf(" ") != -1) {

			ureg.mobile.value = "";
			ureg.mobile.focus();
			alert("Enter Only Numeric value");
			return false;
		}
		if (y.length != 10) {
			alert("Enter 10 Number");
			return false;
		}

		if (!y.match(/^[0-9]+$/) && y != "") {
			y = "";
			ureg.mobile.focus();
			alert("Enter only Digits in textbox");
		}

	}

	function validEmail() {
		var mail = document.ureg.email.value;
		if (mail == "") {
			document.ureg.email.focus();
			document.ureg.email = "";
			alert("Enter  Email id");

			return false;
		}
		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail)) {
		} else {
			document.ureg.email.focus();
			document.ureg.email = "";
			alert("Enter Valid Email id");

			return false;
		}
	}

	function validuaernameandpass() {

		var pass = document.ureg.password.value;

		if (pass != "") {
			if (pass.length < 6) {
				alert("Password must contain at least 6 characters!");
				document.ureg.password.focus();
				return false;
			}
		}
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
					<li><a href="index.jsp"><span>Home</span></a></li>
					<li><a href="studentlogin.jsp"><span>Student</span></a></li>
					<li class="selected"><a href="facultylogin.jsp"><span>Faculty</span></a></li>
					<li><a href="#"><span>Contact Us</span></a></li>
					<li><a href="adminlogin.jsp"><span>Admin</span></a></li>
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
					<h2>Faculty Register</h2>
			
					<form action="facultyregister" name="ureg" method="post">
					<table border="30" cellpadding="5" cellspacing="8">
						<tr>
							<td>First Name : </td>
							<td><input type="text" name="fname" onblur="AllowAlphabet()" required /></td>
							<td>Last Name : </td>
							<td><input type="text" name="lname" onblur="AllowAlphabet()" required /></td>
						</tr>
						<tr>
							<td>Gender : </td>
							<td><select name="gender">
							<option value="">---Select---</option>
							<option value="male">Male</option>
							<option value="female">Female</option>
							</select></td>
							<td>Date of Birth : </td>
							<td><input type="date" name="dob" required /></td>
						</tr>
						<tr>
							<td>Email : </td>
							<td><input type="text" name="email" onblur="return validEmail()" required /></td>
							<td>Mobile : </td>
							<td><input type="text" name="mobile" maxlength="10" onblur="return Validate()" required /></td>
						</tr>
						<tr>
							<td>Address : </td>
							<td><input type="text" name="address" onblur="AllowAlphabet()" required /></td>
							<td>Expert : </td>
							<td><select name="course">
							<option value="">---Select---</option>
							<option value="java">Java</option>
							<option value="c">C</option>
							<option value="c++">C++</option>
							</select></td>
						</tr>
						<tr>
						<td>Password : </td>
						<td><input type="password" name="password" onblur="validuaernameandpass()" required /></td>
						<td align="center"><input type="submit" style="height: 45px; width: 120px;" value="Register" class="button" /></td>
						<td align="left"><input type="reset" style="height: 45px; width: 120px;" value="Reset" /></td>
						</tr>
				</table>
			</form>
			
		</div></div>
				</div></div>
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