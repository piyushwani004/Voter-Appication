package src.com.piyush.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import src.com.piyush.Database.DatabaseConnection;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private int ID;
    private String user;
    private String pass;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String userp = request.getParameter("username");
            String passp = request.getParameter("password");
            Connection con = DatabaseConnection.initializeDatabase();
            String s = "select *from adminlogin";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(s);
            while (rs.next()) {
                user = rs.getString(1);
                pass = rs.getString(2);
            }
            if (userp.equals(user) && passp.equals(pass)) {
                RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.include(request, response);
            }
        } catch (Exception e) {

        }
    }
}
