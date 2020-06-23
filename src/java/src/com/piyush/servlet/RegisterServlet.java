package com.piyush.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.piyush.Database.DatabaseConnection;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try 
		{
			response.getWriter().println(request.getParameter("Fname"));
			response.getWriter().println(request.getParameter("Lname"));
			
			Connection con = DatabaseConnection.initializeDatabase(); 
			
			PreparedStatement pst = con.prepareStatement("insert into register values(?, ?,?, ?,?, ?,?, ?)");
            pst.setInt(1, 1);
            pst.setString(2, request.getParameter("Fname"));
            pst.setString(3, request.getParameter("Lname"));
            pst.setString(4, request.getParameter("Email"));
            pst.setString(5, request.getParameter("Mobile"));
            pst.setString(6, request.getParameter("City"));
            pst.setString(7, request.getParameter("Dept"));
            pst.setString(8, request.getParameter("Pin"));
            int i = pst.executeUpdate();
            if (i > 0) {
            	response.getWriter().println("added");
            } else {
            	response.getWriter().println("Not added");
            }
            pst.close(); 
            con.close(); 
            
            PrintWriter out = response.getWriter(); 
            out.println("<html><body><b>Successfully Inserted"
                        + "</b></body></html>"); 
		}
		catch(Exception e)
		{
			
		}
	}
}
