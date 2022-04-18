<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	
	String mId=request.getParameter("id");
			
	String sql = "delete from members where ID = ?";
	
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/webdb";
	String username = "root";
	String password = "5542";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	
	try{
	Class.forName(driverName);//드라이버 로딩
	conn = DriverManager.getConnection(url, username, password);
	pstmt = conn.prepareStatement(sql);//sql문 실행 객체
	pstmt.setString(1, mId);
	
	int dbFlag = pstmt.executeUpdate();//sql문 실행
	
	if(dbFlag == 1){
		out.println("회원 탈퇴 성공");
	} else{
		out.println("회원 탈퇴 실패!!");
	}
		
	
	out.println(conn);
	} catch(Exception e){
		e.printStackTrace();//에러 내용 출력
	} finally {
		try{

			if(conn != null) {
				conn.close();	
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	%>
</body>
</html>