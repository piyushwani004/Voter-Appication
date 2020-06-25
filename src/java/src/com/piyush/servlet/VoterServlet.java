package src.com.piyush.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/VoterServlet")
public class VoterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private int ID;
    private String user;
    private String pass;

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().println(request.getParameter("fileToUpload"));
    }
}
