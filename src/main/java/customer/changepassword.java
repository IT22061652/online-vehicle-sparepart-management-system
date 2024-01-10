package customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/changepassword1")
public class changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		String pass1= request.getParameter("oldpass");
		String pass2 = request.getParameter("newpass");
		
		
		
		boolean isTrue;
		// calling insertMethod in customerDButil n assign this
		isTrue = customerDBUtill.updatepassword(id,pass1,pass2);

		if (isTrue == true) {
			// navigate to another jsp page
			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			request.setAttribute("status", "done1");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("changepass.jsp");
			request.setAttribute("status", "failed");
			dis2.forward(request, response);
		}
		
		
		
		
	}

}
