package com.web.controller.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.db.util.DBUtil;

public class LoginDao {
	String sql="select Userid, Username ,Userpassword from accounts where Username=? and Userpassword=?";
	
	public Integer check(String Username,String Userpassword)
	{
		try {

			Connection con= DBUtil.getInstance().getConnection();
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,Username);
			st.setString(2,Userpassword);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				return rs.getInt("Userid");
			}
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return -1;
	}

}
