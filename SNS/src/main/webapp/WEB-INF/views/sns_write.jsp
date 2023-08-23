<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/css/sns_write.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap"
	rel="stylesheet">
</head>
<body>
	<div id="knu-container">

		<!-- Header -->
		<div id="knu-header">

			<img class="titleimg" src="https://ifh.cc/g/l4n2xR.png">

		</div>

		<!-- 메뉴 바 -->
		<div id="knu-sidebar1">
			<br>
			<div class="menu">
				<label for="expand-menu"></label> <input type="checkbox"
					id="expand-menu" name="expand-menu">
				<ul>
					<li><a href="goMain.do" class="item"></a></li>
					<li><a href="goSearch.do" class="item"></a></li>
					<li><a href="goProfile.do" class="item"></a></li>
					<li><a href="goUpdate.do" onclick="return update_confirm()"
						class="item"></a></li>
					<li><a href="goWrite.do" class="item"></a></li>
					<li><a href="goMessage.do" class="item"></a></li>
					<li><a href="logout.do" onclick="return logout_confirm()"
						class="item"></a></li>
				</ul>
			</div>
		</div>

		<!-- content -->
		<div id="knu-content">
			<div class="container">
				<form id="formform" action="write.do" method="post"
					enctype="multipart/form-data">
					<br><br>
					<h1>Music Title</h1>
					<input class="change" name="title" type="text"> <br>
					<br>
					<br>
					<h1>User Id</h1>
					<input class="change" name="id" type="text" value="${sessionUser.userId }"
						readonly> <br> <br>
					<br>
					<h1>album art</h1>
					<input name="img" type="file"> <br>
					<br>
					<br>
					<h1>music file</h1>
					<input name="file" type="file"> <br> <br><br><br>
					<br> <input id="button" type="reset" value="reset"><input
						id="button" type="submit" value="submit">
				</form>

			</div>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<script type="text/javascript">
		function logout_confirm() {
			if (confirm("로그아웃하시겠습니까?")) {
				return true;
			} else {
				return false;
			}
		}
	</script>

	<script type="text/javascript">
		function update_confirm() {
			if (confirm("회원정보를 수정하시겠습니까?")) {
				return true;
			} else {
				return false;
			}
		}
	</script>
</body>
</html>