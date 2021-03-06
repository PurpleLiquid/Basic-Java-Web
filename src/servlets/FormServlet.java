package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/form", name = "FormServlet")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public FormServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("pages/form.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String formInput = request.getParameter("formInput");
		
		request.setAttribute("formReult", formInput);
		
		doGet(request, response);
	}

}
