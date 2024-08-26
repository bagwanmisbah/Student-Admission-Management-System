package com.unknown;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;


@WebServlet("/studentregister")
public class studentregister extends HttpServlet {
	
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String adrress = request.getParameter("address");
		String course = request.getParameter("course");
		String duration = request.getParameter("duration");
		String password = request.getParameter("password");
		
		try 
		{
			ps=con.prepareStatement("INSERT INTO `clgadmission`.`studentreg` (`id`, `fname`, `lname`, `gender`, `dob`, `email`, `mobile`, `address`, `course`, `duration`, `password`) VALUES (NULL, '"+fname+"', '"+lname+"', '"+gender+"', '"+dob+"', '"+email+"', '"+mobile+"', '"+adrress+"', '"+course+"', '"+duration+"', '"+password+"')");
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println("Ragistration successfull");
				response.sendRedirect("studentlogin.jsp?regDone");		
			}
			else
			{
				System.out.println("Ragistration failed");
				response.sendRedirect("studentregister.jsp?regFail");
			}
		}
		
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}
}