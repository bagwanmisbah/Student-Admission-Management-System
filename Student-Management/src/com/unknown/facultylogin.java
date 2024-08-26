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
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


@WebServlet("/facultylogin")
public class facultylogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public facultylogin() {
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			HttpSession session = request.getSession();
			 Connection con = DbConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from facultyreg where email=? and password=?");
			 ps.setString(1, email);
			 ps.setString(2, password);
			 ResultSet rs = ps.executeQuery();
			 if(rs.next())
			 {
				 String flag = rs.getString("flag");
				 if(flag.equals("1"))
				 {
				 session.setAttribute("userid", rs.getString("id"));
				 session.setAttribute("course", rs.getString("course"));
				 session.setAttribute("fname", rs.getString("fname"));
				 session.setAttribute("lname", rs.getString("lname"));
				 //session.setAttribute("duration", rs.getString("duration"));
				 
				 response.sendRedirect("facultyhome.jsp?login");
			 
				 }
				 else{
					 response.sendRedirect("facultylogin.jsp?inactive");
				 }
			 }
			 else
			 {
				 response.sendRedirect("facultylogin.jsp?invalid");
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
