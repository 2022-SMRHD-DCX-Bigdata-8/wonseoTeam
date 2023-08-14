<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>회원가입</h1>
   <form action="join.do" method="post" enctype="multipart/form-data">
      ID : <input type="text" name="id"><br>
      PW : <input type="password" name="pw"><br>
      NAME : <input type="text" name="name"><br>
      TEL : <input type="tel" name="tel"><br>
      EMAIL : <input type="text" name="email"><br>
      PHOTO : <input type="file" name="img">
      <input type="submit" value="회원가입">
   </form>

</body>
</html>