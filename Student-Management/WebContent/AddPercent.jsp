<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<style> p.inset {border-style: inset;}</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.5/angular.min.js"></script>
    <script type="text/javascript">
        function TodoCtrl($scope) {
            $scope.total = function () {
                return $scope.x + $scope.y;
            };

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
					<li><a href="studenthome.jsp"><span>Home</span></a></li>
					<li class="selected"><a href="AddPercent.jsp"><span>Add %</span></a></li>
					<li><a href="aggrigate.jsp"><span>Aggregate</span></a></li>
					<li><a href="#"><span>Prediction</span></a></li>
					<!-- <li><a href="chats.jsp"><span>Chat</span></a></li> -->
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
					<h1><b><%=session.getAttribute("fname")%>&nbsp;<%=session.getAttribute("lname")%></b></h1>
					<h1><b><a href="ShowMarks.jsp">Add Your Educational Details Here</a></b></h1>

					<h4 style="color: red">1. &nbsp;All Field Mandutory.</h4>
					<h4 style="color: red">2. &nbsp;Do not Enter % symbol.</h4>
					<h4 style="color: red">3. &nbsp;Decimal number is Allowed.</h4>
					<h4 style="color: red">4. &nbsp;if you have 80 % please Fill
						up with decimal point. eg. 80.00</h4>

					<script src="angular.min.js"></script>
						<div ng-app>
					<form action="EduDetails" name="ureg" method="post">
						<table border="1" cellpadding="5">
						
						<tr>
							<td><b>First Sem</b></td>
							<td>  <input type="number" name="firstsem" ng-model="a" required /></td>
							<td><b>Second Sem</b></td>
							<td>  <input type="number" name="secondsem" ng-model="b" required /></td>
							<td><b> First Year Average</b></td>
							<td> {{ (a + b) / 2 }}</td>
						</tr>
						<tr>
							<td><b>Third Sem</b></td>
							<td>  <input type="number" name="thirdsem" ng-model="c" required /></td>
							<td><b>Forth Sem</b></td>
							<td>  <input type="number" name="fourthsem" ng-model="d" required /></td>
							<td><b>Second Year Average</b></td>
							<td> {{ (c + d) / 2 }}</td>
						</tr>
						<tr>
							<td><b>Fifth Sem</b></td>
							<td>  <input type="number" name="fifthsem" ng-model="p" required /></td>
							<td><b>Six Sem</b></td>
							<td>  <input type="number" name="sixsem" ng-model="q" required /></td>
							<td><b>Third Year Average</b></td>
							<td> {{ (p + q) / 2 }}</td>
						 </tr>
						 <tr>
							<td><b>Seven Sem</b></td>
							<td>  <input type="number" name="sevensem" ng-model="x" /></td>
							<td><b>Eight Sem</b></td>
							<td>  <input type="number" name="eightsem" ng-model="y" /></td>
							<td><b>Final Year Average</b></td>
							<td> {{ (x + y) / 2 }}</td>
						 </tr>
						 <tr>
								<td></td>
								<td></td>
								<td><input type="submit" value="Submit" /></td>
								<td><input type="reset" Value="Reset" /></td>
								<td></td>
								<td></td>
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