<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noL Join</title>
<link rel="stylesheet" href="assets/css/sns_login_join.css">
<div id="kun-header">
   <img src="">
</div>
</head>
<body>
   <div class="wrapper" >
      <div class="container">
         
            <h1 align="center">create user</h1>
            <form action="join.do" method="post" enctype="multipart/form-data">
               
                  <input type="text" name="id" id="checkInput" placeholder="ID">
                  <p id="checkResult"></p>
                  <input type="password" name="pw" placeholder="PW"><br>
                  <input type="text" name="name" placeholder="Name"><br>
                  <input type="tel" name="tel" placeholder="Tel"><br> <input
                     type="text" name="email" placeholder="E-mail"><br> <input
                     type="file" name="img" placeholder="Photo">
                  <button class="form_btn" >create</button>
               
            </form>
            <div class="overlay-container" >
                <div class="overlay-left">
                    <h1>Welcome Back</h1>
                    <p>To keep connected with us please login with your personal info</p>
                    <button id="signIn" class="overlay_btn">Sign In</button>
                </div>
                <div class="overlay-right">
                    <h1>Hello, Friend</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <button id="signUp" class="overlay_btn">Sign Up</button>
                </div>
            </div>
            <script
               src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
            <script type="text/javascript">
               $(document).ready(function() {
                  var input = $('#checkInput')
                  input.on('input', idCheck);
               });

               // emailCheck 기능 만들기!
               function idCheck() {
                  // 입력된 값이 DB에 존재하는지 확인 필요!

                  // input에 입력되는 값을 바로 가져오는 명령!
                  var value = $(this).val();

                  $.ajax({
                     url : 'idCheck.do',
                     type : 'post',
                     data : {
                        "id" : value
                     },
                     success : function(res) {
                        // 사용여부 알려주기!
                        var p = $('#checkResult');

                        if (res == "true") {
                           p.html('사용이 가능한 아이디입니다.').css("color",
                                 "blue");
                        } else {
                           p.html('사용이 불가능한 아이디입니다.').css("color",
                                 "red");
                        }
                     },
                     error : function(e) {
                        alert('실패');
                     }
                  });
               }
            </script>
      
      </div>
   </div>
</body>
</html>