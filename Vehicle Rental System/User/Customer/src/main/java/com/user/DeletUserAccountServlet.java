package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DeletUserAccountServlet")
public class DeletUserAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeletUserAccountServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int userId = Integer.parseInt(request.getParameter("id"));

	        try {
	            String JDBC_URL = "jdbc:mysql://localhost:3306/vehiclerenteldemo";
	            String JDBC_USERNAME = "root";
	            String JDBC_PASSWORD = "Wbnp2001@";

	            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);

	            String deleteQuery = "DELETE FROM user WHERE id = ?";

	            PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery);
	            preparedStatement.setInt(1, userId);

	            int rowsDeleted = preparedStatement.executeUpdate();

	            // Check if the delete was successful
	            if (rowsDeleted > 0) {
	                HttpSession session = request.getSession();
	                session.invalidate();

	                response.sendRedirect("Login.jsp");
	            } else {
	                response.sendRedirect("header.jsp?message=Account_Deletion_Failed");
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            response.sendRedirect("adminaccount.jsp?message=SQL_Error");
	        } 
	}

}
