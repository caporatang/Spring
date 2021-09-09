<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
//조건 처리 > 30도 이상이면 엄청 덥군, 아니면 가을이군
// 오늘은 목요일인데 , 엄청 덥군
$(function() {
	
	$('#b2').click(function() {
		//alert('b2 click')
	tempValue = $('#temp').val() // 기온
	dayValue = $('#day').val() // 요일

	$.ajax({
		url : "b2.jsp",
		data : {
			temp : tempValue,
			day : dayValue
		}, 
		success : function(result) {
			//alert('b2.jsp 호출 성공!!')
			//alert(result)
			$('#out').append(result + "<br>")
			
		}, // success
		error : function() {
			alert('b2.jsp 호출 실패')
			
		}// error
	}) // ajax
	}) // #b1
	
	$('#b1').click(function() {
		//alert('b1 click')
	food1Value = $('#food1').val() // 자장면
	food2Value = $('#food2').val() // 우동

	$.ajax({
		url : "b1.jsp",
		data : {
			food1 : food1Value,
			food2 : food2Value
		}, 
		success : function(result) {
			//alert('b1.jsp 호출 성공!!')
			//alert(result)
			$('#out').append(result + "<br>")
			
		}, // success
		error : function() {
			alert('b1.jsp 호출 실패')
			
		}// error
	}) // ajax
	}) // #b1
	
	
}) //start end


</script>
</head>
<body>
	먹고 싶은 음식 : <input id="food1"> <br>
	먹기 싫은 음식 : <input id="food2"> <br>
	<button id="b1">먹고싶은 음식</button> <br>

	오늘의 온도는 : <input id="temp"><br>
	오늘은 무슨 요일인가? : <input id="day"><br>
	<button id="b2">요일과 날씨</button><br>

<hr color="green">

	<div id ="out"></div>
</body>
</html>