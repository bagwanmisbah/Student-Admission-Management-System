<%@page import="com.unknown.MyStringRandomGen"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@page import="k_means.JCA"%>
<%@page import="com.sun.org.apache.xpath.internal.compiler.Keywords"%>
<%@page import="k_means.DataPoint"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.unknown.DateDifference"%>
<%@page import="com.util.DbConnection"%>
<%@page import="com.unknown.Suffle"%>
<%@page import="org.eclipse.jdt.internal.compiler.util.SuffixConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Student Management System</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />



<%
String mins = request.getParameter( "mins" );
if( mins == null ) mins = "10";
  
String secs = request.getParameter( "secs" );
if( secs == null ) secs = "1";
%>
<script>
var mins = <%=mins%>; // write mins to javascript
var secs = <%=secs%>; // write secs to javascript
function timer()
{
// tic tac
if( --secs == -1 )
{
secs = 59;
--mins;
} 
// leading zero? formatting
if( secs < 10 ) secs = "0" + secs;             
if( mins < 10 ) mins = "0" + parseInt( mins, 10 );
 
// display
document.forma.mins.value = mins; 
document.forma.secs.value = secs;
 
// continue?
if( secs == 0 && mins == 0 ) // time over
{
	document.forma.submit();
document.forma.ok.disabled = true;
document.formb.results.style.display = "block";
}
else // call timer() recursively every 1000 ms == 1 sec
{
window.setTimeout( "timer()", 1000 );
}
}
</script>
</head>
<body>

<div id="wrapper">
	<div id="menu">
		<ul>
<!-- 			<li><a href="index.jsp">Stop Exam</a></li> -->
		</ul>
		
	</div>
	
	<div id="page">
		<div >
			<div >
			<%
			long flag=0;
			int flag1=0;
			int test_time=0;;
			int c_time=0;
			String date1;
			String time;
			String userid=session.getAttribute("studid").toString();
			String course = session.getAttribute("course").toString();
			String duration = session.getAttribute("duration").toString();
			
			Vector dataPoints = new Vector();
			MyStringRandomGen random = new MyStringRandomGen();
			String x1=random.randomNumber();
			double x = Double.parseDouble(x1);
			String y1 = random.randomNumber();
			double y=Double.parseDouble(y1);
			dataPoints.add(new DataPoint(x,y,course));
			dataPoints.add(new DataPoint(y+3,x+2,duration));
	         JCA jca = new JCA(2,1000,dataPoints);
	         jca.startAnalysis();
	         
	         Vector[] v = jca.getClusterOutput();
	         for (int i=0; i<v.length; i++){
	             Vector tempV = v[i];
	             System.out.println("-----------K-Means----------");
	             Iterator iter = tempV.iterator();
	             while(iter.hasNext()){
	                 DataPoint dpTemp = (DataPoint)iter.next();
	                 System.out.println(dpTemp.getObjName()+"["+dpTemp.getX()+","+dpTemp.getY()+"]");
	             }
	         }
	         
	         
	         
			Connection cn=DbConnection.getConnection();	
			String test="";
			int tcount=0;
			PreparedStatement pp = cn.prepareStatement("select * from studentreg where id=?");
			pp.setString(1, userid);
			ResultSet rr = pp.executeQuery();
			if(rr.next())
			{
				test = rr.getString("test");
				tcount = rr.getInt("tcount");
			}
			if(tcount<Integer.parseInt(duration)){
			if(!test.equals("1"))
			{
				
			PreparedStatement ps = cn.prepareStatement("select * from scheduletest where course=? and duration=?");
			ps.setString(1, course);
			ps.setString(2, duration);
			ResultSet rst=ps.executeQuery();
			
			if(rst.next())
			{
				date1=rst.getString("date1");
				time=rst.getString("time1");
				flag = DateDifference.getDateDifference(date1);
				
				DateFormat df = new SimpleDateFormat("kk:mm");
				Date dateobj = new Date();
				 c_time = Integer.parseInt(df.format(dateobj).replace(":", ""));
				 
				 test_time = Integer.parseInt(time.replace(":", ""));
				System.out.println(test_time+" ==== "+c_time);
				System.out.println("==== "+flag);
				
				
			}
			
			%>
			
			
			<%
			//if(flag>=0 && test_time<=c_time)
				if(true)
			{

Statement st=cn.createStatement();

int qn=0;
String q1="", a="", b="",c="",d="",ans="";

ResultSet rs=st.executeQuery("SELECT * FROM qtable where topic='"+course+"' ORDER BY RAND() LIMIT 10");
int i=1,j=11;
%>
<form action="regans" name="forma" method="post"/>
<div align="center">
<h2>Exam is Started....... Remaining Time:<input type="text" name="mins" size="1" style="border:0px solid black;text-align:right"/> 
<input type="text" name="secs" size="1" style="border:0px solid black"/></h2>		 
		</div>
	</div>

<%
while(rs.next())
{
int[] op={3,4,5,6};
Suffle.shuffleArray(op);
qn=rs.getInt(1);
q1=rs.getString(2);
a=rs.getString(op[0]);
b=rs.getString(op[1]);
c=rs.getString(op[2]);
d=rs.getString(op[3]);
ans=rs.getString("ans");
System.out.println(a+" "+b);
%>

	
	<table>
	<tr height="60px">
	<input type="hidden" name="<%=i %>" value="<%=qn%>">
	<b><input style="background-color: gray;color: white;" type="text"  value="<%=i %> <%= q1%>" name="qestion" id="q1" size="1000"></b>	
	</tr>
	<br></br>
	<tr>
	
	
	<b>a.<input type="radio" name="<%=j%>" value="<%=a%>" ><%=a%><br>
	<b>b.<input type="radio" name="<%=j%>" value="<%=b%>"><%=b%><br>
	<b>c.<input type="radio" name="<%=j%>" value="<%=c%>"><%=c%><br>
	<b>d.<input type="radio" name="<%=j%>" value="<%=d%>"><%=d%><br>
    </tr>
    <br></br>
	</table>
	
	
<% 
i++;
j++;
}
%>
 <div align="center">
<input type="submit" value="Submit" style="width:90px; height:50px;"/>
</div>
</form>
<%
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("stdloginsuc.jsp?check=no");
				rd.forward(request, response);
				
			}
			
			}
			
			else{
				
				response.sendRedirect("studenthome.jsp?already");
			}
			}
		else{
			response.sendRedirect("studenthome.jsp?test");
			}
%>
<script>
<!--
timer();
//-->
</script>


						
			
			</div>
		</div>
	</div>
	<div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"><marquee>Designing a Secure Exam Management System</marquee></p>
      
      <div style="clear:both;"></div>
    </div>
  </div>


</body>
</html>
