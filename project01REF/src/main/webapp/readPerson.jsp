<%@page import="db.ADFoodDAO"%>
<%@page import="DTO.ADFoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String ad_Writer = request.getParameter("ad_Writer");
    	
    	ADFoodDTO dto = new ADFoodDTO();
    	dto.setAd_Writer(ad_Writer);
    	
    	ADFoodDAO dao = new ADFoodDAO();
		dao.read(dto);    	
    	
		/*  if(dto.getAd_Title().equals(null)) {
			System.out.println("검색 결과가 없습니다.");
		}  */
		
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 아이디검색</title>
</head>
<body>
<h3>게시판 전체 글 조회 목록</h3>
		<!--  <script type="text/javascript">
			if (dto.getAd_Title() == null ) {
				var confirm1 = confirm('해당 검색결과가 존재하지 않습니다.');
			}
					
		</script> -->

	<hr color="green">
	<table border=1>
		<tr bgcolor="green">
			<th>사진</th>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
		</tr>
		<!-- 여기까지는 반복하면 안됨. for문 밖에  -->
	
		<tr>
			<td><img width="80px" height="80px" src="img/<%= dto.getAd_Img() %>" ></td>
			<td><%=dto.getAd_Num()%></td>
			<td><a
				href="http://localhost:8889/project01Exercise/readConfirm.jsp?ad_Writer=<%=dto.getAd_Writer()%>">
					<!-- 제목 눌렀을때 이동 --> <%=dto.getAd_Title()%>
			</a></td>
			<td><%=dto.getAd_Writer()%></td>
		</tr>
	</table>



</body>
</html>