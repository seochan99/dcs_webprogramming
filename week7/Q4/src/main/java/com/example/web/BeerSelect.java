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
		
		
		String c = request.getParameter("color");
		
	
		  if ("amber".equals(c)) {
	            request.setAttribute("request", "Jack Amber");
	            request.setAttribute("requestName", "Red Moose");
	        } else {
	            request.setAttribute("request", "Jail Pale Ale");
	            request.setAttribute("requestName", "Sout Stout");
	        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/q4.jsp");
        dispatcher.forward(request, response);
        
	}

}
