package com.unknown;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.util.DbConnection;

public class GlobalFunction {
	
	public int studentAmount(String id)throws Exception
	{
		int amount=0;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from studentreg where id=?");
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			amount = Integer.parseInt(rs.getString("amount"));
			
		}
		return amount;
	}
	
	public int adminAmount()throws Exception
	{
		int amount=0;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from admin where id='1'");
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			amount = Integer.parseInt(rs.getString("amount"));
			
		}
		return amount;
	}
	
	public String getStudentName(String userid)throws Exception
	{
		String amount="";
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from studentreg where id=?");
		ps.setString(1, userid);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			amount = rs.getString("fname");
			
		}
		return amount;
	}
	
	public int positiveClassification(String tablename)throws Exception
	{
		int count=0;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select count(id) as cnt from "+tablename+" where sentiment='positive'");
		
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			count = rs.getInt("cnt");
		}
		return count;
	}
	
	public int negativeClassification(String tablename)throws Exception
	{
		int count=0;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select count(id) as cnt from "+tablename+" where sentiment='negative'");
		
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			count = rs.getInt("cnt");
		}
		return count;
	}

	public int getDuration(String id)throws Exception
	{
		int count=0;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from studentreg where id=?");
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			count = rs.getInt("duration");
		}
		return count;
	}
}
