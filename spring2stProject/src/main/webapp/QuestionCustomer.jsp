<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의를 남겨주세요.</title>
</head>
<body>
	<h1>문의하기</h1>
	<hr color="gray">
	<form action="questionWrite">
	어떤 사항에 대해 문의 하시나요 ? <br>
	<select name="QKIND" style="width: 430px">
			<option value="val" selected="selected">선택하세요</option>
			<option value="reservation">예약</option>
			<option value="feedback">피드백</option>
			<option value="payment">결제</option>
			<option value="airline">항공</option>
		</select><br>
		
		<h3>제목</h3>
		<input name="QTITLE" size=65><br>
		
		<h3>세부 내용</h3>
		<textarea rows="20" cols="50" name="QCONTENT"></textarea>
		<button>문의 남기기</button>
	</form>
</body>
</html>