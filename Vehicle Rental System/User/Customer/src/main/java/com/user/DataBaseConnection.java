package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/vehiclerenteldemo";//Database Name
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "";//password

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new SQLException("Database driver not found");
        }

        return DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
    }
}
