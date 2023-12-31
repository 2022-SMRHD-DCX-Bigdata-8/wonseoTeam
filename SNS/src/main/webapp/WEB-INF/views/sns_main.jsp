<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_search2.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- <link rel="stylesheet" href="assets/css/sns_mainPost.css">-->
<link rel="stylesheet" href="assets/css/sns_audio.css">
<link rel="stylesheet" href="assets/js/sns_audio.js">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap"
	rel="stylesheet">
</head>
<body>
	<!-- 전체 감싸는 div -->
	<div id="knu-container">

		<!-- header div -->
		<div id="knu-header">
			<img class="titleimg" src="assets/img/로고.png">
		</div>

		<!-- 검색창 div -->
		<div style="visibility: hidden;" class="sub_sps_sch">
			<input type="hidden" name="bo_table" value="board03_01"> <input
				type="hidden" name="sca" value=""> <input type="hidden"
				name="sop" value="and">
			<fieldset>
				<legend>검색창</legend>

				<select name="searchSelects" id="searchSelects" class="select-cus">
					<option value="userId">사용자ID</option>
					<option value="musicTitle">노래제목</option>
				</select>

				<div class="search_box">
					<input type="text" name="stx" value="" required="" id="inputText"
						class="frm_input required" size="20" maxlength="20"
						placeholder="검색어를 입력하세요">
					<button class="btn_submit" id="searchBtn" type="button">Search</button>
				</div>
			</fieldset>
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

		<!-- 결과창 -->
		<div id="knu-container">
			<div id="tbd"></div>
		</div>

		<div id="knu-content"></div>

		<!-- Sidebar right-->
		<div id="knu-sidebar2"></div>

		<!-- footer -->

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

							let board = $('#tbd');

							board.html('');

							for (let i = 0; i < res.length; i++) {
								tr = "<div class='flex-item'>";

								tr += "<h4>" + res[i].musicTitle + "<br><b> "
										+ res[i].userId + "</b></h4>";

								tr += "<a href=\"goViewMusic.do?titlex="
										+ res[i].musicSeq
										+ "\">"
										+ "<img class='main-image' src=\"save/"
										+ res[i].musicPhoto
										+ "\" onerror=\"this.src='https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800'\"></a>";

								tr += "<input type='hidden' value='"+res[i].musicSeq+"'>";

								tr += "<audio id='audio' controls>";

								tr += "<source src='save/"+res[i].musicFile+"' type='audio/mp3'>";

								tr += "</audio></div>";

								board.append(tr);

							}

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
			console.log(idx);
			$.ajax({
				type : 'get',
				url : 'doLikes.do',
				data : {
					"musicSeq" : idx,
					"id" : userid
				},
				success : function(res) {
					console.log("성공");
					let idx = $(this).parent().children('input[type=hidden]')
							.val();
					let userid = `${sessionUser.userId}`;
					console.log(idx + ":" + userid);
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

				}

			});

		}
	</script>

</body>
</html>