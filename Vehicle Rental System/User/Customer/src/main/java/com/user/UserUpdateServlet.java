package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserUpdateServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int newId = Integer.parseInt(request.getParameter("id"));
            String newFName = request.getParameter("Fname");
            String newLName = request.getParameter("Lname");
            String newEmail = request.getParameter("email");
            String newPhone = request.getParameter("phone");
            String newPassword = request.getParameter("password");
            String newRePassword = request.getParameter("repassword");
            String role = request.getParameter("role");
            
            Connection connection = DataBaseConnection.getConnection();
            
            String updateQuery = "UPDATE vehiclerenteldemo.user SET firstname=?, lastname=?, email=?, phone=?, password=?, repassword=?, role=? WHERE id = ? ";

            PreparedStatement preparedStatement = connection.prepareStatement(updateQuery);

            
            preparedStatement.setString(1, newFName);
            preparedStatement.setString(2, newLName);
            preparedStatement.setString(3, newEmail);
            preparedStatement.setString(4, newPhone);
            preparedStatement.setString(5, newPassword);
            preparedStatement.setString(6, newRePassword);
            preparedStatement.setString(7, role);
            preparedStatement.setInt(8, newId);
            
           

            
            int rowsUpdated = preparedStatement.executeUpdate();
            
            connection.close();
            
            if (rowsUpdated > 0) {
                HttpSession session = request.getSession();
                User updatedUser = new User(newId, newFName,newLName, newEmail, newPhone, newPassword, newRePassword,role);
                session.setAttribute("user", updatedUser);
                response.sendRedirect("useraccount.jsp?success=true");
            } else {
                response.sendRedirect("unsuccess.jsp");
            }
            
		} catch (SQLException e) {
			e.printStackTrace();
            response.sendRedirect("unsuccess.jsp?message=SQL_Error");
		}catch (IOException e) {
            e.printStackTrace();
            response.sendRedirect("unsuccess.jsp?message=IO_Error");
        }
	}

}
