package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.ConstAttributes;

@WebServlet(name = "OperationsServlet")
public class OperationsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public OperationsServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		char operation = op.charAt(0);
		
		request.getSession().setAttribute(ConstAttributes.CALC_OPERATION, operation);
		request.setAttribute(ConstAttributes.CALC_RESULT, operation);
		request.getRequestDispatcher("pages/calculator.jsp").forward(request, response);
	}
}
