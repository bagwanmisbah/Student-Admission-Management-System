package com.unknown;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

/**
 * Servlet implementation class facultyregister
 */
@WebServlet("/facultyregister")
public class facultyregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public facultyregister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String adrress = request.getParameter("address");
		String course = request.getParameter("course");
		String password = request.getParameter("password");
		
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from facultyreg where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if(!rs.next())
			{
				PreparedStatement ps1 = con.prepareStatement("insert into facultyreg(fname,lname,gender,email,mobile,address,password,dob,course) values(?,?,?,?,?,?,?,?,?)");
				ps1.setString(1, fname);
				ps1.setString(2, lname);
				ps1.setString(3, gender);
				ps1.setString(4, email);
				ps1.setString(5, mobile);
				ps1.setString(6, adrress);
				ps1.setString(7, password);
				ps1.setString(8, dob);
				ps1.setString(9, course);
				ps1.executeUpdate();
				response.sendRedirect("facultylogin.jsp");
			}
			else
			{
				response.sendRedirect("facultyregister.jsp?present");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
