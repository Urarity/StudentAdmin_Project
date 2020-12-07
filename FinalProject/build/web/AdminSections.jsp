<%--********************************************************************
 *	Java III - Page to show Sections
 * 	Patricia Rivera	- Spring 2020
 *              AdminSections.jsp
 ********************************************************************--%>

<%@page import="BusinessObjects.Section"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    
        Section s2;
        
        s2 = (Section)session.getAttribute("s2");

    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Sections</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="shortcut icon" type="image/x-icon" href="images/stack_books.png" />
        <script src="js/check.js"></script>
    </head>
    <body>
        <!---------- Navbar ------------->
        <div class="navbar">
            <a href="logOutServlet" class="logOut">Log Out</a>
            <a href="AdminInstructors.jsp">Instructors</a>
            <a href="AdminStudents.jsp">Students</a>
            <a href="AdminCourses.jsp">Courses</a>
        </div>
        
                <div class="mainpart">
            <h1>Students</h1>
            
            <br />
            
            <form name="StudentProfileForm" method="GET" id="StudentProfileForm" action="http://localhost:8080/StudentAdmin/AdminAddSection" autocomplete="on">
                <table id="studentInfo">
                    <tr>
                        <th class="tableText">CRN</th>
                        <th class="tableText">Course ID</th>
                        <th class="tableText">Time Days</th>
                        <th class="tableText">Room Number</th>
                        <th class="tableText">Instructor</th>
                    </tr>
                    <%  
                        int num = 1;
                        int count = 1;
                        int count2 = 2;
                        int count3 = 3;
                        int count4 = 4;

                        for (int i = 0; i < s2.sList.size(); i++){
                    %>
                    
                        <tr>
                            <th class="tableText"><input type="text" class="backgroundInput" id="crn<%=num%>" name="crn<%=num%>" value="<%=s2.sList.get(i)%>" readonly="readonly" /></th>
                            <th class="tableText"><input type="text" class="backgroundInput" id="courseID<%=num%>" name="courseID<%=num%>" value="<%=s2.sList.get(count4)%>" readonly="readonly" /></th>   
                            <th class="tableText"><input type="text" class="backgroundInput" id="timeDays<%=num%>" name="timeDays<%=num%>" value="<%=s2.sList.get(count)%>" readonly="readonly" /></th> 
                            <th class="tableText"><input type="text" class="backgroundInput" id="roomNo<%=num%>" name="roomNo<%=num%>" value="<%=s2.sList.get(count2)%>" readonly="readonly" /></th>
                            <th class="tableText"><input type="text" class="backgroundInput" id="instructor<%=num%>" name="instructor<%=num%>" value="<%=s2.sList.get(count3)%>" readonly="readonly" /></th>
                        </tr>
                    
                    <%
                            
                            num = num + 1;
                            count4 = count4 + 5;
                            count3 = count3 + 5;
                            count2 = count2 + 5;
                            count = count + 5;
                            i = i + 4;

                        }
                        
                    %>
                    
                        <th class="tableText"><input type="hidden" id="good_bad" name="good_bad" /></th>
                        <th class="tableText"></th>
                        <th class="tableText"><input type="hidden" id="adminBTN<%=num%>" name="adminBTN<%=num%>" value="Add" onclick="adminPage()" /></th>
                        <th class="tableText"><input type="hidden" id="continue" name="continue" /></th>
                        <th></th>
                </table>
            </form>
            <h1 class="header1">Add Section</h1>
            <form method="POST" action="http://localhost:8080/FinalProject/AdminAddSection" autocomplete="on">
                <br />

                <table id="addInstructor">
                    <tr>
                        <th class="tableText">CRN: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="crn" name="crn" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Course ID: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="courseID" name="courseID" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">TimeDays: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="timedays" name="timedays" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">RoomNo: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="roomNo" name="roomNo" /></th>
                    </tr>
                    <tr>
                        <th class="tableText">Instructor ID: </th>
                        <th class="tableText"><input class="backgroundInput" type="text" id="instructorID" name="instructorID" /></th>
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
