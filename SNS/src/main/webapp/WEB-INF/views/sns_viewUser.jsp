<%@page import="com.smhrd.entity.sns_userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_viewUser.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">
<style>
.move-right {
	margin-left: 44.2%; /* 오른쪽 여백을 최대로 설정하여 오른쪽으로 이동 */
	display: block; /* 버튼을 블록 요소로 변환하여 너비 설정 가능 */
}
</style>
</head>
<body>
	<script src="assets/js/sns_profile.js"></script>

	<div id="knu-container">

		<!-- Header -->
		<div id="knu-header">

			 <img class="titleimg"src="https://ifh.cc/g/l4n2xR.png">

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
					<li><a href="goUpdate.do" class="item"></a></li>
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

				<!-- 프사 업로드 칸 -->
				<div class="avatar-upload">
					<div style="visibility: hidden;" class="avatar-edit">
						<input type='file' id="imageUpload" name="changeImg"
							accept=".png, .jpg, .jpeg" /> <label for="imageUpload"></label>
					</div>

					<!-- 프사 이미지 -->
					<div class="avatar-id">
						<!-- 프사 기본 이미지로 일단 해뒀음 -->
						<div id="imagePreview"
							style="background-image: url(save/${user.userPhoto });"></div>
						<h1>${user.userId }</h1>
						<hr>
						<h1>
							<small style="visibility: hidden;">user tag</small>
					</div>
					</h1>
				</div>
				<br>
			</div>
			<br>

			<!-- 버튼은 숨겨둠 -->
			<div class="profile-userbuttons">
				<button type="button" id="fButton"
					class="btn btn-success btn-sm move-right" align="center">Follow</button>
				<button style="visibility: hidden;" type="button"
					class="btn btn-danger btn-sm">Message</button>
			</div>
			<br>

			<!-- 가운데 게시물이랑 뜨는 공간 -->
			<div style="display:none;" class="portlet light bordered">
			</div>
			<br>
			<h2 align="center">musiclist</h2>
			<br>
			<div id="list_box">
				<ul id="photo_list">
				</ul>
			</div>
			<div id="list_button">
				<div>
					<button name="next_button" onclick="getData()"></button>
					<img src="assets/img/왼쪽.png" alt="사진 앞으로">
				</div>
				<div>
					<button name="next_button" onclick="getData()"></button>
					<img src="assets/img/오른쪽.png" alt="사진 앞으로">
				</div>
			</div>

		</div>
	</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			var followerId = `${sessionUser.userId}`;
			var followingId = `${user.userId}`;
			$.ajax({
				type : 'get',
				url : 'followCheck.do',
				data : {
					"followerId" : followerId,
					"followingId" : followingId
				},
				success : function(res) {
					let followerCount = $('#followerCount');
					followerCount.html(res);
				},
				error : function(e) {
					console.log("오류 발생");
				}
			});
		})
	</script>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#fButton').click(function() {
				var followerId = `${sessionUser.userId}`;
				var followingId = `${user.userId}`;
				$.ajax({
					type : 'get',
					url : 'follow.do',
					data : {
						"followerId" : followerId,
						"followingId" : followingId
					},
					success : function(res) {
						let fbutton = $('#fButton');
						fbutton.html(res);
						var followerId = `${sessionUser.userId}`;
						var followingId = `${user.userId}`;
						$.ajax({
							type : 'get',
							url : 'followCheck.do',
							data : {
								"followerId" : followerId,
								"followingId" : followingId
							},
							success : function(res) {
								let followerCount = $('#followerCount');
								followerCount.html(res);
							},
							error : function(e) {
								console.log("오류 발생");
							}
						});

					},
					error : function(e) {
						console.log(res);
					}
				});
			})
		})
	</script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var postId = `${user.userId}`;
			console.log(postId);
			$.ajax({
				type : 'get',
				url : 'loadMusic.do',
				data : {
					"id" : postId
				},
				dataType : 'json',
				success : function(res){
					let photo_list = $('#photo_list');
					photo_list.html('');
					j = 1;
					for (let i = 0;i <res.length;i++){
						tr = "<li>";
						tr += "<a href=\"goViewMusic.do?titlex="
							+ res[i].musicSeq+"\">";
						tr += "<img src=\"save/"+ res[i].musicPhoto	+ "\" alt=\"photo"+j+"\" onerror=\"this.src='https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800'\">";
						tr += "</a></li>";
						j++;
						console.log(j);
					photo_list.append(tr);
					}
				},
				error : function(e){
					console.log('요청실패');
				}
			});
		})
	</script>
</body>
</html>