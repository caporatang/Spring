<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type = "text/javascript" src="resources/js/out.js"></script>
<script type = "text/javascript" src="resources/js/out2.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {
	
	$('#b1').click(function() {	// id가 b1인 버튼을 클릭하면
		idUse = $('#user').val() // user에 있는 값을 가져와서 idUse에 넣어라
		if (idUse.length >= 5) { // 입력된 값이 5글자 이상이면
			$('#result').text('사용가능 아이디') // 5글자 이상이면 가능이고 , result에 텍스트가 들어감
		} else {
			$('#result').text('사용할수 없음') // 5글자 미만이면 사용할수 없음을 result에 텍스트를 넣어줌
			$('#user').val('') // val값을 공백으로 
		}
	})
	/* $('#b2').click(function() {
		pw1 = $('#pw1').val()
		pw2 = $('#pw2').val()
		if (pw1 == pw2) {
			$('#result').text('사용가능 비밀번호')
		} else {
			$('#result').text('비밀번호를 다시 확인 해주세요')
			$('#pw1').val('');
			$('#pw2').val('');
		}	
	}) */
	
	$('#b2').click(function() {
		pw1 = $('#pw1').val()
		pw2 = $('#pw2').val()
		if (pw1 == pw2) {
			$('#result').append('사용가능 비밀번호<br>')
		} else {
			$('#result').append('비밀번호를 다시 확인 해주세요<br>')
			$('#pw1').val('');
			$('#pw2').val('');
		}	
	})
})
</script>
</head>
<body>
아이디 입력 : <input id="user"><br> <button id ="b1">아이디 유효성 검사</button>
<!-- id글자수가 5글자 이상이면 유효한 id / 아니면 유효하지 않은 id,
	유효하지 않은 경우 user의 값을 clear -->
<hr>
비밀번호 1 : <input id="pw1"> <br>
비밀번호 2 : <input id="pw2"> <br> <button id="b2">암호 유효성 검사</button>
<!-- result에 프린트 : pw1, pw2의 값이 동일하면 동일한 pw/ 아니면 동일하지 않은 Pw,
	 동일하지 않은 경우 pw1, pw2의 값을 clear  -->
	 <hr>
	 <div id="result"></div>
</body>
</html>