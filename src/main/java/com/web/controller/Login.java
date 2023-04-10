package com.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.controller.dao.LoginDao;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
   
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
		this.doPost(req, resp);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Username=request.getParameter("Username");
		String Userpassword=request.getParameter("Userpassword");
		
		LoginDao dao=new LoginDao();
		
		
		if(dao.check(Username, Userpassword))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", Username);
			response.sendRedirect("jspfiles/welcome.jsp");
		}
		else
		{
			
			response.sendRedirect("login.jsp");
			
		}
	}

	
	

}