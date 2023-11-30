<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
   background-image:url('https://wallpapercave.com/wp/wp4323461.png');
   background-size:100% 100%;
   background-repeat:no-repeat;
   height:585px;
   }
   .skr{
   font-size:20px;
   margin-left:680px;
   margin-top:150px;
   }
   .skr form input{
       width:250px;
       height:25px;
       font-size:110%;
       text-align:center;
   }
   </style>
<body>
<div class="skr">
 <h3 style="color:white ; font-size:180%;margin-left:50px">DONOR</h3>
<form action="blooddonor.jsp" method="post">
   Name<br><input type="text" name="A"><br><br>
   Age<br><input type="text" name="B"><br><br>
   Bloodgrp<br><input type="text" name="C"><br><br>
   Phoneno<br><input type="text" name="D"><br><br>
   Location<br><input type="text" name="E"><br><br><br>
   <input type="submit" value="Submit" style="font-size:95%">
</form>
</div>
</body>
</html>