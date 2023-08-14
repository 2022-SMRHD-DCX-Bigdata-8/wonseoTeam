<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="join.do" method="post" enctype="multipart/form-data">
		ID : <input type="text" name="id" id="checkInput">
		<p id="checkResult"></p>
		PW : <input type="password" name="pw"><br> NAME : <input
			type="text" name="name"><br> TEL : <input type="tel"
			name="tel"><br> EMAIL : <input type="text" name="email"><br>
		PHOTO : <input type="file" name="img"> <input type="submit"
			value="회원가입">
	</form>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script type="text/javascript">
		// 이메일에 대하여 중복 여부 체크 기능!
		// -> input 태그에 내용이 입력되자마자 판단!

		// 페이지 실행과 동시에 해당 기능이 실행되도록 연결!
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
						p.html('사용이 가능한 아이디입니다.').css("color", "black");
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
</body>
</html>