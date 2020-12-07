<%--********************************************************************
 *	Java III - Page to be given when something is added to the Database
 * 	Patricia Rivera	- Spring 2020
 *            AddedToDatabase.jsp
 ********************************************************************--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Instructors</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="shortcut icon" type="image/x-icon" href="images/stack_books.png" />
        <script src="js/check.js"></script>
    </head>
    <body>
        <!---------- Navbar ------------->
        <div class="navbar">
            <form name="StudentLoginServlet" method="post" id="StudentProfileForm" action="http://localhost:8080/FinalProject/AdminLoginServlet" autocomplete="on">
                <input type="submit" class="btns" value="Go Back"/>
                <input type="hidden" id="adminUser" name="adminUser" value="admin" />
                <input type="hidden" id="adminPass" name="adminPass" value="123" />
            </form>
        </div>

        <div class="main">
            <h1 id="successfull">Successfully Updated Database</h1>
        </div>
        
        <!---------- Bottom Bar ------------->
        <div class="bottom">
            <p class="creator">Creator: Patricia Rivera &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Created/Update: 2020</p>
        </div>
    </body>
</html>
