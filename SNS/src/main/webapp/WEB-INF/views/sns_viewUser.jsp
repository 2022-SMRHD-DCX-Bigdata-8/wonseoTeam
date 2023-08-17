<%@page import="com.smhrd.entity.sns_userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
img {
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>
	<p>${user.userId }</p>
	<p>
		<img src="save/${user.userPhoto }"
			onerror="this.src='https://www.thechooeok.com/common/img/default_profile.png'">
	</p>
	<p>
		팔로워 수 : <span id="followerCount">0</span>
	</p>

	<button id="fButton">팔로우하기</button>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		var followerId = ${sessionUser.userId};
		var followingId = ${user.userId};
		$.ajax({
			type : 'get',
			url : 'followCheck.do',
			data : {
				"followerId" : followerId,
				"followingId" : followingId
			},
			success : function(res) {
				let followerCount = $('#followerCount');
				followerCount.html(res);
			},
			error : function(e) {
				console.log("오류 발생");
			}
		});
	})
	</script>
	
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('#fButton').click(function() {
				var followerId = ${sessionUser.userId};
				var followingId = ${user.userId};
				$.ajax({
					type : 'get',
					url : 'follow.do',
					data : {
						"followerId" : followerId,
						"followingId" : followingId
					},
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success : function(res) {
						let fbutton = $('#fButton');
						fbutton.html(res);
						var followerId = ${sessionUser.userId};
						var followingId = ${user.userId};
						$.ajax({
							type : 'get',
							url : 'followCheck.do',
							data : {
								"followerId" : followerId,
								"followingId" : followingId
							},
							success : function(res) {
								let followerCount = $('#followerCount');
								followerCount.html(res);
							},
							error : function(e) {
								console.log("오류 발생");
							}
						});
						
					},
					error : function(e) {
						console.log(res);
					}
				});
			})
		})
	</script>

</body>
</html>