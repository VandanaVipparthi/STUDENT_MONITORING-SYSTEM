<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
	<div class="container">
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
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from test ");
    %>
        <table class="table"><tr>
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
        <br>
        <form action="">
        	<div class="form-group">
        	<input type="text" name="id" >
        	<input type="submit" name="submit" value="DELETE">
        </div>
        </form>

        <br>
        <%
        String id=request.getParameter("id");
        int i=st.executeUpdate("DELETE FROM test WHERE id="+id);
        if(i>0){
        	%>
        <div class="p-3 mb-2 bg-success text-white">User deleted succesfully! Refresh page to see results</div>
        <%
        }
        con.close();   
    }
    catch(Exception e){
        System.out.println(e);
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