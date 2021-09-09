<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    String word = request.getParameter("word");
    System.out.println(word);
    %>당신이 받은 말은 <%= word %>
    <!-- 공백도 인식 하기 때문에 자바코드 이외의 것들은 공백을 제거 해주어야 한다 -->