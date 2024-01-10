package item;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import DBconnetion.DBconnection;
import item.Item;
import item.itemDBtill;

@WebServlet("/viewAds")
public class Itemview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		//getting database connection (jdbc code)
		try {

			DBconnection db = DBconnection.getInstance();
			   Connection	con = db.getCon();
			   PreparedStatement pst = con.prepareStatement("SELECT * FROM item");
		

			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				int SellerID = rs.getInt("selllerId");
				int ItemID = rs.getInt("itemId");
				String title = rs.getString("title");
				
				String category = rs.getString("category");
				String description = rs.getString("description");
				
				int quantity = rs.getInt("quantity");
				double price = rs.getInt("price");
				String postedDate = rs.getString("posteddate");
				
				String mainItemImage = rs.getString("image");
				
				
				
				
				request.setAttribute("cusID", SellerID);
				request.setAttribute("itemid", ItemID);
				request.setAttribute("title", title);
				request.setAttribute("cat", category);
				request.setAttribute("des", description);
				request.setAttribute("quant", quantity);
				request.setAttribute("price", price);
				request.setAttribute("date", postedDate);
				request.setAttribute("img", mainItemImage);
				
				RequestDispatcher dis = request.getRequestDispatcher("items.jsp");
				request.setAttribute("status", "done");
			     dis.forward(request, response);

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		
		
		
		
		

}
}