<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">

$(function() {
	
	$('#b3').click(function() {
		//alert('b3 click')
	userValue = $('#user').val() // "apple" << db에서 검색하면 됌
		//alert(word)
	$.ajax({
		url : "check2.mega",
		data : {
			id : userValue
			
		}, // json형식으로 data를 넘겨줘야함 data
		success : function(result) {
			//alert('user.jsp 호출 성공!!')
			alert(result)
			$('#d1').append(result + "<br>")
			
		}, // success
		error : function() {
			alert('user.jsp 호출 실패')
			
		}// error
	}) // ajax
	}) // #b1
	
}) // start end

</script>
</head>
<body bgcolor="green">
	<h1>비동기통신으로 서버와 통신하기</h1>
	<hr color="red">
	회원가입할 id 입력 : <input id="user"> <button style="background-color: yellow;" id="b3">회원가입시 id중복 체크</button>
	<div id="d1"></div> <!--어펜드 댓글  -->
</body>
</html>