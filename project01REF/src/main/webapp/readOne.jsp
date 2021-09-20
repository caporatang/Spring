<%@page import="java.util.ArrayList"%>
<%@page import="DTO.ADFoodDTO"%>
<%@page import="db.ADFoodDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String ad_Writer = request.getParameter("ad_Writer");

	ADFoodDTO dto = new ADFoodDTO();
	dto.setAd_Writer(ad_Writer);

	ADFoodDAO dao = new ADFoodDAO();
 	ADFoodDTO dto2 = dao.read(dto);
 	
 	/* 세션 set */
 	String memberId = dto2.getAd_Writer();  // 추후 세션아이디 값 가져올것.
 	int memberBusiness = 1;					// 세션 비지니스 인트값 가져올것.
	
 	String id = "admin";					// 관리자 세션
 	int memberBusiness1 = 2;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 게시판 목록</title>
</head>
<body>
	<h3>게시판 글 검색 목록</h3>
	<hr color="green">
	<!-- 검색결과 table  -->
	<table border=1 style="width: 750px;">
		<tr bgcolor="green">
			<th width="13%">사진</th>
			<th width="15%">가게이름</th>
			<th>소개</th>
			<th width="8%" style="text-align: center;">추천수</th>
			<th>작성자</th>
		</tr>
		<tr>
			<td><a href="http://localhost:8889/project01Exercise/post.jsp?ad_Writer=<%=dto2.getAd_Writer()%>"><img width="80px" height="80px" src="img/<%= dto2.getAd_Img() %>"></a></td>
			<td style="text-align: center;"><a href="http://localhost:8889/project01Exercise/post.jsp?ad_Writer=<%=dto2.getAd_Writer()%>"> <!-- 제목 눌렀을때 이동 --> <%=dto2.getAd_Name()%></a></td>
			<td><%= dto2.getAd_Title() %> </td>
			<td style="text-align: center;"><%=dto2.getAd_Recommend()%></td>
			<td><%=dto2.getAd_Writer()%></td>
		</tr>
	</table>
	<hr color="red">
	<br>
	<!-- 버튼 set -->
	<!-- 세션으로 visible set 버튼 -->
	<%
		if((memberId == dto2.getAd_Writer() && memberBusiness == 1) || (id == "admin" && memberBusiness1 == 2)){ 
	%>
	<form action="insertC.jsp">
		<button type="submit">글쓰기</button>
	</form>
	<%} %>
	<hr color="red">
	
	<!-- 검색하는 부분 -->
	<form action="readOne.jsp">
		- 작성자 아이디 : <input name="ad_Writer" type="text" placeholder="글 작성시 사용한 id 작성하세요."> <br>
			<button type="submit">조회!</button>
	</form>
	
		<button onclick="history.back(1)">back</button>
</body>
</html>