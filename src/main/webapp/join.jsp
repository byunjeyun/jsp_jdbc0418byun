<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>회원가입 양식</h2>
	<hr>
	<form action="joinOk.jsp" method="post">
		아이디:<input type="text" name="id"><br>
		패스워드:<input type="password" name="pw"><br>
		이름:<input type="text" name="name"><br>
		이메일:<input type="text" name="email"><br>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>