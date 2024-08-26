<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<head>
<meta charset="utf-8" />
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
</head>
<body>
<%
		if (request.getParameter("added") != null) {
			out.println("<script>alert('Your Education Details Added Successfuly..!')</script>");
		}
	%>
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo11.jpg" alt="" /></a>		
			</div>		
			<ul>
				<li class="selected"><a href="index.jsp"><span>Home</span></a></li>
				<li><a href="addPercentage.jsp">Add %</a></li>
				<li><a href="aggrigate.jsp">Aggrigate Details</a></li>
				<li><a href="verifyProfile.jsp">Verify Profile</a></li>
				<li><a href="index.jsp"><span>Logout</span></a></li>			
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
		</div>
		
		
		<div class="page-section">
		<div class="page">
			<div class="left-section">
				<div class="panel">

					<div align="center">
						<h1><b>Extra Key Skills</b></h1>
						<form action="ExtraActivity" name="ureg" method="post">
							<table border="5" cellpadding="5" cellspacing="8">
								<tr>
									<td align="center"><b>Branch</b></td>
									<td><input type="text" name="branch" id="branch"
										placeholder="Enter Banch" style="height: 28px"
										onblur="AllowAlphabet()" required /></td>
								</tr>
								<tr>
									<td align="center"><b>Certification</b></td>
									<td><input type="text" name="Certification" id="Certification"
										placeholder="Enter Certification" style="height: 28px" required /></td>
								</tr>
								<tr>
									<td align="center"><b>Extra Skill/Languages</b></td>
									<td><input type="text" name="programming_skill" id="programming_skill"
										placeholder="Enter Skills" style="height: 28px" required /></td>
								</tr>
								<tr>
									<td align="center"><b>Languages Known</b></td>
									<td><input type="text" name="lang_known" id="lang_known"
										placeholder="Languages Known" style="height: 28px" required /></td>
								</tr>
								<tr>
									<td align="center"><b>Hobbies</b></td>
									<td><input type="text" name="hobbies" id="hobbies"
										placeholder="Hobbies" style="height: 28px" required /></td>
								</tr>
								<tr>
									<td align="center"><input type="submit"
										style="height: 45px; width: 120px;" value="Add Record"></td>
									<td align="left"><input type="reset"
										style="height: 45px; width: 120px;" value="Reset"></td>
								</tr>
							</table>
						</form>
					</div>
					<br /> <br />
					<div class="body">
					<!-- <img src="images/tnpbanner.jpg" alt="" height="200px" width="850px" /> -->					
					</div>
					<div class="controller">
						<div class="button"></div>
					</div>
				</div>
			</div>
		</div>
				
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
				<a class="facebook" href="http://facebook.com/freewebsitetemplates" target="_blank">facebook</a>		
				<a class="twitter" href="http://twitter.com/fwtemplates" target="_blank">twitter</a>
			</div>	
		</div>
		<div>
			<p>&copy Copyright 2016. All rights reserved by Santosh</p>
		</div>
	</div>
</body>
</html>





<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>DataForensicAnalysis</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Playfair+Display'
	rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css' />
