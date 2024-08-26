package com.unknown;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.util.DbConnection;

@WebServlet("/schat")
public class schat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       String tablename = "schat";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public schat() {
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
		String fid = request.getParameter("fid");
		
		HttpSession session = request.getSession();
		String stdid = session.getAttribute("studid").toString();
		
		
		try {
			/*	Connection con = DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into schat(stdid,fid,chat) values(?,?,?)");
			ps.setString(1, stdid);
			ps.setString(2, fid);
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
			
			response.sendRedirect("chats1.jsp?fid="+fid);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
