

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Calculate
 */
@WebServlet("/calculate")
public class Calculate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calculate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		
		try {
			int num1 = Integer.parseInt(request.getParameter("number1"));
			int num2 = Integer.parseInt(request.getParameter("number2"));
			
			PrintWriter out = response.getWriter();
			
			out.println("<HTML>");
			out.println("<HEAD></HEAD>");
			out.println("<BODY>");
			out.println("ADD = " + (num1 + num2) +"<br/>");
			out.println("SUB = " + (num1 - num2) +"<br/>");
			out.println("MUL = " + (num1 * num2) +"<br/>");
			out.println("DIV = " + (num1 / num2) +"<br/>");
			out.println("</BODY>");
			out.println("</HTML>");
		} catch(NumberFormatException e) {
			// Handle the case where the input was not a valid number
			PrintWriter out = response.getWriter();
			out.println("Please provide valid numbers for calculation.");
		}
	}

}
