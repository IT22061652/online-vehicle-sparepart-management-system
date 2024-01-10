package cart;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.util.ArrayList;

import DBconnetion.DBconnection;
import cart.Cart;
import customer.customer;

public class CartDButill {
	
	
	
	public static boolean AddToCart(int cusid,String itemID,double price,String image,String title) {
		boolean isSuccess = true;
		try {
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();

	PreparedStatement pst=con.prepareStatement("insert into cart(itemID,CusID,Price,image,title) values (?,?,?,?,?)");
    		
    		pst.setString(1, itemID);
    		pst.setInt(2, cusid);
    		pst.setDouble(3, price);
    		pst.setString(4, image);
    		pst.setString(5, title);
    	
    		
    		
    		
    		
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
	

	public static boolean deletefromcart(String id) {
		boolean isSuccess = true;
		try {
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();

	PreparedStatement pst=con.prepareStatement("DELETE FROM cart WHERE cartID='"+id+"'");
    		
    		
    	
    		
    		
    		
    		
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
	
	
	

}
