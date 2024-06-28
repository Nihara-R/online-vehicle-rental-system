package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class CustomerDBUtil {
public CustomerDBUtil() {
		
	}

public static boolean insertcustomer(String fname, String lname,String email, String mobile, String password ,String repassword,String role) {
	boolean isSuccess = false;
	
	//Create database connection
	String url = "jdbc:mysql://localhost:3306/vehiclerenteldemo"; // database name
	String user = "root";
	String pword = "";//password
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url, user, pword);
		Statement stmt = con.createStatement();
		//Insert part
		String sql = "insert into user values (0, '"+fname+"', '"+lname+"', '"+email+"', '"+mobile+"', '"+password+"','"+repassword+"','"+role+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) { 
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	
	return isSuccess;
}
}
