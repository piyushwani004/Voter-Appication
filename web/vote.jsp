<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import ="src.com.piyush.Database.DatabaseConnection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Student</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <style>
            body {
                color: #fff;
                background: #d47677;
            }
            .form-control {
                min-height: 41px;
                background: #7a7a7a;
                box-shadow: none !important;
                border-color: #e3e3e3;
            }
            .form-control:focus {
                border-color: #70c5c0;
            }
            .form-control, .btn {        
                border-radius: 2px;
            }
            .login-form {
                width: 350px;
                margin: 0 auto;
                padding: 100px 0 30px;		
            }
            .login-form form {
                color: #7a7a7a;
                border-radius: 2px;
                margin-bottom: 15px;
                font-size: 13px;
                background: #7a7a7a;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;	
                position: relative;	
            }
            .login-form h2 {
                font-size: 22px;
                margin: 35px 0 25px;
            }
            .login-form .avatar {
                position: absolute;
                margin: 0 auto;
                left: 0;
                right: 0;
                top: -50px;
                width: 100px;
                height: 100px;
                border-radius: 50%;
                z-index: 9;
                background: #70c5c0;
                padding: 15px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
            }
            .login-form .avatar img {
                width: 100%;
            }	
            .login-form .btn {        
                font-size: 16px;
                font-weight: bold;
                background: #70c5c0;
                border: none;
                margin-bottom: 20px;
            }
            .login-form .btn:hover, .login-form .btn:focus {
                background: #50b8b3;
                outline: none !important;
            }    
            .login-form a {
                color: #fff;
                text-decoration: underline;
            }
            .login-form a:hover {
                text-decoration: none;
            }
            .login-form form a {
                color: #7a7a7a;
                text-decoration: none;
            }
            .login-form form a:hover {
                text-decoration: underline;
            }
            .text-center
            {
                color: #fff;
            }
        </style>
    </head>
    <body>
        <%
            Blob image = null;
            byte[] imgData = null;
            Connection con = null;
        %>
        <%      try {
                con = DatabaseConnection.initializeDatabase();
                String sql = "select * from votedata";
                Statement st = (Statement) con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
        %>
        <div class="login-form">
            <form  action="<%=request.getContextPath()%>/VoteServlet" method="post">
                <div class="avatar">
                    <img src="images/icons/avatar.png" alt="Avatar">
                </div>
                <h2 class="text-center" id="demo"><%=rs.getString(2)%>&nbsp;<%=rs.getString(3)%></h2>   
                <div class="form-group">
                    <h2 class="text-center"><%=rs.getString(8)%></h2>
                </div>
                <div class="form-group">
                </div>        
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">vote</button>
                </div>
            </form>
        </div> 
        <%
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>