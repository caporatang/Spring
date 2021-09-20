<%@page import="DTO.ADFoodDTO"%>
<%@page import="db.ADFoodDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 해당 페이지는 리디렉션으로 보이지않음.
    	
    	String ad_Writer = request.getParameter("ad_Writer");
    	String ad_Name = request.getParameter("ad_Name");
    	ADFoodDAO dao = new ADFoodDAO();
		dao.like(ad_Name);    	
		response.sendRedirect("readAll.jsp"); // 연구후에 post 페이지로 넘어가는거 구현할것.
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천</title>
</head>
<body>
<%-- 	해당 가게에 대한 추천이 완료되었습니다. <br>
	<%= ad_Name %> 
	
	<br>
	<button onclick="history.back(1)">back</button> --%>
</body>
</html>