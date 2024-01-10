package customer;

import jakarta.servlet.ServletException;



import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/customerlogout1")
public class customerlogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		jakarta.servlet.http.HttpSession session = request.getSession();
		session.invalidate();
		request.setAttribute("status", "done1");
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
		
		
		
		
		
		
		
	}

}
