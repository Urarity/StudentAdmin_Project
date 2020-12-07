<%--********************************************************************
 *	Java III - Page to show Courses
 * 	Patricia Rivera	- Spring 2020
 *            AdminCourses.jsp
 ********************************************************************--%>

<%@page import="BusinessObjects.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    
        Course c1;
        
        c1 = (Course)session.getAttribute("c1");

    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Courses Page</title>
        <link rel="stylesheet" href="css/main.css">
        <script src="js/check.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="images/stack_books.png" />
    </head>
    <body>
        <!---------- Navbar ------------->
        <div class="navbar">
            <a href="logOutServlet" class="logOut">Log Out</a>
            <a href="AdminInstructors.jsp">Instructors</a>
            <a href="AdminStudents.jsp">Students</a>
            <a href="AdminSections.jsp">Sections</a>
        </div>
    
        <div class="mainpart">
            <h1>Courses</h1>
            
            <br />
            
            <form name="StudentProfileForm" method="GET" id="StudentProfileForm" action="http://localhost:8080/FinalProject/AdminAddCourse" autocomplete="on">
                <table id="students">
                    <tr>
                        <th class="tableText">Course ID</th>
                        <th class="tableText">Course Name</th>
                        <th class="tableText">Description</th>
                        <th class="tableText">Credit Hours</th>
                    </tr>

                    <%  
                        int num = 1;
                        int count = 1;
                        int count2 = 2;
                        int count3 = 3;

                        for (int i = 0; i < c1.courseList.size(); i++){
                    %>

                        <tr>
                            <th class="tableText"><input type="text" class="backgroundInput" id="courseID<%=num%>" name="courseID<%=num%>" value="<%=c1.courseList.get(i)%>" readonly="readonly" /></th>
                            <th class="tableText"><input type="text" class="backgroundInput" id="courseName<%=num%>" name="courseName<%=num%>" value="<%=c1.courseList.get(count)%>" readonly="readonly" /></th>
                            <th class="tableText"><input type="text" class="backgroundInput" id="description<%=num%>" name="description<%=num%>" value="<%=c1.courseList.get(count2)%>" readonly="readonly" /></th>
                            <th class="tableText"><input type="text" class="backgroundInput" id="creditHours<%=num%>" name="creditHours<%=num%>" value="<%=c1.courseList.get(count3)%>" readonly="readonly" /></th>
                        </tr>

                    <%
                            num = num + 1;
                            count3 = count3 + 4;
                            count2 = count2 + 4;
                            count = count + 4;
                            i = i + 3;
                        }

                    %>

                    <th class="tableText"><input type="hidden" id="good_bad" name="good_bad" /></th>
                    <th class="tableText"></th>
                    <th class="tableText"><input type="hidden" id="adminBTN<%=num%>" name="adminBTN<%=num%>" value="Add" onclick="adminPage()" /></th>
                    <th class="tableText"></th>
                </table>
            </form>
            <h1 class="header1">Add Course</h1>
            <form method="POST" action="http://localhost:8080/FinalProject/AdminAddCourse" autocomplete="on">
                <br />

                <table id="addInstructor">
                    <tr>
                        <th class="tableText">Course ID: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="infname" name="courseID" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Course Name: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="inlname" name="courseName" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Description: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="instreet" name="courseDesc" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Credit Hours: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="incity" name="courseHours" /></th>
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
