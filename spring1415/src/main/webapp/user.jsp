<%@page import="org.eclipse.jdt.internal.compiler.ast.ForeachStatement"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.WhileStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    String user = request.getParameter("user");
    String[] list = {"root", "summer", "park"}; // db에 들어있던 값임. 중복체크..!
	String result = "가입 가능한 아이디 입니다.";
    //반복문을 돌려서 하나씩 꺼내온다.
     for(String data: list){
    	if(data.equals(user)){
    		result = "중복된 아이디 입니다. 가입 불가능합니다.";
    	}
    }
	/* for (int i = 0; i < list.length; i++) {
		if(list[i].equals(user)){
			result = "중복된 아이디 입니다. 가입 불가능합니다.";
		}
	} */
    %><%=result %>
