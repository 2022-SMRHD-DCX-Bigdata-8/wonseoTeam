<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noL Join</title>
<link rel="stylesheet" href="assets/css/sns_join.css">
</head>
<body>
	<div align="center" id="knu-header">
		<img src="assets/img/3.png">
	</div>
	<div class="wrapper">
		<div class="container"  text-align:right>

			<h1 align="center">create user</h1>
			<form action="join.do" method="post" enctype="multipart/form-data">

				<input type="text" name="id" id="checkInput" placeholder="ID">
				<p id="checkResult"></p>
				<input type="password" name="pw" placeholder="PW"><br>
				<input type="text" name="name" placeholder="Name"><br>
				<input type="tel" name="tel" placeholder="Tel"><br> <input
					type="text" name="email" placeholder="E-mail"><br> <input
					type="file" name="img" placeholder="Photo">
				<button class="form_btn">create</button>

			</form>
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
			<script type="text/javascript">
				$(document).ready(function() {
					var input = $('#checkInput')
					input.on('input', idCheck);
				});

				// emailCheck 기능 만들기!
				function idCheck() {
					// 입력된 값이 DB에 존재하는지 확인 필요!

					// input에 입력되는 값을 바로 가져오는 명령!
					var value = $(this).val();

					$.ajax({
						url : 'idCheck.do',
						type : 'post',
						data : {
							"id" : value
						},
						success : function(res) {
							// 사용여부 알려주기!
							var p = $('#checkResult');

							if (res == "true") {
								p.html('사용이 가능한 아이디입니다.').css("color", "blue");
							} else {
								p.html('사용이 불가능한 아이디입니다.').css("color", "red");
							}
						},
						error : function(e) {
							alert('실패');
						}
					});
				}
			</script>

		</div>
	</div>
</body>
</html>