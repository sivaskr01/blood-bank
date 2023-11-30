<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 

   String name=request.getParameter("A");
   String age=request.getParameter("B");
   String bloodgrp=request.getParameter("C");
   String phoneno=request.getParameter("D");
   String location=request.getParameter("E");
   try{
   Class.forName("com.mysql.cj.jdbc.Driver");
	Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodgroup","root","@sivaskr2001");
	 java.sql.Statement st=ob.createStatement();
	 String query="insert into donor  values('"+name+"','"+age+"','"+bloodgrp+"','"+phoneno+"','"+location+"')";
	 int ab=st.executeUpdate(query);
	  if(ab>0) {
		  out.print("thanks for donating");
		  //out.print("inserted successfull");
	  }
	  else {
		  out.print("not inserted");
	  }
} catch (Exception e) {
	//throw new ServletException("login failed");
	e.printStackTrace();
}

%>
</body>
</html>