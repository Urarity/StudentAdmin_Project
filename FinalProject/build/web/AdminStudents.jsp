<%--********************************************************************
 *	Java III - Page to show Students
 * 	Patricia Rivera	- Spring 2020
 *            AdminStudents.jsp
 ********************************************************************--%>

<%@page import="BusinessObjects.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        
        Student s1;
        
        s1 = (Student)session.getAttribute("s1");

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
            <a href="AdminInstructors.jsp">Instructors</a>
            <a href="AdminCourses.jsp">Courses</a>
            <a href="AdminSections.jsp">Sections</a>
        </div>
        
        <div class="main">
            
            <br />
            <br />
            
            <h1 class="header1">Students</h1>
            
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
                int count9 = 9;
                
                for(int i = 0; i < s1.studentList.size(); i++){
            %>
                    <tr>
                        <input type="hidden" id="studentID" name="studentID" value="<%=s1.studentList.get(i)%>" />
                        <th class="tableText"><input type="text" class="teachInput" id="fName<%=num%>" name="fName<%=num%>" value="<%=s1.studentList.get(count)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="lName<%=num%>" name="lName<%=num%>" value="<%=s1.studentList.get(count2)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="street<%=num%>" name="street<%=num%>" value="<%=s1.studentList.get(count3)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="city<%=num%>" name="city<%=num%>" value="<%=s1.studentList.get(count4)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="state<%=num%>" name="state<%=num%>" value="<%=s1.studentList.get(count5)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="zip<%=num%>" name="zip<%=num%>" value="<%=s1.studentList.get(count6)%>" readonly /></th>
                        <th class="tableText"><input type="text" class="teachInput" id="email<%=num%>" name="email<%=num%>" value="<%=s1.studentList.get(count7)%>" readonly /></th>
                        <input type="hidden" id="GPA" name="GPA" value="<%=s1.studentList.get(count8)%>" />
                        <input type="hidden" id="GPA" name="pass" value="<%=s1.studentList.get(count9)%>" />
                    </tr>
            
            <%
                    
                    num = num + 1;
                    count =  count + 10;
                    count2 = count2 + 10;
                    count3 = count3 + 10;
                    count4 = count4 + 10;
                    count5 = count5 + 10;
                    count6 = count6 + 10;
                    count7 = count7 + 10;
                    count8 = count8 + 10;
                    count9 = count9 + 10;
                    i = i + 9;
                }

            %>
                </table>
            </form>
            <h1 class="header1">Add Student</h1>
            <form method="POST" action="http://localhost:8080/FinalProject/AdminAddStudent" autocomplete="on">
                <br />

                <table id="addInstructor">
                    <tr>
                        <th class="tableText">First Name: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="stfname" name="stfname" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Last Name: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="stlname" name="stlname" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Street: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="ststreet" name="ststreet" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">City: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="stcity" name="stcity" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">State: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="ststate" name="ststate" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Zip: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="stzip" name="stzip" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Email: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="stemail" name="stemail" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Add</th>
                        <th class="tableText"><input class="backgroundInput" type="submit" value="Add" /></th>
                    </tr>
                </table>

                <input type="hidden" name="adminU" id="adminUser" value="admin" />
                <input type="hidden" name="adminP" id="adminPass" value="123" />
                <input type="hidden" name="page" id="page" value="" />
            </form>
            <br />
            <br />
        </div>    
        
        <!---------- Bottom Bar ------------->
        <div class="bottom">
            <p class="creator">Creator: Patricia Rivera &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Created/Update: 2020</p>
        </div>
    </body>
</html>
