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


@WebServlet("/ExtraActivity")
public class ExtraActivity extends HttpServlet {
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
		
		String branch=request.getParameter("branch");
		System.out.println(branch);
		String Certification=request.getParameter("Certification");
		System.out.println(Certification);
		String programming_skill=request.getParameter("programming_skill");
		System.out.println(programming_skill);
		String lang_known=request.getParameter("lang_known");
		System.out.println(lang_known);
		String hobbies=request.getParameter("hobbies");
		System.out.println(hobbies);

		HttpSession session=request.getSession();
		String fname=session.getAttribute("fname").toString();
		
		try 
		{
			ps=con.prepareStatement("INSERT INTO `clgadmission`.`extra_skill` (`id`, `stud_uname`, `branch`, `Certification`, `programming_skill`, `lang_known`, `hobbies`)"
					+ "														 VALUES (NULL, '"+fname+"', '"+branch+"', '"+Certification+"', '"+programming_skill+"', '"+lang_known+"', '"+hobbies+"')");
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println("Add Course Details successfull");
				response.sendRedirect("aggrigate.jsp?added");	
			}
			else
			{
				System.out.println("Ragistration failed");
				response.sendRedirect("extra_activity.jsp?notAdd");
				
			}
		}
		
		catch(Exception e1)
		{
			System.out.println("Exception "+e1);
		}
	}
}
