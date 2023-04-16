package com.db.util;
import java.sql.*;

public class DBUtil {
	private String url="jdbc:mysql://localhost:3306/elearningweb";
	private String username="root";
	private String password="password";
	public static DBUtil getInstance() {
		return new DBUtil();
	}
	public Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		if (con != null ) {
			return con;
		}
		return null;
	}
}
