package customer;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import com.mysql.cj.protocol.Resultset;
import DBconnetion.DBconnection;

import DBconnetion.DBconnection;


public class customerDBUtill {
	
	
	public static boolean insertCustomer(String C_fname, String C_lname,String C_email,String C_contactNo, String C_address, String C_password){
    	boolean isSuccess = false;
    	
   
    	
    	try {
    		//Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345678");
    		DBconnection db = DBconnection.getInstance();
    	Connection	con = db.getCon();
    	//	stmt = ((Connection) con).createStatement();
    		
    		PreparedStatement pst=con.prepareStatement("insert into customer(fname,lname,email,contactno,address,password) values (?,?,?,?,?,?)");
    		
    		pst.setString(1, C_fname);
    		pst.setString(2, C_lname);
    		pst.setString(3, C_email);
    		pst.setString(4, C_contactNo);
    		pst.setString(5, C_address);
    		pst.setString(6, C_password);
    		
    		ArrayList<customer> cus = new ArrayList<> ();
    		customer c = new customer ();
    		c.setC_address(C_address);
    		c.setC_contactNo(C_contactNo);
    		c.setC_fname(C_fname);
    		c.setC_password(C_password);
    		c.setC_lname(C_lname);
    		cus.add(c);
    		
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
	
	
	
	
	
	
	
	
	
	public static boolean updateCustomer(String id,String fname,String lname,String email,String contact,String address) {
		
		boolean isSuccess = false;
		try{ 
			
			
			
			
			
			DBconnection db = DBconnection.getInstance();
	    	Connection	con = db.getCon();
			PreparedStatement pst=con.prepareStatement("UPDATE customer SET fname='"+fname+"',lname='"+lname+"',email='"+email+"',contactno='"+contact+"',address='"+address+"'"+"WHERE ID='"+id+"'");
			
			
			
			
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
	
	
	
	
	



public static boolean updatepassword(String id,String pass1,String pass2) {
	
	boolean isSuccess = false;
	try{ 
		
		
		
		
		
		DBconnection db = DBconnection.getInstance();
    	Connection	con = db.getCon();
    	PreparedStatement pst1=con.prepareStatement("select password from customer where password='"+pass1+"' and ID='"+id+"'");
    	ResultSet row1=pst1.executeQuery();
    	if(row1.next()) {
		PreparedStatement pst=con.prepareStatement("UPDATE customer SET password='"+pass2+"' where ID='"+id+"'");
		
		
		
		
		int row=pst.executeUpdate();
		 if(row>0) {
			 isSuccess = true;
		 }else {
			 isSuccess = false;
		 }
		 
    	}else {
    		
    		 isSuccess=false;
    	}
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
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






}
