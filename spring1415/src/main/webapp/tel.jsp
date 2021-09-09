<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    //service() << 서비스라는 메서드 안에 들어가기 때문에 JSP에 쓸때는 초기화를 꼭 시켜주어야 한다.
    String tel = request.getParameter("tel");
    //substring은 가져올 글자수 보다 범위 + 1 해준다 3을 줘야 0~2까지 가져 
    String result = "";
    String no = tel.substring(0, 3); // 0~2, 010, 011, 019
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