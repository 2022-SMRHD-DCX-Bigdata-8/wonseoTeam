<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_search.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
</style>

</head>
<body>
	<!-- 전체 감싸는 div -->
	<div id="knu-container">

		<!-- header div -->
		<div id="knu-header">
			<img class="titleimg" src="https://ifh.cc/g/l4n2xR.png">
		</div>

		<!-- 검색창 div -->
		<div class="sub_sps_sch">
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
					<li><a href="goUpdate.do" class="item"></a></li>
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
			$('#searchBtn').on('click', userSearch);
		})

		function userSearch() {
			var searchSelect = $('#searchSelects').val();
			var search = $('#inputText').val();
			$
					.ajax({
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
								if (searchSelect === 'userId') {
									tr = "<div class='flex-item'>";
									tr += "<td><img src=\"save/"
											+ res[i].userPhoto
											+ "\" onerror=\"this.src='https://www.thechooeok.com/common/img/default_profile.png'\"</td>";
									tr += "<td><a href=\"goViewUser.do?idx="
											+ res[i].userId + "\">"
											+ res[i].userId + "</a></td>";
									tr += "</div>";
									tbody.append(tr);
								} else {
									tr = "<div class='flex-item'>";
									tr += "<td><img src=\"save/"
											+ res[i].musicPhoto
											+ "\" onerror=\"this.src='https://www.thechooeok.com/common/img/default_profile.png'\"</td>";
									tr += "<td><a href=\"goViewMusic.do?titlex="
											+ res[i].musicTitle
											+ "\">"
											+ res[i].musicTitle + "</a></td>";
									tr += "</div>";
									tbody.append(tr);
								}
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