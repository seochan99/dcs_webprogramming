package com.example.web;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * Servlet implementation class BeerSelect
 */
@WebServlet("/BeerSelect")
public class BeerSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BeerSelect() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("BEER SELECTION ADVICE - mvc2<br>");
		String c = request.getParameter("color");
		out.println("<br>Got Beer Color : " + c +"<br><br>");
		
//			RequestDispatcher dispatcher = 
//					request.getRequestDispatcher("BeerTryName");
//			dispatcher.forward(request,response);
		
		if(c.equals("amber"))
		{
			out.println("try : Jack Amber<br>");
			out.println("try : Red Moose");
		
	}else {
		out.println("try : Jail Pale Ale<br>");
		out.println("try : Sout Stout");
	}

	}

}
