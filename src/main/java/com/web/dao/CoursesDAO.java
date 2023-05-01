package com.web.dao;


import java.sql.*;
import java.util.*;

import com.db.util.DBUtil;


public class CoursesDAO {
	public static CoursesDAO dao=null;
	public static CoursesDAO getInstance()
	{
		if (dao==null)
		{
			dao=new CoursesDAO();
			return dao;
			
		}
		
		else
		{
			return dao;

		}
	}
	public Map<String, List<Map<String,String>>> getCourses()
	{
		Map<String, List<Map<String,String>>> coursesMap = new HashMap<>();
		
		String sql="select ClassName,subName,imagesrc from classes inner join subjects on subjects.Classid =classes.Classid";
		try {
			Connection connection=DBUtil.getInstance().getConnection();
			
			PreparedStatement ps= connection.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			

			while(rs.next())
			{
				
				if(coursesMap.containsKey(rs.getString(1)))
				{
					
					List<Map<String,String>> subjects=coursesMap.get(rs.getString(1));
					Map<String,String> subMap = new HashMap<>();
					subMap.put(rs.getString(2), rs.getString(3));
					subjects.add(subMap);				
				}
				else {
				      List<Map<String,String>>subjects=	new ArrayList<>();
				      Map<String,String> subMap = new HashMap<>();
					  subMap.put(rs.getString(2), rs.getString(3));
				      subjects.add(subMap);
					coursesMap.put(rs.getString(1), subjects);
				}
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return coursesMap;
		
	}
	public boolean subscribe(int userId,String subName)
	{
		String sql="insert into subtousermapping values (?,?)";
		try {
			Connection connection =DBUtil.getInstance().getConnection();
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.setString(2, subName);
			ps.execute();
			return true;
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
		
	}
	public static boolean delCourses(int userId, String subName) {
		String sql="delete from SubToUserMapping where Userid=? and subName=? ;";
		
		Connection connection;
		try {
			connection = DBUtil.getInstance().getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.setString(2, subName);
			boolean executed = ps.execute();
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}


	
	
	
	public Map<String, List<String>> selectedCourses(int classId)
	{
		Map<String, List<String>> coursesMap = new HashMap<>();
		
		String sql="select ClassName,subName from classes inner join subjects on subjects.Classid =classes.Classid where subjects.ClassId=?";
		try {
			Connection connection=DBUtil.getInstance().getConnection();
			
			PreparedStatement ps= connection.prepareStatement(sql);
			ps.setInt(1, classId);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				if(coursesMap.containsKey(rs.getString(1)))
				{
					
					List<String> subjects=coursesMap.get(rs.getString(1));
					subjects.add(rs.getString(2));				
				}
				else {
				      List<String>subjects=	new ArrayList<String>();
				      subjects.add(rs.getString(2));
					coursesMap.put(rs.getString(1), subjects);
				}
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return coursesMap;
		
	}
}
