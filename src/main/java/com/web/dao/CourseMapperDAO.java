package com.web.dao;
import java.util.*;

import com.db.util.DBUtil;

import java.sql.*;
public class CourseMapperDAO {
	public static CourseMapperDAO dao = null;
	public static CourseMapperDAO getInstance() {
		if (dao == null ) {
			dao = new CourseMapperDAO();
			return dao;
		}
		else 
			return dao;
	}
	public Map<String, List<String>> getCourses(int userId,int classId){
		String SQL = "Select su.subName,  s.Youtubelink,s.Quespaper,s.Etextlink from SubToUserMapping su inner join subjects s on su.subName like binary s.subName where su.userId=? and s.ClassId=? order by su.subName";
		Map<String, List<String>> subjectMap = new HashMap<>();
		try {
			Connection connection = DBUtil.getInstance().getConnection();
			PreparedStatement ps = connection.prepareStatement(SQL);
			ps.setInt(1, userId);
			ps.setInt(2,classId);
			ResultSet rs = ps.executeQuery();
			List<String> links = null;
			while (rs.next()) {
				links = new ArrayList<>();
				links.add(rs.getString(2));
				links.add(rs.getString(3));
				links.add(rs.getString(4));
				subjectMap.put(rs.getString(1),links);
				
			}
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return subjectMap;
	}
	
	
	public static boolean addCourses(int userId, String subName) {
		String sql="insert into SubToUserMapping values(?,?) ;";
		
		Connection connection;
		try {
			connection = DBUtil.getInstance().getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.setString(2, subName);
			boolean executed = ps.execute();
			return executed;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	
	


}





