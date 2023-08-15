<%@page import="com.smhrd.entity.sns_userDTO"%>
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
	<div id="board">
		<h1>게시글 작성페이지</h1>
		<%--게시글 작성 form태그 --%>
		<%--데이터 전송에 필요한 form태그 3요소!! --%>

		<!--
		http 규약 파일/이미지 -> text 사용
		데이터 전송시 인코딩으로 인하여 제대로된 파일 전송이 불가능하기 때문에
		이를 해결하기 위한 enctype속성을 사용해야 한다!	
		-->
		<%
		%>
		<form action="write.do" method="post" enctype="multipart/form-data">
			<table id="list">
				<tr>
					<td>노래제목</td>
					<td><input name="title" type="text"></td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input name="id" type="text" value="${user.userId }" readonly></td>
				</tr>
				<tr>
					<td>앨범사진</td>
					<td><input name="img" type="file"></td>
				</tr>
				<tr>
					<td>음원파일</td>
					<td><input name="file" type="file"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="reset" value="초기화"> <input
						type="submit" value="작성하기"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>