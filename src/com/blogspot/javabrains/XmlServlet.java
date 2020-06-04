package com.blogspot.javabrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XmlServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		out.println("Hello! from GET  method" + userName );
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String fullName = request.getParameter("fullName");
		out.println("Hello! from Post Method " + userName + " ! We know your fullName is " + fullName );
		String prof = request.getParameter("prof");
		out.println("You are a " + prof );
//		String location = request.getParameter("location");
		String[] location = request.getParameterValues("location");
		out.println("You are a " + location.length );
		
	}
	
}
