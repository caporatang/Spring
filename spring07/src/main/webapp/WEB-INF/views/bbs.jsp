<%@page import="com.mega.mvc07.BbsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
게시물 등록 완료
게시판 입력 정보 확인
<hr color = "red">
<!-- <$= > expression < 표현식
$는 표현식의 문법을 붙인것이다. 문법을 붙인것은 언어라고 한다. 
expression language : EL이라고 한다. -->
게시판 번호: ${bbsDTO.bNo}<br>
게시판 제목: ${bbsDTO.title}<br>
게시판 내용: ${bbsDTO.content}<br>
게시판 작성자: ${bbsDTO.writer}<br>
</body>
</html>