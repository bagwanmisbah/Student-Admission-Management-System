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

import com.util.DbConnection;


@WebServlet("/AddCourse")
public class AddCourse extends HttpServlet {
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
			
			String cname=request.getParameter("cname");
			String duration=request.getParameter("duration");
			String dept=request.getParameter("dept");
			String beagg=request.getParameter("beagg");
			String cmat=request.getParameter("cmat");
			
			try 
			{
				ps=con.prepareStatement("INSERT INTO `securelearning`.`course` (`course_name`, `duration`, `dept`, `agg`, `link`) VALUES ('"+cname+"', '"+duration+"', '"+dept+"', '"+beagg+"', '"+cmat+"')");
				int result=ps.executeUpdate();
				 
				if (result > 0)
				{
					System.out.println("Add Course Details successfull");
					response.sendRedirect("adminhome.jsp?add=done");
					
					
				}
				else
				{
					System.out.println("Add Details failed");
					response.sendRedirect("addCourse.jsp?fail=done");
				}
			}
			
			catch(Exception e1)
			{
				e1.printStackTrace();
			}

			
		}

	}
