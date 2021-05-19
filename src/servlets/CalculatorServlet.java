package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.Calculator;
import util.ConstAttributes;

@WebServlet(urlPatterns = "/calculator", name = "CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String CALC_INPUT_VAL = "val";
	private static final String CALC_INPUT_OP = "op";
	private static final String CALC_INPUT_EQ = "calculate";
	
	private static final String CALC_FIRST_NUM = "firstNum";
	private static final String CALC_SECOND_NUM = "secondNum";
	private static final String CALC_OP = "operator";
	private static final String CALC_RESULT = "calcResult";
	
	private Calculator calculator = new Calculator();
    
    public CalculatorServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute(CALC_FIRST_NUM, 0);
		request.getSession().setAttribute(CALC_SECOND_NUM, 0);
		request.getRequestDispatcher("pages/calculator.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Check if user presses a "val" button
		if (request.getParameter(CALC_INPUT_VAL) != null) {
			String result = (String) request.getSession().getAttribute(CALC_RESULT);
			String newVal = request.getParameter(CALC_INPUT_VAL);
			
			if (result == null) {
				result = "";
			}
			
			result += newVal;
			
			request.getSession().setAttribute(CALC_RESULT, result);
			request.getRequestDispatcher("pages/calculator.jsp").forward(request, response);
			return;
		}
		
		// Check if user presses an "op" button
		if (request.getParameter(CALC_INPUT_OP) != null) {
			String result = (String) request.getSession().getAttribute(CALC_RESULT);
			int firstNum = (int) request.getSession().getAttribute(CALC_FIRST_NUM);
			int secondNum = (int) request.getSession().getAttribute(CALC_SECOND_NUM);
			String operation = (String) request.getSession().getAttribute(CALC_OP);
			
			// Save result into calculator
			if (firstNum == 0) {
				request.getSession().setAttribute(CALC_FIRST_NUM, Integer.parseInt(result));
			} else {
				request.getSession().setAttribute(CALC_SECOND_NUM, Integer.parseInt(result));
			}
			
			// If calculator is loaded and user adds another operation
			if (firstNum != 0 && 
				secondNum != 0 &&
				operation != null) {
				int calcResult = calculator.calculate(firstNum, secondNum, operation.charAt(0));
				
				request.getSession().setAttribute(CALC_FIRST_NUM, calcResult);
				request.getSession().setAttribute(CALC_SECOND_NUM, 0);
				String newOperation = request.getParameter(CALC_INPUT_OP);
				request.getSession().setAttribute(CALC_OP, newOperation);
				request.getSession().setAttribute(CALC_RESULT, calcResult);
			} else {
				String newOperation = request.getParameter(CALC_INPUT_OP);
				request.getSession().setAttribute(CALC_OP, newOperation);
				request.getSession().setAttribute(CALC_RESULT, "");
			}
			
			request.getRequestDispatcher("pages/calculator.jsp").forward(request, response);
			return;
		}
		
		// Check if user presses a "calculate" button
		if (request.getParameter(CALC_INPUT_EQ) != null) {
			// Get current number and set as 2nd
			String result = (String) request.getSession().getAttribute(CALC_RESULT);
			request.getSession().setAttribute(CALC_SECOND_NUM, Integer.parseInt(result));
			
			int firstNum = (int) request.getSession().getAttribute(CALC_FIRST_NUM);
			int secondNum = (int) request.getSession().getAttribute(CALC_SECOND_NUM);
			String operation = (String) request.getSession().getAttribute(CALC_OP);
			
			if (operation == null) {
				request.getRequestDispatcher("pages/calculator.jsp").forward(request, response);
				return;
			}
			
			int calcResult = calculator.calculate(firstNum, secondNum, operation.charAt(0));
			System.out.println(calcResult);
			
			request.getSession().setAttribute(CALC_FIRST_NUM, calcResult);
			request.getSession().setAttribute(CALC_SECOND_NUM, 0);
			request.getSession().setAttribute(CALC_RESULT, Integer.toString(calcResult));
		}
		
		request.getRequestDispatcher("pages/calculator.jsp").forward(request, response);
	}
	
}