</head>

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

	}

	function Validate() {
		var y = document.ureg.mbnumber.value;

		if (isNaN(y) || y.indexOf(" ") != -1) {

			ureg.mbnumber.value = "";
			ureg.mbnumber.focus();
			alert("Enter Only Numeric value");
			return false;
		}
		if (y.length != 10) {
			alert("Enter 10 Number");
			return false;
		}

		if (!y.match(/^[0-9]+$/) && y != "") {
			y = "";
			ureg.mbnumber.focus();
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

		var pass = document.ureg.passwords.value;

		if (pass != "") {
			if (pass.length < 6) {
				alert("Password must contain at least 6 characters!");
				document.ureg.password.focus();
				return false;
			}
		}
	}
</script>



<body>
	<%
		if (request.getParameter("fail") != null) {
			out.println("<script>alert('Registration Fails !')</script>");
		}
	%>

	<div class="header-section">
		<div class="header">

			<h1>Role of Metadata in Forensics Analysis of Database Attacks</h1>


		</div>
	</div>
	<!---------end-of-header--------->
	<div class="bannner-section">
		<div class="banner-title-section">
			<div class="banner-title">
				<div class="menu">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<div class="banner-row">
			<div class="banner">
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	<!--------------banner-section----------->
	<div class="page-section">
		<div class="page">
			<div class="left-section">
				<div class="panel">

					<div align="center">
						<h3>User Registration</h3>
						<br />
						<form action="UserRegistration" name="ureg" method="post">

							<table border="0" cellpadding="5" cellspacing="8">
								<tr>
									<td>User Name</td>
									<td><input type="text" name="fname" id="fname"
										placeholder="First Name" style="height: 28px"
										onblur="AllowAlphabet()" required /></td>
									<td><input type="text" name="mname" id="mname"
										placeholder="Middle Name" style="height: 28px"
										onblur="AllowAlphabet()" required /></td>
									<td><input type="text" name="lname" id="lname"
										placeholder="Last Name" style="height: 28px"
										onblur="AllowAlphabet()" required /></td>

								</tr>
								<tr>
									<td>Date Of Birth</td>
									<td><input type="text" name="dob" id="dob"
										style="height: 28px" placeholder="DD / MM / YYYY" required /></td>
									<td align="center">Gender</td>
									<td><input type="radio" name="gender" value="Male" />&nbsp;&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="radio" name="gender" value="Female" />&nbsp;&nbsp;Female</td>
								</tr>
								<tr>
									<td>Address</td>
									<td><input type="text" name="address" id="address"
										style="height: 28px" placeholder="Address" required /></td>

								</tr>
								<tr>
									<td>Mobile Number</td>
									<td><input type="text" name="mbnumber" id="mbnumber"
										style="height: 28px" placeholder="Enter only 10 Digit"
										onblur="return Validate()" required /></td>
									
								</tr>

								<%
									Date current = new Date();
									Calendar cal = Calendar.getInstance();

									SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

									String formatted = format1.format(cal.getTime());
									System.out.println("Application date " + formatted);

									cal.set(Calendar.MONTH, (cal.get(Calendar.MONTH) + 1));

									String formatted1 = format1.format(cal.getTime());

									System.out.println("fst mnt " + formatted1);

									cal.set(Calendar.MONTH, (cal.get(Calendar.MONTH) + 1));

									String formatted2 = format1.format(cal.getTime());

									System.out.println("2nd mnth " + formatted2);

									cal.set(Calendar.MONTH, (cal.get(Calendar.MONTH) + 1));

									String formatted3 = format1.format(cal.getTime());

									System.out.println("3rd mnth " + formatted3);

									cal.set(Calendar.MONTH, (cal.get(Calendar.MONTH) + 1));

									String formatted4 = format1.format(cal.getTime());

									System.out.println("4th mnth " + formatted4);

									cal.set(Calendar.MONTH, (cal.get(Calendar.MONTH) + 1));

									String formatted5 = format1.format(cal.getTime());

									System.out.println("5th mnth " + formatted5);

									cal.set(Calendar.MONTH, (cal.get(Calendar.MONTH) + 1));

									String formatted6 = format1.format(cal.getTime());

									System.out.println("6th mnth " + formatted6);

									/* Date date = new Date();
									 SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss");

									 String Addeddate = sdf.format(date);

									 Addeddate = sdf.format(date);
									 System.out.println("formatted date in mm-dd-yyyy hh:mm:ss : " + Addeddate);

									 */
								%>

								<tr>
									<td>Cource Name</td>
									<td><input type="text" name="cource" id="cource"
										style="height: 28px" ; placeholder="Cource Name" required /></td>
									<td align="center">Application Date</td>
									<td><input type="text" name="appdate" id="appdate"
										value="<%=formatted%>" readonly="readonly"
										style="height: 28px" ; placeholder="Cource Name" required /></td>
									<input type="hidden" id="incrdate" name="incrdate"
										value="<%=formatted1%>"></input>
								</tr>


								<tr />
								<tr>
									<!-- <td>Username</td>
									<td><input type="text" name="uname" id="uname"
										style="height: 28px" placeholder="Username" required /></td> -->
										<td align="center">Email ID</td>
									<td><input type="text" name="email" id="email"
										style="height: 28px; width: 160px"
										placeholder="Enter E-mail ID" onblur="return validEmail()"
										required /></td>x
										
									<td align="center">Password</td>
									<td><input type="password" name="pwd" id="pwd"
										style="height: 28px" placeholder="password > 6 " required /></td>
								</tr>
								<tr>
									<td><input type="hidden" name="fstlvl" id="fstlvl"
										value="<%=formatted1%>" /><input type="hidden" name="sndlvl"
										id="sndlvl" value="<%=formatted2%>" /><input type="hidden"
										name="thrdlvl" id="thrdlvl" value="<%=formatted3%>" /><input
										type="hidden" name="frthlvl" id="frthlvl"
										value="<%=formatted4%>" /><input type="hidden" name="fifthlvl"
										id="fifthlvl" value="<%=formatted5%>" /><input type="hidden"
										name="sixlvl" id="sixlvl" value="<%=formatted6%>" /></td>
								</tr>

								<tr />

								<tr>
									<td></td>
									<td align="center"><input type="submit"
										style="height: 45px; width: 120px;" value="Registration"></td>
									<td></td>
									<td align="left"><input type="reset"
										style="height: 45px; width: 120px;" value="Reset"></td>

								</tr>
							</table>
						</form>
					</div>
					<br /> <br />
					<div class="controller">
						<div class="button"></div>
					</div>
				</div>
			</div>


		</div>
		<!----------------left-section------------->
		<div class="clear"></div>

		<div class="clear"></div>
	</div>
	<!--------------------right-section------------>
	<div class="clear"></div>
	<!----------page-section----------------->
	<div class="clear"></div>
	<div class="footer-section">
		<div class="footer">
		<br/><center>@Copyright  2016. <!-- Do not remove -->Designed by Student</center>
			<div class="clear"></div>
		
		</div>
	</div>
	<!---------------end-footer-section---------------->
</body>
</html> --%>