package com.web.dao;

import java.sql.*;
import java.util.*;

import com.db.util.DBUtil;
import com.web.pojo.Standard;

public class ClassesDAO {
	public static  ClassesDAO dao=null;
	public static ClassesDAO getInstance(){
		if (dao==null)
		{
			dao=new ClassesDAO();
			return dao;
			
		}	
		else {
			return dao;
		}
		
	}
	public List<Standard> getClasses()
	{
		List <Standard> classes=new ArrayList <>();
		String sql="select classId, className from classes";
		
		
	 
		try {
			Connection connection = DBUtil.getInstance().getConnection();
			PreparedStatement ps=connection.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Standard std=new Standard(rs.getInt(1),rs.getString(2));
				classes.add(std);
			}
			
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return classes;
		
	}

}
