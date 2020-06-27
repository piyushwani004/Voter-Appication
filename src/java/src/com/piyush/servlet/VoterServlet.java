package src.com.piyush.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import src.com.piyush.Database.DatabaseConnection;

@WebServlet("/VoterServlet")
@MultipartConfig(maxFileSize = 16177216)    // upload file's size up to 1.6MB
public class VoterServlet extends HttpServlet {

    private int ID;

    // database connection settings
    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Part part = request.getPart("file");
        if (part != null) {
            try {
                Connection con = DatabaseConnection.initializeDatabase();

                String s = "select *from uid";
                Statement st = (Statement) con.createStatement();
                ResultSet rs = st.executeQuery(s);
                while (rs.next()) {
                    ID = rs.getInt(2);
                    ID++;
                }

                PreparedStatement ps = con.prepareStatement("insert into votedata values(?,?,?,?,?,?,?,?,?)");

                ps.setInt(1, ID);
                ps.setString(2, request.getParameter("Fname"));
                ps.setString(3, request.getParameter("Lname"));
                ps.setString(4, request.getParameter("Email"));
                ps.setString(5, request.getParameter("Mobile"));
                ps.setString(6, request.getParameter("City"));
                ps.setString(7, request.getParameter("Dept"));
                ps.setString(8, request.getParameter("Party_Name"));
                InputStream is = part.getInputStream();
                ps.setBlob(9, is);
                int i = ps.executeUpdate();
                response.getWriter().println(i);

                String s1 = "update uid set vid=?";
                PreparedStatement stp1 = con.prepareStatement(s1);
                stp1.setInt(2, ID);
                stp1.executeUpdate();

                if (i > 0) {
                    RequestDispatcher rd = request.getRequestDispatcher("index.html");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("voter.jsp");
                    rd.forward(request, response);
                }

            } catch (Exception e) {

            }
        } else {
            response.getWriter().println("outside");
        }
    }
}
