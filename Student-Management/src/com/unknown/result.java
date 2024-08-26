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
 * Servlet implementation class result
 */
@WebServlet("/result")
public class result extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public result() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String fullname = request.getParameter("fullname");
		GlobalFunction GF = new GlobalFunction();
		try {
			int total=0;
			Connection con = DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from result where stdid=?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				String marks = rs.getString("marks");
				//total = total + Integer.parseInt(marks);
				
				System.out.println("Marks :"+marks);
				
				Mailer mail = new Mailer();
				//String marks = null;
				String Msg = "Your Total Marks is = "+marks+"..";
				int res=mail.EmailSending(email, "Course Report", Msg);
				if(res>0)
				{
					response.sendRedirect("facultyhome.jsp?send");
				}
				else
				{
					response.sendRedirect("result.jsp?fail=fail&id="+id+"&fullname="+fullname+"email="+email);
				}
			}
			
			//int outof = GF.getDuration(id)*10;
			/*int marks = 0;
			float score = (marks/10)*100;
			System.out.println("Score is: "+score);
			System.out.println("Marks is: "+marks);
			String status="";
			if(score>=80)
			{
				status = "Expert";
			}
			else if(score<80 && score>=60)
			{
				status = "Good";
			}
			else if(score<40)
			{
				status = "Average";
			}*/
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
