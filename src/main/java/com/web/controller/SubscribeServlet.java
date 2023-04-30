package com.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.dao.CoursesDAO;

@WebServlet("/SubscribeServlet")
public class SubscribeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubscribeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
		HttpSession session=request.getSession();

	    if(session.getAttribute("username")==null) 
	    {
	    	response.sendRedirect("jspfiles/login.jsp");
	    }
	    else {
	    	
	    	String subName=request.getParameter("subName");
	    	int userId=((Integer)session.getAttribute("userId")).intValue();
	    	if(CoursesDAO.getInstance().subscribe(userId,subName))
	    	{
	    		PrintWriter out=response.getWriter();
	    		out.print("<script>alert('Thank you for subscribing'); window.location='jspfiles/Courses.jsp';</script>");
	    	}
	    	
	    }

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
