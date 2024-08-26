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


@WebServlet("/ExamForm")
public class ExamForm extends HttpServlet {
	
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
		
		String cast = request.getParameter("cast");
		String year = request.getParameter("year");
		String branch = request.getParameter("branch");
		String fees = request.getParameter("fees");
		
		try 
		{
			ps=con.prepareStatement("INSERT INTO `clgadmission`.`examForm` (`id`, `fname`, `lname`, `gender`, `dob`, `email`, `mobile`, `cast`, `year`, `branch`, `fees`) VALUES (NULL, '"+fname+"', '"+lname+"', '"+gender+"', '"+dob+"', '"+email+"', '"+mobile+"', '"+cast+"', '"+year+"', '"+branch+"', '"+fees+"')");
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println("Ragistration successfull");
				response.sendRedirect("studenthome.jsp?add");		
			}
			else
			{
				System.out.println("Ragistration failed");
				response.sendRedirect("ExamForm.jsp?regFail");
			}
		}
		
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}
}