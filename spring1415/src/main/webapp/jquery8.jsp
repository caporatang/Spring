<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript" src="resources/js/out2.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		//자바에서 키 : 값의 자료구조는 map(맵)이라고 한다..
		// 자바스크립트 JavaScript Object Notation
		// 			("자바스크립트"에서 "대상"을 '표기'하는 방법)
		//			JASON(제이슨)

		//$.ajax({url: "...", data: ..., success:..., error: ...})
		//$.ajax(JSON타입의 입력 값을 넣어주어야함)
		// key value 인데 처리 : function의 형태로 들어간다
		$('#b1').click(function() {
			$.ajax({
				url : "ios.jsp",
				//data : {},
				success : function(doc) { // doc는 성공했을때 결과를 담아줄 변수이다 변수명은 임의로 설정한다
					alert('성공 !!')
					alert(doc)
					$('#result').append(doc + '<br>')},
					
				error : function() {
					alert('실패@@')
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url : "a.jsp",
				//data : {},
				success : function(today) {
					$('#result').append(today + '<br>')},
				
				error : function() {
					alert('요일 모르세요?')
				}
				
			})
		})
		
			$('#b3').click(function() {
			$.ajax({
				url : "b.jsp",
				//data : {},
				success : function(today) {
					$('#result').append(today + '<br>')},
				
				error : function() {
					alert('요일 모르세요?')
				}
				
			})
		})
		
		
	})
</script>
</head>
<body>
	<button id="b1">AJax Test!</button>
	<button id="b2">오늘은 무슨 요일인가요</button>
	<button id="b3">내일은요 ?</button><br>
	ajax 실행 결과는 <div id="result"></div>
	
</body>
</html>