<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
	<div class="container ">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h1>STUDENT DETAILS</h1>
            </div>
            <div class="panel-body">
                <form action="">
                    <div class="form-group">
                    <input type="text" name="id" >
                    </div>
                    <input type="submit" name="submit" value="UPDATE">
                </form>
<%@ page import="java.sql.*" %>
<%
    try{
        String id=request.getParameter("id");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/project?characterEncoding=latin1","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from test where id="+id);
        while(rs.next()){
        %>
        <form action="u.jsp" >
            
                    <div class="form-group">
                        <label for="firstname">First Name</label>
                        <input type="text" class="form-control" name="firstname" value="<%= rs.getString(2)%>" >
                    </div>
                    <div class="form-group">
                        <label for="lastname">Last Name</label>
                        <input type="text" class="form-control" id="lastname" name="lastname" value="<%= rs.getString(3)%>">
                    </div>
                    <div class="form-group">
                        <label for="email">Email id</label>
                        <input type="text" class="form-control" name="email" id="email" value="<%= rs.getString(5)%>">
                    </div>
                    <div class="form-group">
                        <label for="male">Gender</label>
                        <div>
                            <label for="male" class="radio-inline"><input type="radio" name="gender" value="m" id="male">Male</label>

                            <label for="female" class="radio-inline"><input type="radio" name="gender" value="f" id="female">Female</label>

                            <label for="others" class="radio-inline"><input type="radio" value="0" name="gender" id="others">Others</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password">Password </label>
                        <input type="password" name="password" class="form-control" id="password" value="<%= rs.getString(6)%>">
                    </div>
                    <div class="form-group">
                        <label for="number">Phone Number </label>
                        <input type="text" name="number" class="form-control" id="number" value="<%= rs.getString(7)%>">
                    </div>
                    <input type="submit" name="submit" class="btn btn-primary" value="Submit">
                </form>
        
<%
}
        
        con.close();   
    }
    catch(Exception e){
        
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