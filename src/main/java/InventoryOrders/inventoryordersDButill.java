package InventoryOrders;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import DBconnetion.DBconnection;
import customer.customer;

public class inventoryordersDButill {
	
	
	
	
	
	
	public static boolean placeorder(String id, double tot,String title,int qa,String cusid){
    	boolean isSuccess = false;
    	
   
    	
    	try {
    		//Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345678");
    		DBconnection db = DBconnection.getInstance();
    	Connection	con = db.getCon();
    	//	stmt = ((Connection) con).createStatement();
    		
    		PreparedStatement pst=con.prepareStatement("insert into Iorders(Itemname,total,orderdate,itemID,quantity,cusid) values (?,?,now(),?,?,?)");
    		
    		pst.setString(1, title);
    		pst.setDouble(2, tot);
    		pst.setString(3, id);
    		pst.setInt(4,qa);
    		pst.setString(5, cusid);
    		
    		
    		ArrayList<Inventoryorders> order = new ArrayList<> ();
    	//	Inventoryorders I = new Inventoryorders();
    	
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
	
	
	public static boolean cancelorder(String id) {
		
		boolean isSuccess = false;
		 
		try {
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();
	    	PreparedStatement pst1=con.prepareStatement("DELETE FROM Iorders WHERE orderId='"+id+"'");
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
