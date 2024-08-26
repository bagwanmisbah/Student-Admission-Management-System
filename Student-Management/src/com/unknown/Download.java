package com.unknown;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


@WebServlet("/Download")
public class Download extends HttpServlet 
{
	Connection con=null;

	public void init(ServletConfig config) throws ServletException 
	{
		try {
			con=DbConnection.getConnection();
			
		} catch (Exception e) 
		{
			System.out.println("Exception Download Connection "+con);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
				
		String filename=request.getParameter("filename");
		String hallticket=request.getParameter("hallticket");
		System.out.println("file name"+filename + ""+hallticket);
		
		String filepath="D:\\TestWorkspace\\ClgAdmission\\WebContent\\upload\\";
		
		//String filepath = DbConnection.path+"\\";
		
		BufferedReader br = new BufferedReader(new FileReader(filepath+filename));
        
        StringBuilder sb = new StringBuilder();
        String line = br.readLine();

        while (line != null) 
        {
            sb.append(line);
            sb.append(System.lineSeparator());
            line = br.readLine();
        }
        
        String encData = sb.toString();
        
         try 
         {
        	long startDT=System.currentTimeMillis();
			Thread.sleep(2000);
			long endtimeDT = System.currentTimeMillis();
			long DecryptTime = endtimeDT-startDT;                          			
			
			   System.out.println("Write done");
			
		} catch (Exception e) 
		{
			System.out.println("Downlaod Time Exception "+e);
		}

        // display  
        response.setContentType("");   
 		response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");
 		PrintWriter out = response.getWriter();
 		//FileInputStream fileInputStream = new FileInputStream(DbConnection.path+"\\"+filename);
 		FileInputStream fileInputStream = new FileInputStream("D:\\TestWorkspace\\ClgAdmission\\WebContent\\upload\\"+filename);
		int i;   
		while ((i=fileInputStream.read()) != -1) 
		{  
		out.write(i);   
		}   
		fileInputStream.close();   
		out.close(); 	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	}
}
