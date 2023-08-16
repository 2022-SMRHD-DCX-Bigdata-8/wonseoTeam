<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 메뉴창 -->
	<ul>
		<li><a href="goMain.do">홈</a></li>
		<li><a href="goSearch.do">검색</a></li>
		<li><a href="goProfile.do">프로필</a></li>
		<li><a href="goWrite.do">게시물올리기</a></li>
		<li><a href="goPlaylist.do">플리</a></li>
		<li><a href="goMessage.do">플리</a></li>
		<li><a href="logout.do" onclick="return logout_confirm()">로그아웃</a></li>
	</ul>

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
			$.ajax({
				url : 'post.do',
				type : 'get',
				dataType : 'json', // 응답받는 데이터의 형식
				success : function(res) {
					console.log(res);

					let board = $('#board');

					board.html('');

					for (let i = 0; i < res.length; i++) {
						tr = "<table border=\"1\">";
						tr += "<tr>";
						tr += "<td>" + res[i].userId + "<td>";
						tr += "</tr>";

						tr += "<tr>";
						tr += "<td>" + res[i].musicTitle + "<td>";
						tr += "</tr>";

						tr += "<tr><td>음악파일";
						tr += "</td></tr>";

						tr += "<tr>";
						tr += "<td>" + res[i].musicFile + "<td>";
						tr += "</tr>";

						tr += "</table>";
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