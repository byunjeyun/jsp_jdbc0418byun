<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 연결 테스트</title>
</head>
<body>
	<%
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/webdb";
		String username = "root";
		String password = "5542";
		
		Connection conn = null;
		
		try{
		Class.forName(driverName);//드라이버 로딩
		conn = DriverManager.getConnection(url, username, password);
		
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
		//} catch(ClassNotFoundException e){
			//out.println("드라이브에러");
			
		//} catch(SQLException e){
			//out.println("SQL 에러");
		//}
	%>
</body>
</html>