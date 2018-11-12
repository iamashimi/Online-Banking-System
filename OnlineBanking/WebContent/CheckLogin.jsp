<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incredible Bank</title>
</head>
<body>
<%
    response.setContentType("text/html");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
     
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/oop?useSSL=false" , "root", "root");
    	Statement st = con.createStatement();
    	String sql = "select * from customer";
    	ResultSet rs = st.executeQuery(sql);
    	boolean flag = false;
    	while(rs.next())
    	{
    		if(username.equals(rs.getString(11)) && password.equals(rs.getString(12)))
    		{
    			flag = true;
    		}
    	}
    	
    	if(flag){
    		out.print("Valid user");
    	 RequestDispatcher rd = request.getRequestDispatcher("/Getcustomer.jsp");
         rd.forward(request, response);}
    	
    	else{
    		out.print("Invaild User Name and Password<br/>");
    		// RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
             //rd.forward(request, response);
    	}
    	
    }catch(Exception e){
    	out.print("Database Error");
    }
    %>

</body>
</html>