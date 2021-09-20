<%@page import="db.CommentDAO"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><jsp:useBean id="dto" class="DTO.CommentDTO"></jsp:useBean><jsp:setProperty property="*" name="dto"/>
    <%
    	CommentDAO dao = new CommentDAO();
    	int result = dao.create(dto);
    %><%= result %>
 