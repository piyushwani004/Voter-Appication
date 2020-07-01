<%@page import="java.sql.Connection"%>
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
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util1.css">
        <link rel="stylesheet" type="text/css" href="css/main1.css">
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
        <title>Voting Page</title>
        <style type="text/css">
            body {

                background-color:#1F2739;
            }
            .serchbar
            {
                width: 100%;
                height: 10%;
                margin-top:2%; 
                margin-left: 100px;
                margin-bottom: 0%;
            }
            .search
            {
                width: 80%;
                height: 35px;
                
                border-radius: 10px;
            }
            .text-center{
                 color: grey;
                 padding: 10px;
                margin-top: 0px;
            }
            
        </style>
    </head>

    <body>
        <%
            byte[] imgData = null;
            Connection con = null;
        %>
        <div class="serchbar">
            <form action=" " method="post">
                <input class="search" type="text" name="search" placeholder="Search Here..."/>
            </form>
        </div>
        <div>
            <div class="container-table100">
                <h2 class="text-center">Collage Students list</h2>
                <div class="wrap-table100">
                    <div class="table100 ver3 m-b-110">
                        <div class="table100-head">
                            <table>
                                <thead>
                                    <tr class="row100 head">
                                        <th class="cell100 column1">First Name</th>
                                        <th class="cell100 column2">Last Name</th>
                                        <th class="cell100 column3">City</th>
                                        <th class="cell100 column4">Department</th>
                                        <th class="cell100 column5">Vote</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                        <%
                            try {
                                con = DatabaseConnection.initializeDatabase();
                                Statement st = (Statement) con.createStatement();
                                String sql = "";
                                String query = request.getParameter("search");
                                if (query != null) {
                                    sql = "select * from register where Fname like '%" + query + "%' or Lname like '%" + query + "%' ";
                                } else {
                                    sql = "select * from register order by ID desc";
                                }
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                        %>
                        <div class="table100-body js-pscroll">
                            <table>
                                <tbody>
                                    <tr class="row100 body">
                                        <td class="cell100 column1"><%=rs.getString(2)%></td>
                                        <td class="cell100 column2"><%=rs.getString(3)%></td>
                                        <td class="cell100 column3"><%=rs.getString(6)%></td>
                                        <td class="cell100 column4"><%=rs.getString(7)%></td>
                                        <td class="cell100 column5">
                                            <form action="voteLogin.jsp" method="post">
                                                <button class="contact100-form-btn">Vote</button>
                                            </form>
                                        </td>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--===============================================================================================-->	
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
        <script>
            $('.js-pscroll').each(function () {
                var ps = new PerfectScrollbar(this);

                $(window).on('resize', function () {
                    ps.update();
                })
            });


        </script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
    </body>
</html>