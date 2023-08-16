<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${sessionUser.userId }</p>
	<p>
		<img src="save/${sessionUser.userPhoto }">
	</p>
	<p>
		팔로워 수 : <span id="followerCount">0</span>
	</p>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<script>
		$(document).ready(function() {
			count();
		});

		function count() {
			$.ajax({
				url : 'count.do',
				type : 'get',
				data : {
					"id" : ${user.userId}
				},
				dataType : 'json',
				success : function(res){
					let fCount = $('#followerCount');
					fCount.html('');
					fCount.append(res);
					
				},
				error : fuction(e) {
					console.log('요청실패');
				}
			});
		}
	</script>
</body>
</html>