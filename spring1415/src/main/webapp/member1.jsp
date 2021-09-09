<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 
session.getAttribute
${id} : 세션 출력 -->
<body bgcolor="green">
	welcome!! member page.!
	<hr>
	<form action="one.do">
		id : <input name="id">
		<button>회원 정보 검색 요청</button>
	</form>
	<hr>
	<a href="list.mega">회원 정보 전체 목록 가지고 오기</a>
	<hr>
	<a href="delBoard.mega"> 회원 정보 삭제하기</a>
</body>
</html>