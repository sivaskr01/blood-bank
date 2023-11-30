 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
   table{
    margin-left:500px;
    margin-top:250px;
   }
   table,th,td{
     border:2px solid red;
     border-collapse:collapse;
   }
   tr,td{
    padding:20px;
   }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 

   String name1=request.getParameter("A");
   String age1=request.getParameter("B");
   String bloodgrp1=request.getParameter("C");
   String phoneno1=request.getParameter("D");
   String location1=request.getParameter("E");
   out.print(name1+" "+age1+" "+bloodgrp1+" "+phoneno1+" "+location1);
   try{
   Class.forName("com.mysql.cj.jdbc.Driver");
	Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","@sivaskr2001");
	 java.sql.Statement st=ob.createStatement();
	 
	 String query="insert into getter values('"+name1+"','"+Integer.parseInt(age1)+"','"+bloodgrp1+"','"+phoneno1+"','"+location1+"')";
      
	 int ab=st.executeUpdate(query);
	  if(ab>0) {
		  
		 String query1= "select * from donor where bloodgrp='"+bloodgrp1+"' and location='"+location1+"'";
		 ResultSet re=st.executeQuery(query1);
		 
		 out.println("<html><body><table><tr><th>NAME</th><th>AGE</th><th>BLOODGRP</th><th>PHONE</th><th>LOCATION</th></tr>");
		 while(re.next()){
			 out.print("<tr><td>"+re.getString("name")+"</td><td>"+re.getInt("age")+"</td><td>"+re.getString("bloodgrp")+"</td><td>"+re.getString("phoneno")+"</td><td>"+re.getString("location")+"</td></tr>");
		 }
		 out.println("</table></body></html>"); 
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