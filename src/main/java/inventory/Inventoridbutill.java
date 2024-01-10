package inventory;

import java.sql.Connection;

import java.sql.PreparedStatement;

import DBconnetion.DBconnection;

public class Inventoridbutill {
	
	
	
	
	
	
	
	public static boolean insertInventory( String title, String description,
			String category,  int quantity, Double price, String main_image) {
		boolean ItemInserted = true;

		try {

	   DBconnection db = DBconnection.getInstance();
	   Connection	con = db.getCon();
	   PreparedStatement pst = con.prepareStatement("INSERT INTO inventory(title,category,description,quantity,postdate,image,price) values (?, ?, ?, ?,  now(),?, ?)");
	    	
	    	
			pst.setString(1, title);
			pst.setString(2, category);
			pst.setString(3, description);
			pst.setInt(4, quantity);
			pst.setString(5, main_image);
			pst.setDouble(6, price);
		
			

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
	
	
	
	
	
public static boolean updateinventory(String id,String title,String cat,String des,int qa,double price) {
		
		boolean isSuccess = false;
		try{ 
			
			
			
			
			
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();
			PreparedStatement pst=con.prepareStatement("UPDATE inventory SET title='"+title+"',category='"+cat+"',description='"+des+"',quantity='"+qa+"', price='"+price+"' WHERE itemID='"+id+"'");
			
			
			
			
			int row=pst.executeUpdate();
   		 if(row>0) {
   			 isSuccess = true;
   		 }else {
   			 isSuccess = false;
   		 }
   		 
   		
   	}catch(Exception e) {
   		e.printStackTrace();
   	}
   	
   	return isSuccess;
	}	
	


public static boolean deleteinventory(String id) {
	
	boolean isSuccess = false;
	 
	try {
		DBconnection db = DBconnection.getInstance();
    	Connection	con = db.getCon();
    	PreparedStatement pst1=con.prepareStatement("DELETE FROM inventory WHERE itemID='"+id+"'");
    	int rs=pst1.executeUpdate();
    	
		if(rs>0) {
			isSuccess=true;
		}else {
			isSuccess = false;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	
}

}
