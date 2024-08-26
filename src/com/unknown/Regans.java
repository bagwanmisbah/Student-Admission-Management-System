package com.unknown;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import com.util.DbConnection;

import java.sql.*;
/**
 * Servlet implementation class Regans
 */
@WebServlet("/regans")
public class Regans extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Regans() {
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
		int marks=0;
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		Connection cn=DbConnection.getConnection();
		String stdid=session.getAttribute("studid").toString();
		out.println("<h2>hello</h2>");
		int q1=Integer.parseInt(request.getParameter("1"));
		String a1=request.getParameter("11");
		int q2=Integer.parseInt(request.getParameter("2"));
		String a2=request.getParameter("12");
		int q3=Integer.parseInt(request.getParameter("3"));
		String a3=request.getParameter("13");
		int q4=Integer.parseInt(request.getParameter("4"));
		String a4=request.getParameter("14");
		int q5=Integer.parseInt(request.getParameter("5"));
		String a5=request.getParameter("15");
		int q6=Integer.parseInt(request.getParameter("6"));
		String a6=request.getParameter("16");
		int q7=Integer.parseInt(request.getParameter("7"));
		String a7=request.getParameter("17");
		int q8=Integer.parseInt(request.getParameter("8"));
		String a8=request.getParameter("18");
		int q9=Integer.parseInt(request.getParameter("9"));
		String a9=request.getParameter("19");
		int q10=Integer.parseInt(request.getParameter("10"));
		String a10=request.getParameter("20");
		System.out.println(q1+"  "+a1);
		System.out.println(q2+"  "+a2);
		System.out.println(q3+"  "+a3);
		System.out.println(q4+"  "+a4);
		System.out.println(q5+"  "+a5);
		System.out.println(q6+"  "+a6);
		System.out.println(q7+"  "+a7);
		System.out.println(q8+"  "+a8);
		System.out.println(q9+"  "+a9);
		System.out.println(q10+"  "+a10);
		//-----------------------------------------------------------------
		try {
			PreparedStatement st=cn.prepareStatement("insert into ans values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			st.setString(1,stdid);
			st.setInt(2,q1);
			st.setInt(3,q2);
			st.setInt(4,q3);
			st.setInt(5,q4);
			st.setInt(6,q5);
			st.setInt(7,q6);
			st.setInt(8,q7);
			st.setInt(9,q8);
			st.setInt(10,q9);
			st.setInt(11,q10);
			st.setString(12,a1);
			st.setString(13,a2);
			st.setString(14,a3);
			st.setString(15,a4);
			st.setString(16,a5);
			st.setString(17,a6);
			st.setString(18,a7);
			st.setString(19,a8);
			st.setString(20,a9);
			st.setString(21,a10);
			st.executeUpdate();
		
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		System.out.println("---------------------------------------------------------");
		//----------------------------------------------------------------------------
		try {
			PreparedStatement stmt=cn.prepareStatement("select ans from qtable where qno=?");
			stmt.setInt(1,q1);
			ResultSet rst1=stmt.executeQuery();
			if(rst1.next() && a1!=null)
			{
				if(a1.equalsIgnoreCase(rst1.getString(1)))
				{
					marks++;
				}
			}
			//-----------------------------
			stmt.setInt(1,q2);
			ResultSet rst2=stmt.executeQuery();
			if(rst2.next() && a2!=null)
			{
				if(a2.equalsIgnoreCase(rst2.getString(1)))
				{
					marks++;
				}
			}
			//-----------------------------
			stmt.setInt(1,q3);
			ResultSet rst3=stmt.executeQuery();
			if(rst3.next() && a3!=null)
			{
				if(a3.equalsIgnoreCase(rst3.getString(1)))
				{
					marks++;
				}
			}
			//-----------------------------
			stmt.setInt(1,q4);
			ResultSet rst4=stmt.executeQuery();
			if(rst4.next() && a4!=null)
			{
				if(a4.equalsIgnoreCase(rst4.getString(1)))
				{
					marks++;
				}
			}
			//-----------------------------
			stmt.setInt(1,q5);
			ResultSet rst5=stmt.executeQuery();
			if(rst5.next() && a5!=null)
			{
				if(a5.equalsIgnoreCase(rst5.getString(1)))
				{
					marks++;
				}
			}
			//-----------------------------
			stmt.setInt(1,q6);
			ResultSet rst6=stmt.executeQuery();
			if(rst6.next() && a6!=null)
			{
				if(a6.equalsIgnoreCase(rst6.getString(1)))
				{
					marks++;
				}
			}
			//-----------------------------
			stmt.setInt(1,q7);
			ResultSet rst7=stmt.executeQuery();
			if(rst7.next() && a7!=null)
			{
				if(a7.equalsIgnoreCase(rst7.getString(1)))
				{
					marks++;
				}
			}
			//-----------------------------
			stmt.setInt(1,q8);
			ResultSet rst8=stmt.executeQuery();
			if(rst8.next() && a8!=null)
			{
				if(a8.equalsIgnoreCase(rst8.getString(1)))
				{
					marks++;
				}
			}
			//-----------------------------
			stmt.setInt(1,q9);
			ResultSet rst9=stmt.executeQuery();
			if(rst9.next() && a9!=null)
			{
				if(a9.equalsIgnoreCase(rst9.getString(1)))
				{
					marks++;
				}
			}
			//-----------------------------
			stmt.setInt(1,q10);
			ResultSet rst10=stmt.executeQuery();
			if(rst10.next() && a10!=null)
			{
				if(a10.equalsIgnoreCase(rst10.getString(1)))
				{
					marks++;
				}
			}
			//-----------marksssssssssssssssssssss------------------
			System.out.println(marks);
			
			
			
						
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		//---------------------------------------------------------------
		try {
			Statement stm=cn.createStatement();
			ResultSet rsm=stm.executeQuery("select * from studentreg where id="+stdid);
			if(rsm.next())
			{
				String email=rsm.getString("email");
				String p1="Student Id: ";
				String p2=String.valueOf(stdid);
				String p3="Score: "+marks+" out of 10";
				String p4=p1+p2+"<br>"+p3;
				Mailer.EmailSending(email, "Your Score of Exam",p4);
				
				PreparedStatement pp1 = cn.prepareStatement("insert into result(stdid,marks) values(?,?)");
				pp1.setString(1, stdid);
				pp1.setString(2, Integer.toString(marks));
				pp1.executeUpdate();
			}
			
			PreparedStatement pp = cn.prepareStatement("update studentreg set test='1',tcount=tcount+1 where id=?");
			pp.setString(1, stdid);
			pp.executeUpdate();
			
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		RequestDispatcher rd=request.getRequestDispatcher("examover.jsp");
		rd.forward(request,response);
		
		
	}

}
