<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noL Login / Join</title>
<link rel="stylesheet" href="assets/css/sns_login_join.css">

<div id="kun-header">
   <img src="C:\Users\smhrd\Desktop\JSP\nonol\src\main\webapp\assets\img\로고3.png">
</div>
</head>
<body>
   <div class="wrapper">
      <div class="container" text-align:right>
         <h1 align="center">Welcome</h1>
         <form action="login.do" method="post">

            <input type="text" name="id" id="checkInput" placeholder="ID">
            <input type="password" name="pw" placeholder="PW"><br>

            <button class="form_btn" style=" font-family: 'IAMAPLAYER';">Login</button>
         </form>
         <form>
                <a href="goJoin.do"
                    style="text-decoration: none; font-weight: bold; color: whitesmoke;  font-family: 'IAMAPLAYER';">Do you join ?</a>         
         </form>
      </div>
   </div>
</body>
</html>