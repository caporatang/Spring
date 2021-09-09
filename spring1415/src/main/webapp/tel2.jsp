<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    String tel = request.getParameter("tel");
    String result = "";
   	//String no = tel.substring(3); // 인덱스 3~ 끝까지
   	//char c = tel.charAt(3); >> 앞에 0부터 세번째 글자를 가져와라.
   	String no = tel.substring(0, 3); // 인덱스 0~2를 가져와라
    if(no.equals("010")){
    	result = "111";
    } else if(no.equals("011")){
    	result = "222";
    } else {
    	result ="333";
    }
   	
    Random rd = new Random();
  /*   int no2 = rd.nextInt(100); // 0~99
    int no2 = rd.nextInt(100) + 100; // 100~199 */
    int no2 = rd.nextInt(900) + 100; // 100~199
    result = result + no2;
    %><%=result %>
