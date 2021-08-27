<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
1.webapp아래에 있는 jsp 페이지는 클라이언트만 요청할 수 있다. jsp페이지만 올 수 있음
2. 클라이언트가 브라우저를 통해서 요청을 하게 된다.
    me.jsp를 호출한다.
3. 서버에서는 클라이언트가 요청한 me.jsp를 webapp아래에서 찾는다.
4. 찾은 jsp페이지를 실행 시킨 후, html을 만든다. 이 html을  브라우저에 전송한다.
5. 브라우저가 받은 html을 실행시킴. 화면에 html이 나타남
6.form에 입력 후, 입력한 데이터를 서버에 주면서 서버에 요청을 해야함.
7. 서버에서는 클라이언트가 입력한 정보를 받아서 dto를 만든 후 넣어야 하고,
    이 dto에 데이터를 db에 넣는 처리를 해야한다.
8. 받아서 db처리하는 부분은 컨트롤러에 구현한다.
9. 컨트롤러를 사용해야하는 요청은 가상의 주소를 만들어서 요청해야 한다.
10.컨트롤러 안에 @requestMapping중에서 가상의 주소와 맵핑되는 메서드를 찾아서 
     그 아래에 있는 메서드를 호출한다.
11. 메서드 안에 dto변수를 입력 파라메터로 설정 해놓으면 dto를 만들어서 서버에서 받은 값들을 
      dto에 다 넣어준다 
12. db처리하는 경우 dto를 입력값으로 처리한다.
13. 처리 결과를 클라이언트에 알려주기 위해 views아래에 jsp파일을 만들어놓으면, 자동 호출된다.
14. views아래에 자동호출되는 jsp페이지는 요청주소가 in.mega인 경우 in.jsp를 찾는다 
15. Views/in.jsp를 실행 후 , html을 만들어서 클라이언트에 응답...
 -->
<a href="index.jsp">첫 페이지로</a>
<hr>
<form action="in.mega">
아이디 : <input name="id"><br>
패스워드 : <input name="pw"><br>
이름 : <input name="name"><br>
전화번호 : <input name="tel"><br>
<button>회원가입 신청완료</button>
</form>

</body>
</html>