package com.unknown;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.util.DbConnection;


@WebServlet("/HallTickets")
public class HallTickets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con = null;
	final String UPLOAD_DIRECTORY = "D:\\TestWorkspace\\ClgAdmission\\WebContent\\upload";
	String semester;
	String email;
	
	public void init(ServletConfig config) throws ServletException {
		try {
			con = DbConnection.getConnection();

		} catch (Exception e) {

			System.out.println("Exception in DB" + e);
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (ServletFileUpload.isMultipartContent(request)) 
		{
			try 
			{
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				System.out.println("ABCD");
				String FileName = "";
				String FileExtention = "";
				long FileSize = 0;

				for (FileItem item1 : multiparts) 
				{
					if (!item1.isFormField()) 
					{
						System.out.println("4");
						String name = new File(item1.getName()).getName();
						item1.write(new File(UPLOAD_DIRECTORY + File.separator+ name));
						FileName = item1.getName();
						FileExtention = item1.getContentType();
						FileSize = item1.getSize();
					}
				}

				
				for (FileItem item : multiparts) 
				{
					if ((item.getFieldName()).equals("semester")) 
					{
						semester = (String) item.getString();
					}
					if ((item.getFieldName()).equals("email")) 
					{
						email = (String) item.getString();
					}
					
				}
				
				System.out.println("FileName " + FileName);
				System.out.println("File Extension " + FileExtention);
				System.out.println("File Size " + FileSize);

					try {
						 PreparedStatement ps =con.prepareStatement("UPDATE `examform` SET semester='"+semester+"', hallticket='"+FileName+"' where email='"+email+"'");
						 System.out.println("Data Insert:= "+ps);
						 int rs=ps.executeUpdate();
						 if(rs>0)
						 {
							 System.out.println("Data Insert Done ");
							 response.sendRedirect("fstudentinfo.jsp?upload");
						 }
						 else{
							 System.out.println("Not Insert Something Wrong");
							 response.sendRedirect("facultyupload.jsp?fail");
						 }
						
					} catch (Exception e) {
					}
					
				System.out.println("Connection created ");
				System.out.println("upload File Successfully ");
			}

			catch (Exception ex) {
				System.out.println("Exception e" + ex);
			}
		}

		else {
			System.out.println("Condition False");
			response.sendRedirect("facultyupload.jsp?fail");
		}
	}
}
