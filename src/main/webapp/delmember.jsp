<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
	<h2>회원 탈퇴</h2>
	<hr>
	<form action="delmemberOk.jsp" method="post">
		아이디 : <input type="text" name="id"><br><br>
		<input type="submit" value="회원탈퇴">
			
	</form>
</body>
</html>