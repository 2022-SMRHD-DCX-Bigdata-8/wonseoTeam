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
	<div align="center" id="knu-header">
		<img src="assets/img/로고.png">
	</div>
	<div class="wrapper">
		<div class="container">

			<h1 align="center">update user</h1>
			<form action="update.do" method="post" enctype="multipart/form-data">

				<input type="text" name="id" id="checkInput" placeholder="ID"
					value="${sessionUser.userId }" readonly> <input
					type="password" name="pw" placeholder="PW"><br> <input
					type="file" name="img" placeholder="Photo">
				<button class="form_btn">update</button>

			</form>
			<div class="overlay-container">
				<div class="overlay-left">
					<h1></h1>
					<p></p>
					<button id="signIn" class="overlay_btn">Sign In</button>
				</div>
				<div style="visibility: hidden;" class="overlay-right">
					<h1>Hello, Friend</h1>
					<p>Enter your personal details and start journey with us</p>
					<button id="signUp" class="overlay_btn">Sign Up</button>
				</div>
			</div>

		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</body>
</html>