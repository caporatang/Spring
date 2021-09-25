<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String fId =(String)session.getAttribute("fId"); // user 유저일땐 안보여요
if (fId == null) {
	fId = "admin";
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의를 남겨주세요.</title>
<style>
table {
    margin-left:auto; 
    margin-right:auto;
}


</style>
</head>
<body>
	<div align="center">
		<h1>문의하기</h1>
		<hr color="gray">
	</div>
<jsp:include page="header.jsp"></jsp:include>
	<form action="questionWrite">
		<table>
			<tr>
				<td><h3>어떤 사항에 대해 문의 하시나요 ?</h3><br> <select name="qkind"
					style="width: 430px">
						<option value="val" selected="selected">선택하세요</option>
						<option value="reservation">예약</option>
						<option value="feedback">피드백</option>
						<option value="payment">결제</option>
						<option value="airline">항공</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>
					<h3>제목</h3> <input name="qtitle" size=55>
				</td>
			</tr>
			<tr>
				<td>
					<h3>문의 내용</h3> <textarea rows="10" cols="55" name="qcontent"></textarea>
					<input type="hidden" value="<%=fId %>" name="qid">				
					<br>
				</td>
			</tr>
			<tr>
				<td>
				<div align="center">
					<button class="button">문의 남기기</button>
				</div>
				</td>
			</tr>
		</table>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>