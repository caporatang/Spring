<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type = "text/javascript" src="resources/js/out.js"></script>
<script type = "text/javascript" src="resources/js/out2.js"></script>
<script type="text/javascript">
	function ad(){
		n1Value = document.getElementById("n1").value
		n2Value = document.getElementById("n2").value
		n1 = parseInt(n1Value)
		n2 = parseInt(n2Value)
		result = add(n1, n2)
		alert(result)
	}

	function min(){
		n1Value = document.getElementById("n1").value
		n2Value = document.getElementById("n2").value
		n1 = parseInt(n1Value)
		n2 = parseInt(n2Value)
		result = minus(n1, n2)
		alert(result)
	}
	
	function divis(){
		n1Value = document.getElementById("n1").value
		n2Value = document.getElementById("n2").value
		n1 = parseInt(n1Value)
		n2 = parseInt(n2Value)
		result = division(n1, n2)
		alert(result)
	}
	function mul(){
		n1Value = document.getElementById("n1").value
		n2Value = document.getElementById("n2").value
		n1 = parseInt(n1Value)
		n2 = parseInt(n2Value)
		result = multiple(n1, n2)
		alert(result)
	}
	
	
</script>
</head>
<body>
숫자 1 : <input id="n1"><br>
숫자 2 : <input id="n2"><br>
<button onclick="ad()">더하기</button><br>
<button onclick="min()">빼기</button><br>
<button onclick="divis()">나누기</button><br>
<button onclick="mul()">곱하기</button><br>

</body>
</html>