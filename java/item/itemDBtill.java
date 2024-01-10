package item;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import item.Item;

import DBconnetion.DBconnection;

public class itemDBtill {
	
	
	
	public static boolean insertItemDetails(int sellerID, String title, String description,
			String category,  int quantity, Double price, String main_image) {
		boolean ItemInserted = true;

		try {

	   DBconnection db = DBconnection.getInstance();
	   Connection	con = db.getCon();
	   PreparedStatement pst = con.prepareStatement("INSERT INTO item(sellerId,title,category,description,quantity,postdate,image,price) values (?, ?, ?, ?, ?,  now(), ?, ?)");
	    	
	    	pst.setInt(1, sellerID);
			pst.setString(2, title);
			pst.setString(3, category);
			pst.setString(4, description);
			pst.setInt(5, quantity);
			pst.setString(6, main_image);
			pst.setDouble(7, price);
		
			

			int rowCount = pst.executeUpdate();

			if (rowCount > 0) {
				ItemInserted = true;

			} else {
				ItemInserted = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return ItemInserted;
	}
	
	
	public static List<Item> viewItems() {
		ArrayList<Item> itemDetailsList = new ArrayList<>();

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
				
				Item item = new Item(SellerID,ItemID,title,category,description,quantity,price,postedDate,mainItemImage);

				itemDetailsList.add(item);

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return itemDetailsList;
	}

	
	
	
	
	
	
	

}
