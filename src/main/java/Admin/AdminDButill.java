package Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;

import DBconnetion.DBconnection;

public class AdminDButill {
	
	
	public static boolean deleteCustomer(String id) {
		
		boolean isSuccess = false;
		 
		try {
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();
	    	PreparedStatement pst1=con.prepareStatement("DELETE FROM customer WHERE ID='"+id+"'");
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
	
public static boolean deleteAds(String id) {
		
		boolean isSuccess = false;
		 
		try {
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();
	    	PreparedStatement pst1=con.prepareStatement("DELETE FROM item WHERE itemId='"+id+"'");
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
