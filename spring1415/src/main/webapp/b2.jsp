<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
   	double temp = Double.parseDouble(request.getParameter("temp")); // '실수'형 계산을 위한 double..
   	String temp2 = "가을이군";
	if(temp >= 30){
		temp2 = "아직 덥군 !";
	}
    String day = request.getParameter("day");
    String result = "오늘은" + day + "이고," + temp2;
    %><%=result %>
