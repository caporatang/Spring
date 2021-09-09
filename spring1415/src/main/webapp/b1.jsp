<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
	String food1 = request.getParameter("food1");
	String food2 = request.getParameter("food2");
	String result = "오늘은" + food1 +"을 먹고, 내일은" + food2 +"을 먹겠어!";
	 %><%=result %>