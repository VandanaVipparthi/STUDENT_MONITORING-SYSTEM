<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<%@ page import="java.sql.*" %>
<%
    String firstname=request.getParameter("firstname");
    String lastname=request.getParameter("lastname");
    String gender=request.getParameter("gender");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String number=request.getParameter("number");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/project?characterEncoding=latin1","root","");
        PreparedStatement ps=con.prepareStatement("insert into test(firstname,lastname,gender,email,password,number) values(?,?,?,?,?,?);");
        ps.setString(1,firstname);
        ps.setString(2,lastname);
        ps.setString(3,gender);
        ps.setString(4,email);
        ps.setString(5,password);
        ps.setString(6,number);
        int x=ps.executeUpdate();
        if(x>0){
        %>
        <div class="p-3 mb-2 bg-success text-white">Registered succesfully...</div>
        <a href="title.jsp">Click here to go to homepage</a>
        <%
        }}
    catch(Exception e){
        %>
        <div class="p-3 mb-2 bg-success text-white">User already exists with these details!</div>
        <a href="title.jsp">Click here to go to homepage</a>
        <%
        //out.println(e);
    }
%> 
</body>
</html>   