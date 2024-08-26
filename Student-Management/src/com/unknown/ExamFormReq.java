package com.unknown;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;

public class ExamFormReq extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ExamFormReq() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String fname=session.getAttribute("fname").toString();
		String email=request.getParameter("email");
		System.out.println("Username:= "+fname +"Email:= "+email);
		
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update examform set uploadby='"+fname+"', status='Accepted' where email=?");
			ps.setString(1, email);
			ps.executeUpdate();
			response.sendRedirect("fstudentinfo.jsp?Update");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
