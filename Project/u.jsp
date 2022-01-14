<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<%@ page import="java.sql.*"%>
<%
    String firstname=request.getParameter("firstname");
    String lastname=request.getParameter("lastname");
    String gender=request.getParameter("gender");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String number=request.getParameter("number");
    String id=request.getParameter("id");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/project?characterEncoding=latin1","root","");
        PreparedStatement ps=con.prepareStatement("update test set firstname=?,lastname=?,gender=?,email=?,password=?,number=? where id=id;");
        
        ps.setString(1,firstname);
        ps.setString(2,lastname);
        ps.setString(3,gender);
        ps.setString(4,email);
        ps.setString(5,password);
        ps.setString(6,number);
        int x=ps.executeUpdate();
        if(x>0){
        %>
        <div class="p-3 mb-2 bg-success text-white">Updated succesfully... </div>
        <%
        }
        else{
            %>
        <div class="p-3 mb-2 bg-success text-white">Cannot be updated retry!!</div>
        
        <%
        }}
    catch(Exception e){
        %>
        <div class="p-3 mb-2 bg-success text-white">Updated succesfully... </div>
        <%
    }
%> 
</body>
</html>   