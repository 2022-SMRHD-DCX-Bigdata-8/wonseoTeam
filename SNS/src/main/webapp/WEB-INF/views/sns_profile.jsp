<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
img{
width : 100px;
height : 100px;
}
</style>
</head>
<body>
	<p>${sessionUser.userId }</p>
	<p>
		<img src="save/${sessionUser.userPhoto }" onerror="this.src='https://www.thechooeok.com/common/img/default_profile.png'">
	</p>
	<p>
		팔로워 수 : <span id="followerCount">0</span>
	</p>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$.ajax({
				type : 'get',
				url : 'count.do',
				data : {
					"id" : ${sessionUser.userId}
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

</body>
</html>