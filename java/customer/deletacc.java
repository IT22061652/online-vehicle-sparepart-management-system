package customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


import customer.customer;
import customer.customerDBUtill;

@WebServlet("/Deletacc")
public class deletacc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("ID");
		boolean isTrue;

		isTrue = customerDBUtill.deleteCustomer(id);
		if (isTrue == true) {

			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			request.setAttribute("status", "done2");
		     dis.forward(request, response);

			
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			request.setAttribute("status", "done2");
		     dis.forward(request, response);

		}
		
		
		
	}

}
