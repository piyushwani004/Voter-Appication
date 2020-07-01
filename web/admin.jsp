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
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Admin</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <style type="text/css">
            body {
                font-family: 'Open Sans', sans-serif;
                font-weight: 300;
                line-height: 1.42em;
                color:#A7A1AE;
                background-color:#1F2739;
            }

            h1 {
                font-size:3em; 
                font-weight: 300;
                line-height:1em;
                text-align: center;
                color: #4DC3FA;
            }

            h2 {
                font-size:1em; 
                font-weight: 300;
                text-align: center;
                display: block;
                line-height:1em;
                padding-bottom: 2em;
                color: #FB667A;
            }

            h2 a {
                font-weight: 700;
                text-transform: uppercase;
                color: #FB667A;
                text-decoration: none;
            }
            h3{
                margin-left: 140px;
            }

            .blue { color: #185875; }
            .yellow { color: #FFF842; }

            .container th h1 {
                font-weight: bold;
                font-size: 1em;
                text-align: left;
                color: #185875;
            }

            .container td {
                font-weight: normal;
                font-size: 1em;
                -webkit-box-shadow: 0 2px 2px -2px #0E1119;
                -moz-box-shadow: 0 2px 2px -2px #0E1119;
                box-shadow: 0 2px 2px -2px #0E1119;
            }

            .container {
                text-align: left;
                overflow: hidden;
                width: 100%;
                margin: 0 auto;
                display: table;
                padding: 0 0 8em 0;
            }

            .container td, .container th {
                padding-bottom: 2%;
                padding-top: 2%;
                padding-left:2%;  
            }

            /* Background-color of the odd rows */
            .container tr:nth-child(odd) {
                background-color: #323C50;
            }

            /* Background-color of the even rows */
            .container tr:nth-child(even) {
                background-color: #2C3446;
            }

            .container th {
                background-color: #1F2739;
            }

            .container td:first-child { color: #FB667A; }
            @media (max-width: 800px) {
                .container td:nth-child(4),
                .container th:nth-child(4) { display: none; }
            }
        </style>
    </head>
    <body>
        <%
            Blob image = null;
            byte[] imgData = null;
            Connection con = null;
        %>

        <h1>Server<span class="blue"><span class="yellow"> Side</pan></h1>
                    <br/>
                    <h3>Student Registration Data</h3>
                    <table class="container">
                        <thead>
                            <tr>
                                <th><h1>No.</h1></th>
                                <th><h1>First Name</h1></th>
                                <th><h1>Last Name</h1></th>
                                <th><h1>Email</h1></th>
                                <th><h1>Phone</h1></th>
                                <th><h1>City</h1></th>
                                <th><h1>Department</h1></th>
                                <th><h1>Roll Number</h1></th>
                            </tr>
                        </thead>
                        <%                            try {
                                con = DatabaseConnection.initializeDatabase();
                                String sql = "select * from register";
                                Statement st = (Statement) con.createStatement();
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                        %>
                        <tbody>
                            <tr>
                                <td><%=rs.getInt(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td><%=rs.getString(6)%></td>
                                <td><%=rs.getString(7)%></td>
                                <td><%=rs.getString(8)%></td>

                            </tr>

                        </tbody>
                        <%
                                }
                                con.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </table>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    
                    <h3>Voter Registration Data</h3>
                    <table class="container">
                        <thead>
                            <tr>
                                <th><h1>No.</h1></th>
                                <th><h1>First Name</h1></th>
                                <th><h1>Last Name</h1></th>
                                <th><h1>Email</h1></th>
                                <th><h1>Phone</h1></th>
                                <th><h1>City</h1></th>
                                <th><h1>Department</h1></th>
                                <th><h1>Party Name</h1></th>  
                                <th><h1>Photo</h1></th>  
                                <th><h1>Vote</h1></th>  
                            </tr>
                        </thead>
                        <%
                            try {
                                con = DatabaseConnection.initializeDatabase();
                                String sql = "select * from votedata";
                                Statement st = (Statement) con.createStatement();
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                        %>
                        <tbody>
                            <tr>
                                <td><%=rs.getInt(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td><%=rs.getString(6)%></td>
                                <td><%=rs.getString(7)%></td>
                                <td><%=rs.getString(8)%></td>
                                <td><%=rs.getBlob(9)%></td>
                                <td><%=rs.getInt(10)%></td>
                            </tr>

                        </tbody>
                        <%
                                }
                                con.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </table>
                    </body>
                    </html>