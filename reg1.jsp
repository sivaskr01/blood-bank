<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
   String name=request.getParameter("A");
   String pass=request.getParameter("B");
   
   try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
		Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet","root","@sivaskr2001");
		 java.sql.Statement st=ob.createStatement();
		 String query="select * from register where name='"+name+"' and password='"+pass+"'";
		 ResultSet ab=st.executeQuery(query);
		
/* 		 while(ab.next()){
			 out.print("matched");
		 } */
		if(name.equals("siva")&& pass.equals("9597")){
			response.sendRedirect("admin.jsp");
		}
	} catch (Exception e) {
		//throw new ServletException("login failed");
		e.printStackTrace();
	}

%>
</body>
</html>