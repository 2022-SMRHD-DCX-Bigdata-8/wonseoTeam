<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_search.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

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
			<img class="titleimg" src="https://ifh.cc/g/l4n2xR.png">
		</div>

		<!-- 검색창 div -->
		<div class="sub_sps_sch">
			<input type="hidden" name="bo_table" value="board03_01"> <input
				type="hidden" name="sca" value=""> <input type="hidden"
				name="sop" value="and">
			<fieldset>
				<legend>검색창</legend>

				<select style="visibility: hidden;" name="searchSelects"
					id="searchSelects" class="select-cus">
					<option value="userId">사용자ID</option>
					<option value="musicTitle">노래제목</option>
				</select>

				<div class="search_box">
					<input type="text" name="stx" value="" required="" id="inputText"
						class="frm_input required" size="20" maxlength="20"
						placeholder="채팅하고 싶은 상대방 Id를 입력하세요">
					<button class="btn_submit" id="searchBtn" type="button">검색</button>
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
			$('#searchBtn').on('click', searchId);
		})

		function searchId() {
			var search = $('#inputText').val();
			$
					.ajax({
						url : 'search.do',
						type : 'get',
						data : {
							"search" : search,
							"searchSelect" : "userId"
						},
						dataType : 'json',
						success : function(res) {
							let tbody = $('#tbd');
							tbody.html('');

							for (let i = 0; i < res.length; i++) {
								tr = "<div class='flex-item'>";
								tr += "<td><img src=\"save/"
										+ res[i].userPhoto
										+ "\" onerror=\"this.src='https://www.thechooeok.com/common/img/default_profile.png'\"</td>";
								tr += "<td><a href=\"goChat.do?idx="
										+ res[i].userId + "\">" + res[i].userId
										+ "</a></td>";
								tr += "</div>";
								tbody.append(tr);

							}
						},
						error : function(e) {
							console.log('요청실패');
						}
					});
		}
	</script>


</body>
</html>