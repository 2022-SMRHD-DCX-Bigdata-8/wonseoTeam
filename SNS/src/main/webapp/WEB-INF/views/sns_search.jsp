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
a {
	font-family: inherit; /* 기본 폰트로 초기화 */
}
</style>

</head>
<body>
	<!-- 전체 감싸는 div -->
	<div id="knu-container">

		<!-- header div -->
		<div id="knu-header">

			<img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzAyMThfMjkg%2FMDAxNjc2NzI3MzExMzAy.umwnYxkbm5OLxYcw13diqjPlGpHmiju6v9dkzo68UHEg.3tWz4JSUwnJvByueURREKM5Q99Y1M56yT2006UM1cTEg.PNG.slalomman%2F%25C0%25CE%25BD%25BA%25C5%25B8.PNG&type=sc960_832"
				alt="">
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
					<li><a href="goWrite.do" class="item"></a></li>
					<li><a href="goPlaylist.do" class="item"></a></li>
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
                           let flexItem = document.createElement('div');
                           flexItem.classList.add('flex-item');

                           let img = document.createElement('img');
                           img.src = "save/" + res[i].musicPhoto+"\"";
                           img.class = "resultImg"
                           img.onerror = function() {
                               this.src = 'https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800';
                           };

                           let a = document.createElement('a');
                           a.href = "goViewMusic.do?titlex=" + res[i].musicTitle;
                           a.textContent = res[i].musicTitle;

                           flexItem.appendChild(img);
                           flexItem.appendChild(a);

                           if (searchSelect === 'userId') {
                               let userIdLink = document.createElement('a');
                               userIdLink.href = "goViewUser.do?idx=" + res[i].userId;
                               userIdLink.textContent = res[i].userId;

                               flexItem.appendChild(userIdLink);
                           }

                           let tbd = document.getElementById('tbd');
                           tbd.appendChild(flexItem);
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