<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_chat.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
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
				name="sop" value="and"> <select style="visibility: hidden;"
				name="searchSelects" id="searchSelects" class="select-cus">
				<option value="userId">사용자ID</option>
				<option value="musicTitle">노래제목</option>
			</select>

			<div align="center" class="search_box">
				<h1>${sessionUser.userId }와${opponent }의채팅방</h1>
			</div>
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

		<!-- 메시지가 보이는 칸 -->
		<div id="knu-container">
			<div id="chatDiv">
			</div>
		</div>


		<!-- 메시지 보내는 칸 -->
		<div id="knu-content">
			<input type="text" id="chat">
			<button>보내기</button>
		</div>

		<!-- Sidebar right-->
		<div id="knu-sidebar2"></div>

		<!-- footer -->

	</div>

	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

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
		$(document).ready(function(){
			var roomNo = ${roomNo};
			var me = ${sessionUser.userId };
			console.log("안녕");
			$.ajax({
				url : 'loadChat.do',
				type : 'get',
				data : {
					"roomNo" : ${roomNo},
					"me" : me
				},
				dataType : 'json',
				success : function(res){
					let chatDiv = $('#chatDiv');
					chatDiv.html('');
					
					for (let i = 0;i<res.length;i++){
						tr = `
						<div class="balloon2">
						<p>\${res[i].sendId} : \${res[i].content}</p>
						</div>
						`;
						chatDiv.append(tr);
					}
					
				},
				error : function(e){
					console.log("요청실패");
				}
			});
		
		})
	</script>

	<script type="text/javascript">
$(document).ready(function(){
		var me = ${sessionUser.userId };
		// 0. 비동기 통신 방식으로 DB에 저장된 내용 가져오기
		
		// 1. WebSocket 객체 생성
		const websocket = new WebSocket("ws://localhost:8081/SNS/SNS/${roomNo}"); // socket url
		
		// 2.1. 연결이 완료 되었을 떄, 무슨일을??
		websocket.onopen = function(message){ // message --> 주고 받는 데이터가 들어있는 객체
			console.log("연결 성공");
		}
		
		// 2.2. 연결 끊겼을 때
		websocket.onclose = function(message){
			console.log('연결 끊김')
		}
		
		// 2.3. 메세지를 받았을 때
		websocket.onmessage = function(message){
			console.log(message.data)
			
			chatJson = JSON.parse(message.data); // JSON 문자열 --> javascript object
			// { 'id' : 'asdf', 'msg' : '123'}
			// 채팅이 가시화
			let c = `
				<div class="balloon2">	
					<p>\${chatJson.sendId}	: \${chatJson.comment}</p>
				</div>
			`;
			
			$('#chatDiv').append(c);
		}
		
		$('button').click(function(){
			
			// 사용자의 이름과, 채팅 등 여러 정보를 한번에??
			msg = {
					'sendId' : me,
					'content' : $('#chat').val(),
					'roomSeq' : ${roomNo}
			}
			
			let c = `
				<div class="balloon2">	
					<p> \${msg.sendId} : \${msg.content} </p>
				</div>
			`;
			
			$('#chatDiv').append(c);			
			
			websocket.send(JSON.stringify(msg));			
		});
		
	})
	</script>


</body>
</html>