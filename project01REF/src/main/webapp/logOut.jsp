<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
  	  String id =(String)session.getAttribute("id");
    session.removeAttribute("id");
   	 session.invalidate();
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
로그아웃 되었습니다

<%-- <%= session.invalidate() %> --%>
아이디는 : <%= id %>
<form action="ADFood.jsp">
<button>HOME</button>
</form>
</body>
</html>