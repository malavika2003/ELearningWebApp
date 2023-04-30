package com.web.pojo;

public class Standard {
	private int classId;
	private String className;
	public Standard(int classId,String className)
	{
		this.classId=classId;
		this.className=className;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}

	

}
