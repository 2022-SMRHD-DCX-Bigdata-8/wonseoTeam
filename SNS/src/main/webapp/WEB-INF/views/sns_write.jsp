<%@page import="com.smhrd.entity.sns_userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- 메뉴바 아이콘 불러오기 -->


<link rel="stylesheet" type="text/css" href="assets/css/sns_write.css">
<link rel="stylesheet" type="text/css" href="assets/css/sns_search.css">
<link rel="stylesheet" type="text/css" href="assets/css/sns_posts.css">
<link rel="stylesheet" type="text/css" href="assets/css/sns_ranking.css">
<script src="sns_write.js"></script>
</head>
<body>

	<!-- Container -->

	<div id="knu-container">
		<!-- 전체 영역 -->


		<!-- Header -->
		<div id="knu-header">

			<!-- 로고 이미지 -->
			<a><img src="https://ifh.cc/g/l4n2xR.png" alt=""></a>
		</div>

		<!-- Sidebar left -->
		<!-- 메뉴바 시작 -->
		<div id="knu-sidebar1">
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
		<!-- 메뉴바 끝 -->

		<!-- Content -->
		<!-- 내용 시작 (랭킹), 피드 부분 -->

		<div id="knu-content">
			<div align="center" id="ccard">
				<div class="card">

					<form action="write.do" method="post" enctype="multipart/form-data">
						<h5>Music</h5>
						<input name="title" type="text">

						<h5>User Id</h5>
						<input name="id" type="text" value="${sessionUser.userId }"
							readonly> <br> <br>
						<h5>album art</h5>
						<input name="img" type="file"> <br>
						<h5>music file</h5>
						<input name="file" type="file"> <br> <br> <input
							id="button" type="reset" value="reset"><input id="button"
							type="submit" value="submit"> <br> <br>


					</form>
				</div>
			</div>
		</div>

		<!-- Sidebar right-->
		<div id="knu-sidebar2">
			<form action="#">

				<section style="visibility: hidden;" class="track-list">
					<h3>⭐ Follower Top</h3>
					<div class="track-container">
						<img src="https://picsum.photos/60/60/?random=1" class="photo"
							alt=""> <span class="rank">1</span>
						<svg class="like liked" viewBox="0 0 23 23" width="15" height="15"
							stroke="currentColor" stroke-width="2" fill="none"
							stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1">
                <path
								d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg>
						<p class="song-name">손원서</p>
					</div>

					<div class="track-container">
						<img src="https://picsum.photos/50/50/?random=2" class="photo"
							alt=""> <span class="rank">2</span>
						<svg class="like liked" viewBox="0 0 23 23" width="15" height="15"
							stroke="currentColor" stroke-width="2" fill="none"
							stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1">
                <path
								d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg>
						<p class="song-name">박필수</p>

					</div>
					<div class="track-container">
						<img src="https://picsum.photos/60/60/?random=2" class="photo"
							alt=""> <span class="rank">3</span>
						<svg class="like liked" viewBox="0 0 23 23" width="15" height="15"
							stroke="currentColor" stroke-width="2" fill="none"
							stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1">
                <path
								d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg>
						<p class="song-name">김다영</p>


					</div>

				</section>

			</form>
		</div>

		<!-- Footer -->


	</div>

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