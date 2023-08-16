<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${user.userId }</p>
	<p><img src="save/${user.userPhoto }"></p>
	<p>팔로워 수 : <span id="followerCount">0</span></p>
	<button id="followButton">팔로우</button>
	
	<script>
        $(document).ready(function() {
            $("#followButton").click(function() {
                $.ajax({
                    type: "POST",
                    url: "follow.do",
                    success: function(newFollowerCount) {
                        $("#followerCount").text(newFollowerCount);
                    }
                });
            });
        });
    </script>
</body>
</html>