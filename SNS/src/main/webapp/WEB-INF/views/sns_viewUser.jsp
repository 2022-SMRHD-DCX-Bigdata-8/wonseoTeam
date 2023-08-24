<%@page import="com.smhrd.entity.sns_userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_profile.css">
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

			<img class="titleimg" src="assets/img/로고.png">

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
				<div class="portlet light bordered">
					<div class="row list-separated profile-stat">
						<div style="border: 1px; float: left; width: 33%;"
							class="col-md-4 col-sm-4 col-xs-6">
							<div style="visibility: hidden;"
								class="uppercase profile-stat-title">37</div>
							<div style="visibility: hidden;"
								class="uppercase profile-stat-text">Projects</div>
						</div>
						<div style="border: 1px; float: left; width: 33%;"
							class="col-md-4 col-sm-4 col-xs-6">
							<div class="uppercase profile-stat-title" id="followerCount">51</div>
							<div class="uppercase profile-stat-text">Follow</div>
						</div>
						<div style="border: 1px; float: left; width: 33%;"
							class="col-md-4 col-sm-4 col-xs-6">
							<div style="visibility: hidden;"
								class="uppercase profile-stat-title">61</div>
							<div style="visibility: hidden;"
								class="uppercase profile-stat-text">Uploads</div>
						</div>
						<div style="display: none;"
							style="border: 1px; float: left; width: 50%;">
							<h2 align="center">Title Music</h2>
						</div>
						<div style="display: none;"
							style="border: 1px; float: left; width: 0%;">
							<h2></h2>
						</div>
						<div style="display: none;"
							style="border: 1px; float: left; width: 50%;">
							<h2 align="center">Music List</h2>
						</div>
					</div>
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
						<button style="visibility: hidden;" name="next_button"
							onclick="getData()"></button>
						<img src="assets/img/왼쪽.png" alt="사진 뒤로">
					</div>
					<div>
						<button style="visibility: hidden;" name="next_button"
							onclick="getData()"></button>
						<img src="assets/img/오른쪽.png" alt="사진 앞으로">
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<script>
		$(".menu").mouseenter(function() {
			$(this).children("ul").stop().slideDown(400);
		});
		$(".menu").mouseleave(function() {
			$(this).children("ul").stop().slideUp(100);
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			var front_btn = $("#list_button >:first-child");
			var back_btn = $("#list_button >:last-child");

			front_btn.on("click", function(e) {
				$("#photo_list").animate({
					"left" : "+=675px"
				})
			})
			back_btn.on("click", function(e) {
				$("#photo_list").animate({
					"left" : "-=675px"
				})
			})
		});
	</script>

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

	<script type="text/javascript">
		$(document).ready(function() {
			var id = `${user.userId}`;
			$.ajax({
				type : 'get',
				url : 'count.do',
				data : {
					"id" : id
				},
				success : function(res) {
					let followerCount = $('#followerCount');
					followerCount.html(res)
				},
				error : function(e) {
					console.log("오류 생김");
				}
			});
		})
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			var followerId = `${sessionUser.userId}`;
			var followingId = `${user.userId}`;
			$.ajax({
				type : 'get',
				url : 'firstFollowCheck.do',
				data : {
					"followerId" : followerId,
					"followingId" : followingId
				},
				success : function(res) {
					let fButton = $('#fButton');
					fButton.html(res);
					console.log(res);
				},
				error : function(e) {
					console.log("오류 발생");
				}
			});
		})
	</script>


	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#fButton')
									.click(
											function() {
												var followerId = `${sessionUser.userId}`;
												var followingId = `${user.userId}`;
												$
														.ajax({
															type : 'get',
															url : 'follow.do',
															data : {
																"followerId" : followerId,
																"followingId" : followingId
															},
															success : function(
																	res) {
																let fbutton = $('#fButton');
																fbutton
																		.html(res);
																var followerId = `${sessionUser.userId}`;
																var followingId = `${user.userId}`;
																$
																		.ajax({
																			type : 'get',
																			url : 'followCheck.do',
																			data : {
																				"followerId" : followerId,
																				"followingId" : followingId
																			},
																			success : function(
																					res) {
																				var id = `${user.userId}`;
																				$
																						.ajax({
																							type : 'get',
																							url : 'count.do',
																							data : {
																								"id" : id
																							},
																							success : function(
																									res) {
																								let followerCount = $('#followerCount');
																								followerCount
																										.html(res)
																							},
																							error : function(
																									e) {
																								console
																										.log("오류 생김");
																							}
																						});

																			},
																			error : function(
																					e) {
																				console
																						.log("오류 발생");
																			}
																		});

															},
															error : function(e) {
																console.log(e);
															}
														});
											})
						})
	</script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var postId = `${user.userId}`;
							console.log(postId);
							$
									.ajax({
										type : 'get',
										url : 'loadMusic.do',
										data : {
											"id" : postId
										},
										dataType : 'json',
										success : function(res) {
											let photo_list = $('#photo_list');
											photo_list.html('');
											j = 1;
											for (let i = 0; i < res.length; i++) {
												tr = "<li>";
												tr += "<a href=\"goViewMusic.do?titlex="
														+ res[i].musicSeq
														+ "\">";
												tr += "<img src=\"save/"
														+ res[i].musicPhoto
														+ "\" alt=\"photo"
														+ j
														+ "\" onerror=\"this.src='https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800'\">";
												tr += "</a></li>";
												j++;
												console.log(j);
												photo_list.append(tr);
											}
										},
										error : function(e) {
											console.log('요청실패');
										}
									});
						})
	</script>
</body>
</html>