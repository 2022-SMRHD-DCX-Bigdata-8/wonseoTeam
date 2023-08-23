<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="height=device-height, initial-scale=1">
<meta http-equiv="refresh" content="3; url=goLogin.do">
<title>Insert title here</title>
<style>
        body {
            margin: 0;
        }

        .wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: black;
        }

        .slide-out-bck-center {
            -webkit-animation: slide-out-bck-center 0.5s cubic-bezier(0.550, 0.085, 0.680, 0.530) both;
            animation: slide-out-bck-center 0.5s cubic-bezier(0.550, 0.085, 0.680, 0.530) both;
            animation-delay: 2s; /* 2초의 딜레이 추가 */
        }

        @-webkit-keyframes slide-out-bck-center {
            0% {
                -webkit-transform: translateZ(0);
                transform: translateZ(0);
                opacity: 1;
            }

            100% {
                -webkit-transform: translateZ(-1100px);
                transform: translateZ(-1100px);
                opacity: 0;
            }
        }

        @keyframes slide-out-bck-center {
            0% {
                -webkit-transform: translateZ(0);
                transform: translateZ(0);
                opacity: 1;
            }

            100% {
                -webkit-transform: translateZ(-1100px);
                transform: translateZ(-1100px);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
	<div class="wrapper">
		<img class="slide-out-bck-center" src="assets/img/3.png">
	</div>
</body>

<script type="text/javascript">
setTimeout(function() {
    window.location.href = "next

// 애니메이션이 종료된 후 다음 페이지로 이동
setTimeout(function() {
    window.location.href = "next_page.html"; // 다음 페이지의 파일명
}, 2000); // 2000ms (2초) 후에 이동
</script>
</html>