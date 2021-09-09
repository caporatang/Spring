<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type = "text/javascript" src="resources/js/out2.js"></script>
<script type="text/javascript">
	//BODY부분을 먼저 ram에 읽어들여라.!!!
	//document.ready()
	/* $(function() {
		//버튼을 클릭했을 때 n1과 n2의 값을 가지고 오자.
		//버튼태그를 선택 하고싶으면 따옴표를 써주자
		$('button').click(function() {
			alert('test!!')
		})
	}) */	
	function push() {
		n1Value = $('#n1').val()
		n2Value = $('#n2').val()
		n1 = parseInt(n1Value)
		n2 = parseInt(n2Value)
		arr = [n1, n2]
		return arr
	}
	
	$(function() {
		//특정 아이디를 선택할때는 #을 붙여준다
		$('#b1').click(function() {			// 콜백(CALL-BACK) 함수..라고 한다
			//alert('test1---')
			//값을 가져올려면 val함수를 사용 해주어야 한다.
			
		arr2 = push() // push에 있는 배열을 arr2에 넣어줌
		result = add(arr2[0], arr2[1]) // arr2에 있는 인덱스 값을 result를 넣어줌 
		alert(result)
		})
		
		$('#b2').click(function() {

		arr2 = push()
		result = minus(arr2[0], arr2[1])
		alert(result)
		})
		
		$('#b3').click(function() {
							
			arr2 = push()
			result = multiple(arr2[0], arr2[1])
			alert(result)	
		})
		
		$('#b4').click(function() {
			arr2 = push()
			result = division(arr2[0], arr2[1])
			alert(result)
		})
	})
</script>
</head>
<body>
	숫자 1 : <input id="n1"><br>
	숫자 2 : <input id="n2"><br>
	<button id="b1">더하기</button>
	<button id="b2">빼기</button>
	<button id="b3">곱하기</button>
	<button id="b4">나누기</button>
</body>
</html>