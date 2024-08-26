package com.unknown;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update facultyreg set flag='1' where id=?");
			ps.setString(1, id);
			ps.executeUpdate();
			response.sendRedirect("facultyinfo.jsp?activate");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("admin"))
		{
			response.sendRedirect("adminhome.jsp?Done");
		}
		else
		{
			response.sendRedirect("adminlogin.jsp?Fal");
		}
	}

}
