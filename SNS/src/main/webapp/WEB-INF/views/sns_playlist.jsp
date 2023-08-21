<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/playlistmain.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="scroll.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body>

	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous"></script>
	<!-- Container -->
	<div id="knu-container">
		<!--footer 하단 고정-->
		<div class="wrap">
			<!-- Header -->
			<div id="knu-header">
				<img
					src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzAyMThfMjkg%2FMDAxNjc2NzI3MzExMzAy.umwnYxkbm5OLxYcw13diqjPlGpHmiju6v9dkzo68UHEg.3tWz4JSUwnJvByueURREKM5Q99Y1M56yT2006UM1cTEg.PNG.slalomman%2F%25C0%25CE%25BD%25BA%25C5%25B8.PNG&type=sc960_832"
					alt="">
			</div>
			<!-- Sidebar left -->
			<div id="knu-sidebar1">
				<br>
				<div class="menu">
					<label for="expand-menu"></label> <input type="checkbox"
						id="expand-menu" name="expand-menu">
					<ul>
						<li><a href="goMain.do" class="item"></a></li>
						<li><a href="goSearch.do" class="item"></a></li>
						<li><a href="goProfile.do" class="item"></a></li>
						<li><a href="goWrite.do" class="item"></a></li>
						<li><a href="goPlaylist.do" class="item"></a></li>
						<li><a href="goMessage.do" class="item"></a></li>
						<li><a href="logout.do" onclick="return logout_confirm()"
							class="item"></a></li>
					</ul>
				</div>
			</div>
			<!-- Content -->
			<div id="knu-content">
				<h1 id="listname" align="center">⭐User Play List</h1>
				<br>
				<div id="all">
					<div id="card">
						<div id="visor">
							<div id="shadow"></div>
							<div id="capa"></div>
						</div>
						<div id="info">
							<div id="artist">loading...</div>
							<div id="name">loading...</div>
						</div>
						<div id="disc">
							<div id="point"></div>
						</div>
					</div>
					<div id="control">
						<button id="back" class="ct" onclick="changeMusic('back')">
							<span class="material-symbols-outlined"> skip_previous </span>
						</button>
						<button id="play" class="ct">
							<span class="material-symbols-outlined"> play_circle </span>
						</button>
						<button id="next" class="ct" onclick="changeMusic('next')">
							<span class="material-symbols-outlined"> skip_next </span>
						</button>
					</div>
					<div id="list">
						<div>
							<div id="0" class="item_pl active" onclick="playx(0)">
								<div id="img">
									<img src="">
								</div>
								<div id="title">
									<h2>Music Name</h2>
									<h3>Artist</h3>
								</div>
							</div>
							<div id="1" class="item_pl active" onclick="playx(1)">
								<div id="img">
									<img src="">
								</div>
								<div id="title">
									<h2>Music Name</h2>
									<h3>Artist</h3>
								</div>
							</div>
							<div id="1" class="item_pl active" onclick="playx(1)">
								<div id="img">
									<img src="">
								</div>
								<div id="title">
									<h2>Music Name</h2>
									<h3>Artist</h3>
								</div>
							</div>
							<div id="0" class="item_pl active" onclick="playx(0)">
								<div id="img">
									<img src="">
								</div>
								<div id="title">
									<h2>Music Name</h2>
									<h3>Artist</h3>
								</div>
							</div>
							<div id="0" class="item_pl active" onclick="playx(0)">
								<div id="img">
									<img src="">
								</div>
								<div id="title">
									<h2>Music Name</h2>
									<h3>Artist</h3>
								</div>
							</div>
							<div id="0" class="item_pl active" onclick="playx(0)">
								<div id="img">
									<img src="">
								</div>
								<div id="title">
									<h2>Music Name</h2>
									<h3>Artist</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Sidebar right 안보이게-->
			<div id="knu-sidebar2" style="visibility: hidden;">
				<form action="#">
					<section class="track-list">
						<h3>⭐ Follower Top</h3>
						<div class="track-container">
							<img src="https://picsum.photos/60/60/?random=1" class="photo"
								alt=""> <span class="rank">1</span>
							<svg class="like liked" viewbox="0 0 23 23" width="15"
								height="15" stroke="currentColor" stroke-width="2" fill="none"
								stroke-linecap="round" stroke-linejoin="round"
								class="css-i6dzq1">
						<path
									d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z">
						</path>
						</svg>
							<p class="song-name">손원서</p>
						</div>
						<div class="track-container">
							<img src="https://picsum.photos/50/50/?random=2" class="photo"
								alt=""> <span class="rank">2</span>
							<svg class="like liked" viewbox="0 0 23 23" width="15"
								height="15" stroke="currentColor" stroke-width="2" fill="none"
								stroke-linecap="round" stroke-linejoin="round"
								class="css-i6dzq1">
						<path
									d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z">
						</path>
						</svg>
							<p class="song-name">박필수</p>
						</div>
						<div class="track-container">
							<img src="https://picsum.photos/60/60/?random=2" class="photo"
								alt=""> <span class="rank">3</span>
							<svg class="like liked" viewbox="0 0 23 23" width="15"
								height="15" stroke="currentColor" stroke-width="2" fill="none"
								stroke-linecap="round" stroke-linejoin="round"
								class="css-i6dzq1">
						<path
									d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z">
						</path>
						</svg>
							<p class="song-name">김다영</p>
						</div>
					</section>
				</form>
			</div>
			<!-- Footer -->
		</div>
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
</body>
</html>