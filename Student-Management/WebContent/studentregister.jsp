<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<style> p.inset {border-style: inset;}</style>

<script>
function AllowAlphabet() {
    if (!ureg.fname.value.match(/^[a-zA-Z]+$/)
            && ureg.fname.value != "") {
    	ureg.fname.value = "";
    	ureg.fname.focus();
        alert("Please Enter only alphabet in text");
    }
    
    if (!ureg.lname.value.match(/^[a-zA-Z]+$/) 
    		&& ureg.lname.value != "") {
    	ureg.lname.value = "";
    	ureg.lname.focus();
        alert("Please Enter only alphabets in text");
    }
    
    if (!ureg.address.value.match(/^[a-zA-Z]+$/)
            && ureg.address.value != "") {
    	ureg.address.value = "";
    	ureg.address.focus();
        alert("Please Enter only alphabet in text");
    }
}

function Validate()
{ 
    var y = document.ureg.mobile.value;
   
   if(isNaN(y)||y.indexOf(" ")!=-1)
   {
	   
	   ureg.mobile.value="";
	   ureg.mobile.focus();
      alert("Enter numeric value");
      return false;
   }
    if (ureg.mobile.value.length!=10)
   {
        alert("enter 10 digits");
        return false;
   } 
   
   if (!y.match(/^[0-9]+$/) 
   		&& y != "") {
   	y = "";
   	ureg.mobile.focus();
       alert("Please Enter only Digits in text");
   }
}

function validEmail() {
	var mail=document.ureg.email.value;
	if(mail== ""){
        alert("Enter mailid");
        document.ureg.email.focus();
        return false;
    }
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))  
    {  
    }else{
    	alert("Enter Valid mailid");
    	 document.ureg.email.focus();
       return false;
	}
}

function validateDOB()
{
    var dob = document.ureg.dob.value;
    var pattern = /^([0-9]{2})-([0-9]{2})-([0-9]{4})$/;
    if (dob == null || dob == "" || !pattern.test(dob)) {
        alert( "Invalid date of birth\n");
        return false;
    } 
}
</script>

</head>
<body>
<%
if(request.getParameter("regFail")!=null)
{
	out.println("<script>alert('Registration Fail......!!')</script>");
}

%>
<br>
	<div id="header">
			<div id="logo">
				<a href="index.jsp"><img src="images/logo2.png" alt="" /></a>		
			</div>		
				<ul>
					<li><a href="index.jsp"><span>Home</span></a></li>
					<li class="selected"><a href="studentlogin.jsp"><span>Login</span></a></li>
					<li><a href="adminlogin.jsp"><span>Admin</span></a></li>
					<li><a href="#"><span>About us</span></a></li>
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
						<h2>USER REGISTRATION</h2>
						<form action="studentregister" name="ureg" method="post">
							<table border="30" cellpadding="5" cellspacing="8">
							<tr>
								<td>First Name : </td>
								<td><input type="text" name="fname" onblur="AllowAlphabet"  required /></td>
								<td>Last Name : </td>
								<td><input type="text" name="lname" onblur="AllowAlphabet" required /></td>
							</tr>
							<tr>
								<td>Gender : </td>
								<td><select name="gender" required>
								<option value="">---Select---</option>
								<option value="male">Male</option>
								<option value="female">Female</option>
								</select></td>
								<td>Date of Birth : </td>
								<td><input type="date" name="dob" required /></td>
							</tr>
							<tr>
								<td>Email : </td>
								<td><input type="email" name="email" onblur="validEmail()" required /></td>
								<td>Mobile : </td>
								<td><input type="text" name="mobile" maxlength="10" onblur="Validate()" required /></td>
							</tr>
							<tr>
								<td>Address : </td>
								<td><input type="text" name="address" onblur="AllowAlphabet" required /></td>
								<td>Course : </td>
								<td><select name="course" required >
								<option value="">---Select---</option>
								<option value="java">Java</option>
								<option value="c">C</option>
								<option value="c++">C++</option>
								</select></td>
							</tr>
							<tr>
								<td>Duration : </td>
								<td><select name="duration" required >
								<option value="">---Select---</option>
								<option value="3">3 Months</option>
								<option value="6">6 Months</option>	
								</select></td>
								<td>Password : </td>
								<td><input type="password" name="password" required /></td>
							</tr>
							<tr>
								<td></td>
								<td align="center"><input type="submit" style="height: 45px; width: 120px;" value="Register" class="button"></input></td>
								<td align="left"><input type="reset" style="height: 45px; width: 120px;" value="Reset"></input></td>
								<td></td>
							</tr>
						</table>
					</form>
					</div></div></div></div>
					<br /><br />
			<div class="body">
				<!-- <img src="img/learn.jpg" alt="" height="200px" width="850px" />	 -->				
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