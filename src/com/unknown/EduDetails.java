package com.unknown;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


@WebServlet("/EduDetails")
public class EduDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;


	public void init(ServletConfig config) throws ServletException 
	{
		try
		{
			con = DbConnection.getConnection();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String firstsem=request.getParameter("firstsem");
		String secondsem=request.getParameter("secondsem");
		double a=Integer.parseInt(firstsem);
		double b=Integer.parseInt(firstsem);
		
		double fyear=(a+b)/2;	
		System.out.println("first year aggrigate is ="+fyear);
		
		String thirdsem=request.getParameter("thirdsem");
		String fourthsem=request.getParameter("fourthsem");
		double c=Integer.parseInt(thirdsem);
		double d=Integer.parseInt(fourthsem);
		double syear=(c+d)/2;
		System.out.println("first year aggrigate is ="+syear);
		
		String fifthsem=request.getParameter("fifthsem");
		String sixsem=request.getParameter("sixsem");
		double p=Integer.parseInt(fifthsem);
		double q=Integer.parseInt(sixsem);
		double tyear=(p+q)/2;
		System.out.println("first year aggrigate is ="+tyear);
		
		String sevensem=request.getParameter("sevensem");
		String eightsem=request.getParameter("eightsem");
		double x=Integer.parseInt(sevensem);
		double y=Integer.parseInt(eightsem);
		double fryear=(x+y)/2;
		System.out.println("first year aggrigate is ="+fryear);
		
		double agg=(fyear+syear+tyear+fryear)/4;
		System.out.println("Aggrigate is "+agg);

		HttpSession session=request.getSession();
		String fname=session.getAttribute("fname").toString();
		
		try 
		{
			ps=con.prepareStatement("INSERT INTO `clgadmission`.`education_detail` (`ed_id`, `stud_uname`, `firstsem`, `secondsem`, `fyear`, `thirdsem`, `fourthsem`, `syear`, `fifthsem`, `sixsem`, `tyear`, `sevensem`, `eightsem`, `fryear`, `aggrigate`)"
					+ "														 VALUES (NULL, '"+fname+"', '"+firstsem+"', '"+secondsem+"', '"+fyear+"', '"+thirdsem+"', '"+fourthsem+"','"+syear+"','"+fifthsem+"', '"+sixsem+"','"+tyear+"','"+sevensem+"','"+eightsem+"', '"+fryear+"','"+agg+"')");
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println("Ragistration successfull");
				response.sendRedirect("extra_activity.jsp?added");
				
				
			}
			else
			{
				System.out.println("Ragistration failed");
				response.sendRedirect("addPercentage.jsp?notAdd");
				
			}
		}
		
		catch(Exception e1)
		{
			System.out.println("Exception "+e1);
		}
	}

}
