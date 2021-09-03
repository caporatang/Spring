<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
welcome !! login page.! 
<hr>
<form action="password.mega">
password : <input name="pass"><br>
<button>암호 처리 요청</button>
</form>
<hr>
<form action="login.mega"> <!-- login.mega << 요청한 주소 하나당 컨트롤러에서 메서드 하나가 필요함. -->
id : <input name="id"><br>
pw : <input name="pw"><br>
<button>로그인 처리 요청</button>
<hr>
</form>
<form action="check.mega">
nickName : <input name="nick"><br>
<button>닉네임 처리 요청</button>
</form>
</body>
</html>