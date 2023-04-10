package com.web.controller.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String sql="select Username ,Userpassword from accounts where Username=? and Userpassword=?";
	String url="jdbc:mysql://localhost:3306/elearningweb";
	String username="root";
	String password="Malu1693*";
	
	public boolean check(String Username,String Userpassword)
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,Username);
			st.setString(2,Userpassword);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return false;
	}

}
