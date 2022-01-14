<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <title>Student details</title>
</head>
<body>
    <div class="container ">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h1>STUDENT DETAILS</h1>
            </div>
            <div class="panel-body">
<%@ page import="java.sql.*" %>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/project?characterEncoding=latin1","root","");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from test ");
    %>
        <table class="table" ><tr>
        <th>Id</th>
        <th>FirstName</th>
        <th>LastName</th>
        <th>Gender</th>
        <th>email</th>
        <th>number</th></tr><%
        while(rs.next()){
        %>
        <tr>
            <td><%= rs.getString(1)%></td>
            <td><%= rs.getString(2)%></td>
            <td><%= rs.getString(3)%></td>
            <td><%= rs.getString(4)%></td>
            <td><%= rs.getString(5)%></td>
            <td><%= rs.getString(7)%></td>
        </tr>
        <%
        }
        %>
        </table>
        <%
            con.close();
    }
    catch(Exception e){
        out.println(e);
    }
%> 
<div class="panel-footer text-right">
                <a href="title.jsp">Click here to go to homepage</a>
            </div>
        </div>
    </div>  
</div>
</body>
</html>   