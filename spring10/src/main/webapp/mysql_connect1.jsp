<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.cj.jdbc.PreparedStatementWrapper"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 1.driver설정
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1.driver연결 성공<br>"); // out객체.. 자바를 html바디에 출력해주는 객체
	// 2. db연결
	String url = "jdbc:mysql://database-2.cl8xpoklavso.us-east-2.rds.amazonaws.com/shop";
	// rds에 엔드포인트가 url주소.
	
	String user = "root";
	String password = "*mega709";
	Connection con = DriverManager.getConnection(url, user, password);
	out.print("2.db연결 성공<br>");
	
	// 3. sql 객체
	/* String sql = "insert into member values ('rds', 'rds', 'rds', 'rds')";
	PreparedStatement ps = con.prepareStatement(sql);
	out.print("3.sql객체 설정 성공<br>"); */
	
	// 4. sql문 전송
	/* ps.executeUpdate(); // 성공이면 1리턴 , 실패할 경우 0
	out.print("4. 전송 성공<br>"); */
	%>
</body>
</html>