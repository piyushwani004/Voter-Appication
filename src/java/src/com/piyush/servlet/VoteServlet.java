package src.com.piyush.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet("/VoteServlet")
public class VoteServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private String name;
    private String party;
    private int count;
    private String dataparty;
    private String dataname;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        name = request.getParameter("name");
        party = request.getParameter("party");

        try {
            Connection con = DatabaseConnection.initializeDatabase();
            String s = "select * from votedata where fname like '" + name + "' or party like '" + party + "' ";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(s);
            while (rs.next()) {

                dataname = rs.getString(2);
                dataparty = rs.getString(8);
                count = rs.getInt(10);
            }

            count = count + 1;
            response.getWriter().println(dataname);
            response.getWriter().println(dataparty);
            response.getWriter().println(count);

            String ss = "UPDATE votedata SET vote = '" + count + "' where fname like '" + dataname + "' or party like '" + dataparty + "' ";
            PreparedStatement pst = con.prepareStatement(ss);
            int i = pst.executeUpdate();
            if (i > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("Voting.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.forward(request, response);
            }

        } catch (SQLException ex) {
            Logger.getLogger(VoteServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(VoteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
