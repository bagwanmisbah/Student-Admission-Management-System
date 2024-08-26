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


@WebServlet("/studentlogin")
public class studentlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public studentlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update studentreg set flag='1' where id=?");
			ps.setString(1, id);
			ps.executeUpdate();
			response.sendRedirect("studentinfo.jsp?activate");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			HttpSession session = request.getSession();
			 Connection con = DbConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from studentreg where email=? and password=?");
			 ps.setString(1, email);
			 ps.setString(2, password);
			 ResultSet rs = ps.executeQuery();
			 if(rs.next())
			 {
				 String flag = rs.getString("flag");
				 String expdate = rs.getString("expdate");
			
				 long diff = DateDifference.getDateDifference(expdate);
				 
				 if(flag.equals("1"))
				 {
					 if(diff>=0)
					 {
						 session.setAttribute("studid", rs.getString("id"));
						 session.setAttribute("fname", rs.getString("fname"));
						 session.setAttribute("lname", rs.getString("lname"));
						 session.setAttribute("course", rs.getString("course"));
						 session.setAttribute("email", rs.getString("email"));
						 session.setAttribute("mobile", rs.getString("mobile"));
						 session.setAttribute("gender", rs.getString("gender"));
						 session.setAttribute("dob", rs.getString("dob"));
						 session.setAttribute("duration", rs.getString("duration"));
						 response.sendRedirect("studenthome.jsp?Success");
					 }
					 else
					 {
						response.sendRedirect("studentlogin.jsp?exp"); 
					 }
				 }
				 else
				 {
					 response.sendRedirect("studentlogin.jsp?inactive");
				 }
			 }
			 else
			 {
				 response.sendRedirect("studentlogin.jsp");
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
