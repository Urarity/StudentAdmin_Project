<%--********************************************************************
 *	Java III - Page to show when Admin is Invalid
 * 	Patricia Rivera	- Spring 2020
 *            AdminInvalid.jsp
 ********************************************************************--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Invalid</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="shortcut icon" type="image/x-icon" href="images/stack_books.png" />
    </head>
    <body>
        <!---------- Navbar ------------->
        <div class="navbar">
            <a href="index.jsp">Try Again?</a>
        </div>
        
        <div class="mainpart">
            <h1 class="invalidHeader">Invalid Login</h1>
            <p class="errorMessage">${error}</p>
        </div>
            
        <!---------- Bottom Bar ------------->
        <div class="bottom">
            <p class="creator">Creator: Patricia Rivera</p>
        </div>
    </body>
</html>
