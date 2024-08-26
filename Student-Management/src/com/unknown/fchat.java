package com.unknown;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;

/**
 * Servlet implementation class schat
 */
@WebServlet("/fchat")
public class fchat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       String tablename = "fchat";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fchat() {
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
		String chat = request.getParameter("chat");
		String stdid = request.getParameter("sid");
		
		HttpSession session = request.getSession();
		String fid = session.getAttribute("userid").toString();
		
		try {
		/*	Connection con = DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into fchat(fid,stdid,chat) values(?,?,?)");
			ps.setString(1, fid);
			ps.setString(2, stdid);
			ps.setString(3, chat);
			ps.executeUpdate();*/
			
			int p = SentimentClassification.PositiveFeedback(chat.trim());
			int n = SentimentClassification.NegativeFeedback(chat.trim());
			//System.out.println("p= "+p+" n= "+n);
			
			String st = "";
			//System.out.println(status.trim());
			if((p==2 && n==2) || (p==1 && n==1))
			{
				st="positive";
				SentimentClassification.InsertData(stdid, fid, chat, st, tablename);
			}
			else if((p==2 && n==1) || p==2)
			{
				st = "negative";
				SentimentClassification.InsertData(stdid, fid, chat, st, tablename);
			}
			else if((n==2 && p==1) || n==2)
			{
				st = "positive";
				SentimentClassification.InsertData(stdid, fid, chat, st, tablename);
			}
			 
			else if(p==1)
			{
				st="positive";
				SentimentClassification.InsertData(stdid, fid, chat, st, tablename);
			}
			else if(n==1)
			{
				st="negative";
				SentimentClassification.InsertData(stdid, fid, chat, st, tablename);
			}
			else
			{
				st="positive";
				SentimentClassification.InsertData(stdid, fid, chat, st, tablename);
			}
			
			response.sendRedirect("chatf1.jsp?sid="+stdid);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
