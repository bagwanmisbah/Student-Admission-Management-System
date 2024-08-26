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
 * Servlet implementation class scheduletest
 */
@WebServlet("/scheduletest")
public class scheduletest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public scheduletest() {
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
		String course = request.getParameter("course");
		String duration = request.getParameter("duration");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from scheduletest where course=? and duration=? and date1=?");
			ps.setString(1, course);
			ps.setString(2, duration);
			ps.setString(3, date);
			ResultSet rs = ps.executeQuery();
			if(!rs.next())
			{
				PreparedStatement ps1 = con.prepareStatement("insert into scheduletest(course,duration,date1,time1) values(?,?,?,?)");
				ps1.setString(1, course);
				ps1.setString(2, duration);
				ps1.setString(3, date);
				ps1.setString(4, time);
				ps1.executeUpdate();
				
				PreparedStatement ps2 = con.prepareStatement("update studentreg set test='0' where course=? and duration=?");
				ps2.setString(1, course);
				ps2.setString(2, duration);
				ps2.executeUpdate();
				response.sendRedirect("scheduletest.jsp?done");
			}
			else
			{
				response.sendRedirect("scheduletest.jsp?present");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
