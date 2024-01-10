package customer;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import customer.customerDBUtill;

import DBconnetion.DBconnection;

@WebServlet("/updatedetailss")
public class updatedetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String ufname = request.getParameter("fname");
		String ulname = request.getParameter("lname");
		String uemail = request.getParameter("email");
		String ucontact = request.getParameter("contact");
		String uaddress = request.getParameter("address");
		
		//Connection con= null;
		

/*	try{ 
		
		
		
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345678");
		PreparedStatement pst=con.prepareStatement("UPDATE customer SET fname='"+fname+"',lname='"+lname+"',email='"+email+"',contactno='"+contact+"',address='"+address+"'"+"WHERE ID='"+id+"'");
		
		
		
		
		int row=pst.executeUpdate(); 
		
		
		if (row>0) {
			// navigate to another jsp page
			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			request.setAttribute("status", "done");
		dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("index.jsp");
			dis2.forward(request, response);
		}
		
	}catch (Exception e) {
		
		
		e.printStackTrace();
		
		
	}finally
	}*/
	try	{
		DBconnection db = DBconnection.getInstance();
    	Connection	con = db.getCon();
	
		PreparedStatement pst=con.prepareStatement("SELECT * from customer WHERE ID='"+id+"'");
		
		
		boolean isTrue;
		isTrue = customerDBUtill.updateCustomer(id, ufname, ulname, uemail, ucontact, uaddress);
		
		
		if (isTrue == true) {
			
			ResultSet row=pst.executeQuery();
			if (row.next()) {
				// navigate to another jsp page
				//int id= row.getInt(1);
				String fname = row.getString(2);
				String lname = row.getString(3);
				String email = row.getString(4);
				String contactNo = row.getString(5);
				String address =row.getString(6);
				String password = row.getString(7);
				
				request.getSession().setAttribute("cusID", id);
				request.getSession().setAttribute("name1", fname);
				request.getSession().setAttribute("name2", lname);
				request.getSession().setAttribute("mail", email);
				request.getSession().setAttribute("pno", contactNo);
				request.getSession().setAttribute("add", address);
				request.getSession().setAttribute("pss", password);
				RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
				request.setAttribute("status", "done");
			     dis.forward(request, response);
			} else {
				RequestDispatcher dis2 = request.getRequestDispatcher("useracc.jsp");
				request.setAttribute("status", "failed");
				dis2.forward(request, response);
			}
			
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			request.setAttribute("status", "done");
		dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("index.jsp");
			dis2.forward(request, response);
		}

}catch (Exception e) {
	
	
	e.printStackTrace();
	
	
}
	}
}
	
	

