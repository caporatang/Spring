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
	
	
	
	$('#b4').click(function() {
		//alert('b4 click')
	telValue = $('#tel').val() 
		//alert(telValue)
	$.ajax({
		url : "tel.jsp",
		data : {
			tel : telValue
			
		}, // json형식으로 data를 넘겨줘야함 data
		success : function(result) {
			//alert('tel.jsp 호출 성공!!')
			alert(result)
			$('#d1').append(result + "<br>")
			
		}, // success
		error : function() {
			alert('tel.jsp 호출 실패')
			
		}// error
	}) // ajax
	}) // #b1
	
	
	
	$('#b3').click(function() {
		//alert('b3 click')
	userValue = $('#user').val() // "apple" << db에서 검색하면 됌
		//alert(word)
	$.ajax({
		url : "user.jsp",
		data : {
			user : userValue
			
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
	
	
	$('#b2').click(function() {
		//alert('b2 click')
	moneyValue = $('#money').val() // "내가 가는 스트링.!!!"
	payValue = $('#pay').val() // 1, 2 , 3
		//alert(word)
	$.ajax({
		url : "money.jsp",
		data : {
			money : moneyValue,
			pay : payValue
		}, // json형식으로 data를 넘겨줘야함 data
		success : function(result) {
			//alert('money.jsp 호출 성공!!')
			$('#d1').append('당신이 결제할 금액은' + result)
		
		}, // success
		error : function() {
			alert('money.jsp 호출 실패')
			
		}// error
	}) // ajax
	}) // #b1
	
	
	$('#b1').click(function() {
		//alert('b1 click')
	wordValue = $('#word').val() // "내가 가는 스트링.!!!"
		//alert(word)
	$.ajax({
		url : "test.jsp",
		data : {
			word : wordValue
			
		}, // json형식으로 data를 넘겨줘야함 data
		success : function(result) {
			//alert('test.jsp 호출 성공!!')
			//alert(result)
			$('#d1').append(result + "<br>")
			
		}, // success
		error : function() {
			alert('test.jsp 호출 실패')
			
		}// error
	}) // ajax
	}) // #b1
	
}) // start end

</script>
</head>
<body bgcolor="green">
	<h1>비동기통신으로 서버와 통신하기</h1>
	<hr>	
	ajax테스트 :<input id="word"> <button id="b1">ajax 테스트(test.jsp)</button><br>
	결제금액 : <input id="money"> <br>
	1)계좌이체, 2)신용카드, 3) 휴대폰 결제<br>
	결제수단: <input id="pay"> <button style="background-color: green;" id="b2">결제하기</button>
	<hr color="red">
	회원가입할 id 입력 : <input id="user"> <button style="background-color: yellow;" id="b3">회원가입시 id중복 체크</button>
	<hr color="red">
	인증받을 전화번호 입력 : <input id="tel"><button style="background-color: pink;" id="b4">인증번호 받기</button>
	<hr color="green">
	<div id="d1"></div> <!--어펜드 댓글  -->
</body>
</html>