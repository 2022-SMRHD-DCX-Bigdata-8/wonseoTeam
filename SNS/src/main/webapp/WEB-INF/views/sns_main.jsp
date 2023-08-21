<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_main.css">
<link rel="stylesheet" href="assets/css/sns_mainPost.css">
<link rel="stylesheet" href="assets/css/sns_mainRanking.css">
<link rel="stylesheet" href="assets/css/sns_audio.css">
<link rel="stylesheet" href="assets/js/sns_audio.js">
<style type="text/css">
#board div {
	border: 1px solid black;
}

img {
	width: 100px;
	height: 100px;
}
</style>

</head>
<body>
	<!-- Container -->

	<div id="knu-container">
		<!-- 전체 영역 -->


		<!-- Header -->
		<div id="knu-header">

			<!-- 로고 이미지 -->
			<a href="https://imgbb.com/"><img
				src="https://ifh.cc/g/l4n2xR.png"
				alt="Kakao-Talk-20230818-160012450"></a>

		</div>

		<!-- Sidebar left -->
		<!-- 메뉴바 시작 -->
		<div id="knu-sidebar1">
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
		</div>
		<!-- 메뉴바 끝 -->

		<!-- Content -->
		<!-- 내용 시작 (랭킹), 피드 부분 -->

		<div id="knu-content">
			<!-- 전체 내용 영역 -->
			<section class="track-list">
				<!-- 랭킹 리스트 내용 -->
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
					<p class="song-name">SWonseo</p>
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
					<p class="song-name">GDragon</p>

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
					<p class="song-name">Dayeong</p>

				</div>

			</section>
			<!-- 랭킹 리스트 내용 끝 -->

			<div id="knu-content-left">
				<section>
					<!-- 피드 내용 전체 묶은 섹션-->
					<form action="#">
						<div class="card">
							<!-- 첫번째 피드 내용 -->
							<div class="header">
								<img
									src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA2MTdfNzUg%2FMDAxNjg3MDEwMTA5OTYx.dcRPHUoxxYSscK9em-PV9Q-iBnr7gqE9RhIvltxurP8g.Xif5xBLezK9K8IDOI6okiyZs7rhsiMOTwRyolbtNYV8g.JPEG.echo0401%2FIMG_3698.jpg&type=sc960_832"
									alt="profile picture of username" class="profile-picture">
								<div class="username">
									<h4 class="user">Wonseo</h4>
								</div>
								<button class="more">•••</button>
							</div>
							<img
								src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200422_218%2F1587535650068vKKfp_PNG%2F15.PNG&type=sc960_832"
								alt="duper cool image" class="main-image">
							<div class="footer">
								<div class="actions">
									<div class="first-actions">
										<button class="action" id="likeBtn">🎵</button>
										<button class="action" id="btn-modal">💬</button>
										<button class="action" id="listAdd">🎧</button>
									</div>
								</div>
								<br>
								<audio id="audio" controls>
									<!-- 오디오 영역 시작 -->
									<source
										src="https://ia800905.us.archive.org/19/items/FREE_background_music_dhalius/backsound.mp3"
										type="audio/mp3">
								</audio>
								<!-- 오디오 영역 끝 -->
							</div>
						</div>
						<!-- 첫번째 피드 내용 끝 -->
						<br>

					</form>
			</div>

			<div id="knu-content-right">
				<!-- 오른쪽 피드 내용 시작 -->
				<form action="#">
					<div class="card">
						<!-- 첫번째 피드 내용 시작 -->
						<div class="header">
							<img
								src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA1MjBfMTIy%2FMDAxNjg0NTYxNjIwNzA2.IwqSh8ZGXM_fmJ-6aswkNPh1ow6VvwJh6Uc22_qBblgg.20oWlz8f5dgkYrvHGEWzIbbvnofdIMQv6qJcYsTfwikg.JPEG.yg1129sg%2FIMG_8075.jpg&type=sc960_832"
								alt="profile picture of username" class="profile-picture">
							<div class="username">
								<h4>Dayeong</h4>
							</div>
							<button class="more">•••</button>
						</div>
						<img
							src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20230226_210%2F1677416235191V0ktw_JPEG%2F4718919059376396_628811239.jpg&type=sc960_832"
							alt="duper cool image" class="main-image">
						<div class="footer">
							<div class="actions">
								<div class="first-actions">
									<button class="action" id="likeBtn">🎵</button>
									<button class="action" id="btn-modal">💬</button>
									<button class="action" id="listAdd">🎧</button>
								</div>
							</div>
							<br>
							<audio id="audio" controls>
								<source
									src="https://ia800905.us.archive.org/19/items/FREE_background_music_dhalius/backsound.mp3"
									type="audio/mp3">
							</audio>
						</div>
					</div>
					<!-- 첫번째 피드 내용 끝 -->
					<br>

				</form>
			</div>
			</section>
			<!-- 피드 내용 섹션 끝 -->
		</div>
		<!-- 전체(메인) 내용 끝 -->

		<!-- 댓글 팝업 창 + 댓글 내용 예시로만 추가 -->
		<div id="modal" class="modal-overlay">
			<div class="modal-window">
				<div class="title">
					<div class="close-area">X</div>
					<h4>댓글</h4>
					<div class="switcher">
						<input id="switch-demo" type="checkbox" checked> <label
							for="switch-demo">피드백 댓글</label>
					</div>

				</div>
				<div style="float: left; height: 30px;">
					<h5 class="user">Wonseo</h5>
				</div>
				<div style="float: left; width: 300px; height: 30px;">
					<h5 class="userCom">디오 목소리 너무 좋아요!</h5>
				</div>
				<div style="float: left;">
					<h5 class="user">Dayeong</h5>
				</div>
				<div style="float: left; width: 300px; height: 30px;">
					<h5 class="userCom">노래 너무 잘 들었어요~</h5>
				</div>
				<div class="content">
					<input type="text" placeholder="댓글 달기..." class="commentBox">
					<button type="submit" value="등록" class="commentSave">등록</button>
				</div>

			</div>
		</div>
	</div>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<script type="text/javascript">
		function showPopup() {
			window
					.open("comment2.html",
							"width=50, height=50, left=10, top=10");
		}
	</script>


	<script type="text/javascript">
	const modal = document.getElementById("modal");
    function modalOn() {
        modal.style.display = "flex"
      }
    function isModalOn() {
      return modal.style.display === "flex"
      }
    function modalOff() {
      modal.style.display = "none"
      }
    const btnModal = document.getElementById("btn-modal")
    btnModal.addEventListener("click", e => {
    modalOn()
      })
    const closeBtn = modal.querySelector(".close-area")
    closeBtn.addEventListener("click", e => {
    modalOff()
      })
    modal.addEventListener("click", e => {
    const evTarget = e.target
   if(evTarget.classList.contains("modal-overlay")) {
    modalOff()
  }
})
    window.addEventListener("keyup", e => {
    if(isModalOn() && e.key === "Escape") {
    modalOff()
  }
})    
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
		$(document).ready(function() {
			loadPost();
		})

		function loadPost() {
			$
					.ajax({
						url : 'post.do',
						type : 'get',
						dataType : 'json', // 응답받는 데이터의 형식
						success : function(res) {
							console.log(res);

							let board = $('.card');

							board.html('');

							for (let i = 0; i < res.length; i++) {
								tr = "<div class=\"header\">";
								
								tr += "<img src=\"save/"
									+ res[i].musicPhoto
									+ "\" onerror=\"this.src='https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800'\" class='profile-picture'>";
								
								tr += "<div class='username'>";
								
								tr += "<h4>" + res[i].userId + "</h4></div>";
								
								tr += "<button class='more'></button></div>";
								
								tr += "<img class='main-image' src=\"save/"
										+ res[i].musicPhoto
										+ "\" onerror=\"this.src='https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800'\"";

								tr += "<h4>" + res[i].musicTitle + "</h4>";

								tr += "<div class='footer'>";
								tr += "<div class='actions'>";
								tr += "<div class='first-actions'>";
								
								tr += "<input type='hidden' value='"+res[i].musicSeq+"'>";
								
								tr += "<button class='btn-likes' id='likeBtn'>🎵</button>";
								tr += "<span></span>";
								tr += "<button class='btn-comment' id='btn-modal'>💬</button>";
								tr += "<button id='btn-playlist'>🎧</button>";

								tr += "</div></div><br>";
								
								tr += "<audio id='audio' controls>";
								
								tr += "<source src='save/"+res[i].musicFile+"' type='audio/mp3'>";
								
								tr += "</audio></div>";
								
								board.append(tr);

							}
							<!-- 좋아요 수 출력 -->
							let idx = $('.btn-likes').parent().children('input[type=hidden]').val();
							let userid = `${sessionUser.userId}`;
							console.log(idx);
							$.ajax({
								type : 'get',
								url : 'likeCount.do',
								data : {
									"musicSeq" : idx,
									"id" : userid
								},
								success : function(res) {
									let spantag = $('span');
									spantag.html(res);
								}

							});
							
							$('.btn-comment').on('click', saveCmt);
							$('.btn-likes').on('click', doLikes);

						},
						error : function(e) {
							console.log('요청실패!!!');
						}
					});
		}

		function saveCmt() {
			let idx = $(this).parent().children('input[type=hidden]').val();
			console.log(idx);
		}

		function doLikes() {
			let idx = $(this).parent().children('input[type=hidden]').val();
			let userid = `${sessionUser.userId}`;
			console.log(userid);
			$.ajax({
				type : 'get',
				url : 'doLikes.do',
				data : {
					"musicSeq" : idx,
					"id" : userid
				},
				success : function(res) {
					let spantag = $('span');
					spantag.html(res);
				}

			});

		}
	</script>

</body>
</html>