<%--********************************************************************
 *	Java III - Page to show Instructors
 * 	Patricia Rivera	- Spring 2020
 *            AdminInstructors.jsp
 ********************************************************************--%>

<%@page import="BusinessObjects.Instructor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        
        Instructor i1;
        
        i1 = (Instructor)session.getAttribute("i1");

    %>
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
            <a href="logOutServlet" class="logOut">Log Out</a>
            <a href="AdminStudents.jsp">Students</a>
            <a href="AdminCourses.jsp">Courses</a>
            <a href="AdminSections.jsp">Sections</a>
        </div>
        
        <div class="mainpart">
            
            <h1>Instructors</h1>
            
            <br />
            
            <form method="GET" autocomplete="on">
                <table id="students">
                    <tr>
                        <th class="tableText">First Name</th>
                        <th class="tableText">Last Name</th>
                        <th class="tableText">Street</th>
                        <th class="tableText">City</th>
                        <th class="tableText">State</th>
                        <th class="tableText">Zip</th>
                        <th class="tableText">Office</th>
                        <th class="tableText">Email</th>
                    </tr>
                    
                <%
                    int num = 1;
                    int count = 1;
                    int count2 = 2;
                    int count3 = 3;
                    int count4 = 4;
                    int count5 = 5;
                    int count6 = 6;
                    int count7 = 7;
                    int count8 = 8;

                    for(int i = 0; i < i1.instructorList.size(); i++){
                %>
                    <tr>
                        <input type="hidden" id="teacherID" name="teacherID" value="<%=i1.instructorList.get(i)%>" />
                        <th class="tableText"><input type="text" class="teachInput" id="fName<%=num%>" name="fName<%=num%>" value="<%=i1.instructorList.get(count)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="lName<%=num%>" name="lName<%=num%>" value="<%=i1.instructorList.get(count2)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="street<%=num%>" name="street<%=num%>" value="<%=i1.instructorList.get(count3)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="city<%=num%>" name="city<%=num%>" value="<%=i1.instructorList.get(count4)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="state<%=num%>" name="state<%=num%>" value="<%=i1.instructorList.get(count5)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="zip<%=num%>" name="zip<%=num%>" value="<%=i1.instructorList.get(count6)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="office<%=num%>" name="office<%=num%>" value="<%=i1.instructorList.get(count7)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="email<%=num%>" name="email<%=num%>" value="<%=i1.instructorList.get(count8)%>" readonly /></th>
                    </tr>
                <%
                        
                        num = num + 1;
                        count8 = count8 + 9;
                        count7 = count7 + 9;
                        count6 = count6 + 9;
                        count5 = count5 + 9;
                        count4 = count4 + 9;
                        count3 = count3 + 9;
                        count2 = count2 + 9;
                        count = count + 9;
                        i = i + 8;
                    
                    }

                %>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th><input type="hidden" value="Add" /></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </table>
                
            <br />
            <br />
            </form>
            <h1 class="header1">Add Instructor</h1>
            <form method="POST" action="http://localhost:8080/FinalProject/AdminAddInstructor" autocomplete="on">
                <br />

                <table id="addInstructor">
                    <tr>
                        <th class="tableText">First Name: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="infname" name="infname" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Last Name: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="inlname" name="inlname" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Street: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="instreet" name="instreet" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">City: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="incity" name="incity" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">State: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="instate" name="instate" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Zip: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="inzip" name="inzip" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Office: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="inoffice" name="inoffice" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Email: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="inemail" name="inemail" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Add</th>
                        <th class="tableText"><input class="backgroundInput" type="submit" value="Add" /></th>
                    </tr>
                </table>

                <input type="hidden" name="adminU" id="adminUser" value="admin" />
                <input type="hidden" name="adminP" id="adminPass" value="123" />
            </form> 
        </div>        
        <!---------- Bottom Bar ------------->
        <div class="bottom">
            <p class="creator">Creator: Patricia Rivera &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Created/Update: 2020</p>
        </div>
    </body>
</html>
