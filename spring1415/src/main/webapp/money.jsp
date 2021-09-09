``````````````<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    int money = Integer.parseInt(request.getParameter("money"));
    int pay = Integer.parseInt(request.getParameter("pay"));
    double total = 0;
    if (pay == 1){
    	total = money * 0.8;
    } else if (pay==2){
    	total = money * 0.9;
    } else {
    	total = money;
    }
    %><%=(int)total %>
