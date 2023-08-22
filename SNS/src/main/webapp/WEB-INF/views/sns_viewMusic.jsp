<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.smhrd.entity.sns_musicDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- 메뉴바 아이콘 불러오기 -->

<link rel="stylesheet" href="assets/css/sns_viewMusic.css">

<link rel="stylesheet" href="assets/css/sns_audio.css">
<link rel="stylesheet" href="assets/js/sns_audio.js">

</head>
<body>
	<main>

		<!-- 헤더 -->
		<header>
			<div id="knu-header">

				<!-- 로고 이미지 -->
				<img src="https://ifh.cc/g/l4n2xR.png"
					alt="Kakao-Talk-20230818-160012450"></a>

			</div>
		</header>

		<!-- 인스타그램 피드 & 스토리  -->
		<nav id="knu-sidebar1">

			<div class="menu">
				<label for="expand-menu"></label> <input type="checkbox"
					id="expand-menu" name="expand-menu">
				<ul>
					<li><a href="goMain.do"></a></li>
					<li><a href="goSearch.do"></a></li>
					<li><a href="goProfile.do"></a></li>
					<li><a href="goWrite.do"></a></li>
					<li><a href="goPlaylist.do"></a></li>
					<li><a href="goMessage.do"></a></li>
					<li><a href="logout.do" onclick="return logout_confirm()"></a></li>
			</div>
		</nav>
		<!-- 메뉴바 끝 -->
		<article>
			<!-- 인스타그램 피드 -->

			<section class="peedLeft">
				<div align="center" class="card">
					<!-- 첫번째 피드 내용 -->
					<div class="header" align="center">
						<!-- 피드 헤더 -->
						<div align="center" class="username">
							<h4 class="user">${music.userId }</h4>
						</div>

					</div>
					<div class="viewMusic" align="center">
						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4EPqmj0C4QaxvPcdzJ89Qo7y3sIiTnEgGhg&usqp=CAU"
							alt="duper cool image" class="main-image"><br>
						<div class="footer">
							<!-- 피드 푸터 -->
							<div class="actions">
								<div class="first-actions">
									<button class="action" id="likeBtn">🎵</button>
									<span class='spantag'></span>
									<button class="action" id="btn-modal">💬</button>
								</div>
							</div>

							<div class="songTitle">
								<h4>${music.musicTitle }</h4>
							</div>

							<audio id="audio" controls>
								<!-- 오디오 영역 시작 -->
								<source
									src="https://ia800905.us.archive.org/19/items/FREE_background_music_dhalius/backsound.mp3"
									type="audio/mp3">
							</audio>
							<!-- 오디오 영역 끝 -->
						</div>
					</div>
				</div>

				<!-- 첫번째 피드 내용 끝 -->
			</section>

		</article>
	</main>

	<script type="text/javascript">
	</script>
	

</body>
</html>
