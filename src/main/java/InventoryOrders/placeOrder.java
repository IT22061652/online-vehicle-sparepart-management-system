package InventoryOrders;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import customer.customerDBUtill;

@WebServlet("/placeorder")
public class placeOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String title = request.getParameter("tit");
		double tot = Double.parseDouble(request.getParameter("tot"));
		int qa = Integer.parseInt(request.getParameter("qa"));
		String cusid=request.getParameter("cusid");
		
		
		
		
		boolean isTrue;
		// calling insertMethod in customerDButil n assign this
		isTrue = inventoryordersDButill.placeorder(id,tot,title,qa,cusid);

		if (isTrue == true) {
			// navigate to another jsp page
			RequestDispatcher dis = request.getRequestDispatcher("items.jsp");
			request.setAttribute("status", "done");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("");
			dis2.forward(request, response);
		}
		
	}

}
