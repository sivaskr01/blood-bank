<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
  
  body{
      background-color: #fff;
    background-image: linear-gradient(45deg,#efefef 25%,rgba(239,239,239,0) 25%,rgba(239,239,239,0) 75%,#efefef 75%,#efefef),linear-gradient(45deg,#efefef 25%,rgba(239,239,239,0) 25%,rgba(239,239,239,0) 75%,#efefef 75%,#efefef);
    background-position: 0 0,10px 10px;
    background-size: 21px 21px;
  }
  h3{
  font-size:30px;
   text-align:center;
   margin-top:50px;
   }
   table{
    margin-left:540px;
    margin-top:40px;
   }
   table,th,td{
     border:2px solid red;
     border-collapse:collapse;
   }
   tr,td{
    padding:5px;
   }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h3> BLOOD DONORS</h3>
  <% Class.forName("com.mysql.cj.jdbc.Driver");
		Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodgroup","root","@sivaskr2001");
		 java.sql.Statement st=ob.createStatement();
		 	String query="select * from donor";
		 	ResultSet ab=st.executeQuery(query);
		 	
		 	out.println("<html><body><table><tr><th>NAME</th><th>AGE</th><th>BLOODGRP</th><th>PHONE</th><th>LOCATION</th></tr>");
		 	
		 	 while(ab.next()){
		 		out.print("<tr><td>"+ab.getString("name")+"</td><td>"+ab.getString("age")+"</td><td>"+ab.getString("bloodgrp")+"</td><td>"+ab.getString("phoneno")+"</td><td>"+ab.getString("location")+"</td></tr>");
		 	 }
		 	 
		 	 out.println("</table></body></html>");
		 	  	 
 %>
 <div class="sk"> 
 <h3> BLOOD GETTERS</h3>	
 </div>
    	 
 <%
   
   String bloodgrp1=request.getParameter("A");
   String location1=request.getParameter("B");
  try{
	  response.setContentType("text/html");
	  
   Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","@sivaskr2001");
	 java.sql.Statement sta=con.createStatement();
	 String query1="select * from getter";
	 ResultSet res=sta.executeQuery(query1);
	 out.println("<html><body><table><tr><th>NAME</th><th>AGE</th><th>BLOODGRP</th><th>PHONE</th><th>LOCATION</th></tr>");
	
	 while(res.next()){
		out.print("<tr><td>"+res.getString("name")+"</td><td>"+res.getString("age")+"</td><td>"+res.getString("bloodgrp")+"</td><td>"+res.getString("phoneno")+"</td><td>"+res.getString("location")+"</td></tr>");
	 }
	 
	 out.println("</table></body></html>");
	 
  }catch (Exception e) {
		//throw new ServletException("login failed");
		e.printStackTrace();
	}
 %>

</body>
</html>