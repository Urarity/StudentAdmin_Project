<%--********************************************************************
 *	Java III - Page for the admin to login
 * 	Patricia Rivera	- Spring 2020
 *            AdminLogin.java
 ********************************************************************--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="shortcut icon" type="image/x-icon" href="images/stack_books.png" />
        <script src="js/check.js"></script>
    </head>
    <body>
        <!---------- Navbar ------------->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="StudentLogin.jsp">Student Login</a>
    </div>
        <body>
            <div class="mainpart">      
                <form action="http://localhost:8080/FinalProject/AdminLoginServlet" method="post">
                    <div id="adminLogin">
                        <br />
                        <h1 class="header1">Admin Login</h1>

                        <div class="label_txt">
                            <label>Username: </label>
                            <input type="text" id="adminUser" name="adminUser" pattern="^[a-z]+$" oninvalid="wrongAdminUser()" onchange="resetAdminUser()" required/>
                        </div>

                        <br />

                        <div class="label_txt">
                            <label>Password: </label>
                            <input type="text" id="adminPass" name="adminPass" pattern="^[0-9]+$" oninvalid="wrongAdminPass()" onchange="resetAdminPass()" required />
                        </div>

                        <br />

                        <input type="submit" name="Login" value="Login" />
                        <input type="hidden" name="adminU" id="adminUser" value="" />
                        <input type="hidden" name="adminP" id="adminPass" value="" />
                    </div>
                </form>
            </div>
        <div class="bottom">
            <p class="creator">Creator: Patricia Rivera &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Created/Update: 2020</p>
        </div>
    </body>
</html>
