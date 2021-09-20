<%@page import="db.CommentDAO"%>
<%@page import="DTO.CommentDTO"%>
<%@page import="DTO.ADFoodDTO"%>
<%@page import="db.ADFoodDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
 		// 해당 페이지는 리다이렉션으로 보이지않음.

 		String ad_CoNum = request.getParameter("ad_CoNum");    
    	int ad_CoNum1 = Integer.parseInt(ad_CoNum);
    	CommentDAO dao = new CommentDAO();
    	CommentDTO dto = new CommentDTO();
    	dto.setAd_CoNum(ad_CoNum1);
    	dao.delete(dto);
    	response.sendRedirect("readAll.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
<link rel="stylesheet" href="css/out.css">
</head>
<body>
	
	<!-- <hr color="purple">
	글삭제가 완료되었습니다!
	<hr color="purple"> 
	<form action="placeM.html">
		<button>HOME 으로 가기!</button>
	</form> -->
	
</body>
</html>