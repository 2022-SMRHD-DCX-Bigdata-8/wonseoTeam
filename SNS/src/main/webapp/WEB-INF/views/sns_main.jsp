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
		<li><a href="logout.do" onclick="return logout_confirm()">로그아웃</a></li>
	</ul>

	<!-- 게시글 보여주기 -->
	<div id="board">
		<table id="list">
			<tr>
				<td>제목</td>
				<td>
					<%--게시글 제목 출력 --%> ${music.musicTitle}
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>
					<%--작성자 출력 --%> ${music.userId }
				</td>
			</tr>
			<tr>
				<td colspan="2">내용</td>
			</tr>
			<tr>
				<td colspan="2">
					<%--게시글 내용 출력 --%> <img src="save/${music.musicPhto }">
				</td>
			</tr>
		</table>
	</div>

	<script type="text/javascript">
		function logout_confirm() {
			if (confirm("로그아웃하시겠습니까?")) {
				return true;
			}else{
				return false;
			}
		}
	</script>
</body>
</html>