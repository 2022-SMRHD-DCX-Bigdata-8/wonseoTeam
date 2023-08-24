<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_profile.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">
</head>
<body>
	<script src="assets/js/sns_profile.js"></script>

	<div id="knu-container">

		<!-- Header -->
		<div id="knu-header">

			<img class="titleimg" src="https://ifh.cc/g/l4n2xR.png">

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

		<!-- content -->
		<div id="knu-content">
			<div class="container">

				<!-- 프사 업로드 칸 -->
				<div class="avatar-upload">
					<div style="visibility: hidden;" class="avatar-edit">
						<input type='file' id="imageUpload" name="changeImg"
							accept=".png, .jpg, .jpeg" /> <label for="imageUpload"></label>
					</div>

					<!-- 프사 이미지 -->
					<div class="avatar-id">
						<!-- 프사 기본 이미지로 일단 해뒀음 -->
						<div id="imagePreview"
							style="background-image: url(save/${sessionUser.userPhoto });">
						</div>
						<h1>${sessionUser.userId }</h1>
						<hr>
					</div>
					<br>
				</div>
				<br>

				<!-- 버튼은 숨겨둠 -->
				<div style="display: none;" class="profile-userbuttons">
					<button style="visibility: hidden;" type="button"
						class="btn btn-success btn-sm">Follow</button>
					<button style="visibility: hidden;" type="button"
						class="btn btn-danger btn-sm">Message</button>
				</div>
				<br>

				<!-- 가운데 게시물이랑 뜨는 공간 -->
				<div class="portlet light bordered">
					<div class="row list-separated profile-stat">
						<div style="border: 1px; float: left; width: 33%;"
							class="col-md-4 col-sm-4 col-xs-6">
							<div style="visibility: hidden;"
								class="uppercase profile-stat-title">37</div>
							<div style="visibility: hidden;"
								class="uppercase profile-stat-text">Projects</div>
						</div>
						<div style="border: 1px; float: left; width: 33%;"
							class="col-md-4 col-sm-4 col-xs-6">
							<div class="uppercase profile-stat-title" id="followerCount">51</div>
							<div class="uppercase profile-stat-text">Follow</div>
						</div>
						<div style="border: 1px; float: left; width: 33%;"
							class="col-md-4 col-sm-4 col-xs-6">
							<div style="visibility: hidden;"
								class="uppercase profile-stat-title">61</div>
							<div style="visibility: hidden;"
								class="uppercase profile-stat-text">Uploads</div>
						</div>
						<div style="display: none;"
							style="border: 1px; float: left; width: 50%;">
							<h2 align="center">Title Music</h2>
						</div>
						<div style="display: none;"
							style="border: 1px; float: left; width: 0%;">
							<h2></h2>
						</div>
						<div style="display: none;"
							style="border: 1px; float: left; width: 50%;">
							<h2 align="center">Music List</h2>
						</div>
					</div>
				</div>
				<br>
				<h2 align="center">musiclist</h2>
				<br>
				<div id="list_box">
					<ul id="photo_list">
					</ul>
				</div>
				<div id="list_button">
					<div>
						<button style="visibility: hidden;" name="next_button"
							onclick="getData()"></button>
						<img src="assets/img/왼쪽.png" alt="사진 뒤로">
					</div>
					<div>
						<button style="visibility: hidden;" name="next_button"
							onclick="getData()"></button>
						<img src="assets/img/오른쪽.png" alt="사진 앞으로">
					</div>
				</div>

			</div>
		</div>
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

	<!-- 팔로워수 세는 js -->
	<script type="text/javascript">
      $(document).ready(function(){
         $.ajax({
            type : 'get',
            url : 'count.do',
            data : {
               "id" : `${sessionUser.userId}`
            },
            success : function(res){
               let fCount = $('#followerCount');
               fCount.html('');
               fCount.append(res);
            },
            error : function(e){
               console.log("실패");
            }
         });
      })
      </script>

	<script type="text/javascript">
      $(document).ready(function () {
             var front_btn = $("#list_button >:first-child");
             var back_btn = $("#list_button >:last-child");

             front_btn.on("click", function (e) {
               $("#photo_list").animate({ "left": "+=675px" })
             })
             back_btn.on("click", function (e) {
               $("#photo_list").animate({ "left": "-=675px" })
             })
           });
      </script>

	<script type="text/javascript">
      $(document).ready(function(){
         var changeImg = $("")
      })
   </script>

	<script type="text/javascript">
      $(document).ready(function(){
         $.ajax({
            type : 'get',
            url : 'loadMusic.do',
            data : {
               "id" : ${sessionUser.userId}
            },
            dataType : 'json',
            success : function(res){
               let photo_list = $('#photo_list');
               photo_list.html('');
               j = 1;
               for (let i = 0;i <res.length;i++){
                  tr = "<li>";
                  tr += "<a href=\"goViewMusic.do?titlex="
                     + res[i].musicSeq+"\">";
                  tr += "<img src=\"save/"+ res[i].musicPhoto   + "\" alt=\"photo"+j+"\" onerror=\"this.src='https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800'\">";
                  tr += "</a></li>";
                  j++;
                  console.log(j);
               photo_list.append(tr);
               }
            },
            error : function(e){
               console.log('요청실패');
            }
         });
      })
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






</body>
</html>