package src.com.piyush.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.piyush.Database.DatabaseConnection;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/VoterServlet")
public class VoterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private int ID;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        
    }
}
