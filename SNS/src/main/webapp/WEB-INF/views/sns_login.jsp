<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_login_join.css">
</head>
<body>
	<div class="wrapper">
		<div class="container" text-align:right>
			<h1 align="center">로그인</h1>
			<form action="login.do" method="post">

				<input type="text" name="id" id="checkInput" placeholder="ID">
				<input type="password" name="pw" placeholder="PW"><br>

				<button class="form_btn">로그인</button>
			</form>

			<a href="goJoin.do"
				style="text-decoration: none; font-weight: bold; background: #efefef; color: red;">회원가입하시겠습니까?</a>
		</div>
	</div>
</body>
</html>