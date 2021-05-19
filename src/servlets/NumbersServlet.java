package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.ConstAttributes;

@WebServlet(name = "NumbersServlet")
public class NumbersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public NumbersServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String val = request.getParameter("val");
		int number = Integer.parseInt(val);
		
		int firstNum = (int) request.getSession().getAttribute(ConstAttributes.CALC_FIRST_NUM);
		String num = "" + firstNum;
		if (firstNum == 0) {
			request.setAttribute(ConstAttributes.CALC_RESULT, number);
			request.getSession().setAttribute(ConstAttributes.CALC_FIRST_NUM, number);
		} else {
			num += number;
			request.setAttribute(ConstAttributes.CALC_RESULT, num);
			request.getSession().setAttribute(ConstAttributes.CALC_SECOND_NUM, Integer.parseInt(num));
		}
		
		request.getRequestDispatcher("pages/calculator.jsp").forward(request, response);
	}

}
