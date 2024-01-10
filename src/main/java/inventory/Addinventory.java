package inventory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import item.itemDBtill;
import inventory.Inventoridbutill;



import jakarta.servlet.annotation.MultipartConfig;



import customer.customerDBUtill;

@MultipartConfig
@WebServlet("/Addinventory1")
public class Addinventory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String title = request.getParameter("title");
		String category = request.getParameter("category");
		String des = request.getParameter("desc");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		double price = Double.parseDouble(request.getParameter("price"));
		//Connection con= null;
		
		
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
		
		try 
		{
			boolean isTrue;
			// calling insertMethod in customerDButil n assign this
			isTrue = Inventoridbutill.insertInventory(title, des, category, quantity, price,filename);
			
			if(isTrue== true)
			{
				RequestDispatcher dis2 = request.getRequestDispatcher("adminorders.jsp");
				request.setAttribute("status", "adddone");
				dis2.forward(request, response);
			}
			
			else
			{
				System.out.println("Failed to upload image.");
			}
			
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
		
		
		
		
	}

}
