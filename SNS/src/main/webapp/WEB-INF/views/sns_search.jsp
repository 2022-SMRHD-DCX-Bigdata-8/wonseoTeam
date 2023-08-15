<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
	<div id="search">
		<h1>검색</h1>
		<table id="list" border="1">
			<thead>
				<tr>
					<td><select name="searchSelects" id="searchSelects">
							<option value="userId">사용자ID</option>
							<option value="musicTitle">노래제목</option>
					</select></td>
					<td><input id="inputText" type="text"></td>
					<td>
						<button id="searchBtn" type="button">검색</button>
					</td>
				</tr>
			</thead>
			<tbody id="tbd">
				<%--Ex10.게시글 목록을 출력해봅시다. --%>
				<%--예시) --%>
				<c:forEach var="user" items="${list}">
					<tr>
						<c:choose>
								<c:when test="${selectedOption} == 'userId'">
									<td><a href="goProfile.do?idx=${user.userId}">${user.userId }</a></td>
									
								</c:when>
								<c:otherwise>
									<td><a href="goProfile.do?idx=${user.musicTitle}">${user.musicTitle }</a></td>
								</c:otherwise>
							</c:choose>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#searchBtn').on('click', userSearch);
		})

		function userSearch() {
			var searchSelect = $('#searchSelects').val();
			var search = $('#inputText').val();
			$.ajax({
				url : 'search.do',
				type : 'get',
				data : {
					"search" : search,
					"searchSelect" : searchSelect
				},
				dataType : 'json', // 응답받는 데이터의 형식
				success : function(res) {
					console.log(res);

					let tbody = $('#tbd');

					tbody.html('');

					for (let i = 0; i < res.length; i++) {
						tr = "<tr>";
						tr += "<td><a href=\"goView.do?idx=" + res[i].userId
								+ "\">" + res[i].userId + "</a></td>";
						tr += "</tr>";

						// html('code') : 덮어쓰기
						// after('code') : 닫는 태그 바로 뒤에 추가
						// before('code') : 여는 태그 바로 앞에 추가
						// append('code') : 자식 요소로 추가 
						tbody.append(tr);
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