package DBconnetion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DBconnection {
	
	
	private Connection con;
	private String dbDriver;
	private String dbURL;
	private String dbName;
	private String dbUsername;
	private String dbPassword;
	private String connectionURL;

	private static DBconnection db;

	public  DBconnection() throws SQLException, ClassNotFoundException {
		dbDriver = "com.mysql.cj.jdbc.Driver";
		this.dbURL = "jdbc:mysql://localhost:3306/";
		this.dbName = "project";
		this.dbUsername = "root";
		this.dbPassword = "12345678";
		this.connectionURL = this.dbURL + this.dbName ;
		//+ "?autoReconnect=true&useSSL=false"
		Class.forName(this.dbDriver);
		this.con = DriverManager.getConnection(this.connectionURL, this.dbUsername, this.dbPassword);
	}

	public static DBconnection getInstance() throws SQLException, ClassNotFoundException {
		if (db == null) {
			db = new DBconnection();
		}
		return db;
	}

	public Connection getCon() {
		return this.con;
	}
	
	
	
	
	
	
	
	
	

}
