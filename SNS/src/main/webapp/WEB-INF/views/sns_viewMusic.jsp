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
			<div id="tbd">
				<div class='flex-item'>
					<h4>${music.musicTitle }<br> <b>${music.userId }</b>
					</h4>
					<img class='main-image' src="save/${music.musicPhoto }"
						onerror="this.src='https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800'">
					<audio id='audio' controls>
						<source src="save/${music.musicFile }" type="audio/mp3">
					</audio>
					<br>
					<p id="likeN">1000</p>
					<!-- 좋아요 수 -->
					<br>
					<button id="LikeBtn">🤍</button>
				</div>

				<div class='flex-item'>
					<h3>COMMENT</h3>
					<div id="send-content">
						<div id="center">
							<div></div>
						</div>
						<input type="text" placeholder="댓글 달기" id="content">
						<button id="sendBtn">등록</button>
					</div>
				</div>

			</div>
		</div>


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
		$(document).ready(function(){
			var musicSeq = ${music.musicSeq };
			$.ajax({
				type : 'get',
				url : 'likeCount.do',
				data : {
					"musicSeq" : musicSeq
				},
				success : function(res){
					let likeN = $('#likeN');
					likeN.html(res);
				},
				error : function(e){
					console.log("좋아요수불러오기 오류");
				}
			});
		})
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			var userId = `${sessionUser.userId}`;
			var musicSeq = ${music.musicSeq };
			$.ajax({
				type : 'get',
				url : 'firstLikeCheck.do',
				data : {
					"userId" : userId,
					"musicSeq" : musicSeq
				},
				success : function(res){
					let LikeBtn = $('#LikeBtn');
					LikeBtn.html(res);
				},
				error : function(res){
					console.log("좋아요 색칠하기 오류");
				}
			});
		})
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			$('#LikeBtn').click(function(){
				var userId = `${sessionUser.userId}`;
				var musicSeq = ${music.musicSeq };
				$.ajax({
					type : 'get',
					url : 'doLikes.do',
					data : {
						"userId" : userId,
						"musicSeq" : musicSeq
					},
					success : function(res){
						let LikeBtn = $('#LikeBtn');
						LikeBtn.html(res);
						var musicSeq = ${music.musicSeq };
						$.ajax({
							type : 'get',
							url : 'likeCount.do',
							data : {
								"musicSeq" : musicSeq
							},
							success : function(res){
								let likeN = $('#likeN');
								likeN.html(res);
							},
							error : function(e){
								console.log("좋아요수불러오기 오류");
							}
						});
						
					},
					error : function(res){
						console.log("좋아요 누르기 오류")
					}
				});
			})
		})
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			var musicSeq = ${music.musicSeq};
			var me = `${sessionUser.userId }`;
			console.log(musicSeq + ":" + me);
			$.ajax({
				url : 'loadCmt.do',
				type : 'get',
				data : {
					"musicSeq" : musicSeq,
					"me" : me
				},
				dataType : 'json',
				success : function(res){
					let cmtDiv = $('#center');
					cmtDiv.html('');
					
					for (let i = 0;i<res.length;i++){
						tr=`
						<div class="baloon2">
						<p> \${res[i].userId} : \${res[i].cmtContent}</p>
						</div>
						`;
						cmtDiv.append(tr);
					}
				},
				error : function(e){
					console.log("불러오기 실패");
				}
			})
		})
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			$('#sendBtn').on('click', saveCmt);
		})
		
		function saveCmt(){
			var musicSeq = ${music.musicSeq};
			var me = `${sessionUser.userId }`;
			var cmt = $('#content').val();
			console.log(musicSeq+":"+me);
			let cmtDiv = $('#center');
			tr2=`
			<div class="baloon2">
			<p> \${me} : \${cmt}</p>
			</div>
			`;
			cmtDiv.append(tr2);
			$('#content').val('');
			$.ajax({
				url : 'saveCmt.do',
				type : 'get',
				data : {
					"musicSeq" : musicSeq,
					"me" : me,
					"cmt" : cmt
				},
				dataType : 'json',
				success : function(res){
					console.log("저장 성공");
				},
				error : function(e){
					console.log('저장 실패');
				}
			});
		}
	</script>



</body>
</html>
