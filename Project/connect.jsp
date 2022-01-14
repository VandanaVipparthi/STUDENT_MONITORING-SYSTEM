<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<%@ page import="java.sql.*" %>
<%
    String password=request.getParameter("password");
    String username=request.getParameter("username");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/project?characterEncoding=latin1","root","");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from test where lastname='"+username+"'and password='"+password+"' ");
        if(rs.next()){
        String firstname=rs.getString(1);
        String lastname=rs.getString(2);
        String gender=rs.getString(3);
        String email=rs.getString(4);
        //String password=rs.getString(5);
        String number=rs.getString(6);
        %>
        <div class="p-3 mb-2 bg-success text-white">Logged in succesfully...</div>
        <a href="title.jsp">Click here to go to homepage</a>
        <%
        }
        else{
            %>
        <div class="p-3 mb-2 bg-success text-white">User not registered !</div>
        <a href="register.html">New user register here!</a>
        <%
        }
        }

    catch(Exception e){
        %>
        <div class="p-3 mb-2 bg-success text-white">User not registered !</div>
        <a href="register.html">New user register here!</a>
        <%
        //out.println(e);
    }
%> 
</body>
</html>   