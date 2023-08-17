<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<!-- 메뉴창 -->
	<ul>
		<li><a href="goMain.do">홈</a></li>
		<li><a href="goSearch.do">검색</a></li>
		<li><a href="goProfile.do">프로필</a></li>
		<li><a href="goWrite.do">게시물올리기</a></li>
		<li><a href="goPlaylist.do">플리</a></li>
		<li><a href="goMessage.do">메신저</a></li>
		<li><a href="logout.do" onclick="return logout_confirm()">로그아웃</a></li>
	</ul>
	<div id="ranking"></div>
	<!-- 게시글 보여주기 -->
	<div id="board"></div>

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

							let board = $('#board');

							board.html('');

							for (let i = 0; i < res.length; i++) {
								tr = "<div id=res[i].musicSeq>";
								tr += "<h4>" + res[i].userId + "</h4>";

								tr += "<h4>" + res[i].musicTitle + "</h4>";

								tr += "<p><img src=\"save/"
										+ res[i].musicPhoto
										+ "\" onerror=\"this.src='https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800'\"</p>";

								tr += "<p>" + res[i].musicFile + "</p>";

								tr += "<p><button id='comment'>댓글</button><button id='playlist'>보관함</button></p>"

								tr += "</div>";
								// html('code') : 덮어쓰기
								// after('code') : 닫는 태그 바로 뒤에 추가
								// before('code') : 여는 태그 바로 앞에 추가
								// append('code') : 자식 요소로 추가 
								board.append(tr);
							}
						},
						error : function(e) {
							console.log('요청실패!!!');
						}
					});
		}
	</script>

</body>
</html>