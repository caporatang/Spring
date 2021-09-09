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
		//댓글 앞에 그림 붙이기 , 이어 붙이기
		$('#b1').click(function() {
			comment = $('#word').val()
			$('#result').append(comment + '<br>')

		})
		$('#b2').click(function() {
			img = '<img src ="resources/img/sql.png" width="100" height="100">'
			$('#result').append(img + '<br>')
		})

		$('#b3').click(function() {
			comment = $('#word').val()
			img = '<img src ="resources/img/sql.png" width="100" height="100">'
			$('#result').append(img + ' ' + comment + '<br>')
		})
	})
</script>
</head>
<body>
	댓글 :
	<input id="word">
	<button id="b1">댓글 추가</button>
	<button id="b2">이미지 추가</button>
	<button id="b3">댓글 + 이미지추가</button>
	<hr color="red">
	<div id=result></div>
</body>
</html>