<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 지시자 
	uri에서 세번째꺼를 사용한다(core)
	prefix >> 앞에 붙일 글자를 적어줘야 tomcat에서 인식한다.
 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	전체 프린트 : ${list}

	<hr color="red">
	<!-- jstl이다.
for-each앞에 : 글자가 붙으면 서버에서 실행이 되기때문에 
브라우저가 아니라 tomcat에서 실행된다


for(String s : list){
	System.out.println(s);
}  과 똑같은 기능이다
-->
	<table border=1>
		<tr bgcolor="yellow">
			<td width="100">아이디</td>
			<td width="100">이름</td>
			<td width="100">전화번호</td>
			<td width="100">상세페이지</td>
			<td width="100">삭제</td>
		</tr>
		<c:forEach items="${list}" var="dto">
			<!-- step="2" beggin ="1" end="5" -->
			<!-- var는 찍어줄때 사용할 변수이고 자바에서 쓰는 foreach에 변수가 필요한것과 같다 -->
			<tr bgcolor="lime">
			<td width="100">${dto.id}</td>
			<td width="100">${dto.name}</td>
			<td width="100">${dto.tel}</td>
			<td width="100">
				<a href="one.do?id=${dto.id}">
				<button style="background: pink;">상세페이지로 이동</button>
				</a>
			</td>
			<td width="100">
				<a href="del.do?id=${dto.id}">
				<button style="background: blue; color: white">삭제</button>
				</a>
			</td>
		</tr>
		${dto} <br>
		</c:forEach>
	</table>
</body>
</html>