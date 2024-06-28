package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UserLoginServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/vehiclerenteldemo","root","");//database name and password
			String n=request.getParameter("email");
			String p=request.getParameter("psw");
			String r = null;
			
			PreparedStatement ps=con.prepareStatement("select id,firstname,lastname,email,phone,password,repassword,role from user where email=? and password=? ");
			
			ps.setString(1, n);
			ps.setString(2, p);
			
			ResultSet rs =ps.executeQuery();
			
			if(rs.next()) {
				
				int id =rs.getInt("id");
				String firstname =rs.getString("firstname");
				String lastname =rs.getString("lastname");
				String email =rs.getString("email");
				String phone =rs.getString("phone");
				String password =rs.getString("password");
				String repassword =rs.getString("repassword");
				String role =rs.getString("role");
				User us =new User(id,firstname,lastname,email,phone,password,repassword,role);
				r =rs.getString("role");
				HttpSession session = request.getSession();
				session.setAttribute("username", n);
                session.setAttribute("role", r);
                session.setAttribute("email", email);
             
                session.setAttribute("user", us);
				if("customer".equals(r)) {
					RequestDispatcher rd = request.getRequestDispatcher("customer.jsp");
                    rd.forward(request, response);
				}
			}
			else {
				
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				 rd.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}

}
