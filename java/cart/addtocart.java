package cart;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import customer.customerDBUtill;

@MultipartConfig
@WebServlet("/addtocart1")
public class addtocart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		int cusid = Integer.parseInt(request.getParameter("cusid"));
		String itemid = request.getParameter("id");
		double price = Double.parseDouble(request.getParameter("price"));
		
		String title = request.getParameter("title");
		
		
		
		Part file=request.getPart("image");
		System.out.println(file);
		
		String filename=file.getSubmittedFileName();
		
		String uploadpath="/Users/donmariopriyankasubasinghe/Desktop/java/new project/src/main/webapp/images/"+filename;
		
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadpath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		boolean isTrue;
		// calling insertMethod in customerDButil n assign this
		isTrue = CartDButill.AddToCart(cusid, itemid, price,filename,title);

		if (isTrue == true) {
			// navigate to another jsp page
			RequestDispatcher dis = request.getRequestDispatcher("items.jsp");
			request.setAttribute("status", "done");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("indexlogin.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
