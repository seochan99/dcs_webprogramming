

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dispatchjava")
public class dispatchjava extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public dispatchjava() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		

        // JSP 페이지로 디스패치
        RequestDispatcher dispatcher = request.getRequestDispatcher("/q1.jsp"); 
        
        // request 객체에 속성 설정
        request.setAttribute("request", "request value");
        request.setAttribute("requestName", "hongildong");
        dispatcher.forward(request, response);
	}


}
