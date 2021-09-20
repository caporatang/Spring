<%@page import="java.util.ArrayList"%>
<%@page import="DTO.ADFoodDTO"%>
<%@page import="db.ADFoodDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

										<!-- 이 페이지 수정시 readOne.jsp 도 수정 -->
<%
/* 페이지 실행시 ADFood 전체 항목 ArrayList로 READ */
ADFoodDAO dao = new ADFoodDAO();
ArrayList<ADFoodDTO> list = dao.read();


/* 세션 테스트  */

String tId = (String)session.getAttribute("tId");
String tBu = (String)session.getAttribute("tBu");


	

	//int tBu1 = Integer.parseInt(tBu);


String memberBusiness = "1";
String memberId = "";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 게시판 목록</title>
<link rel="stylesheet" href="css/out.css">
</head>
<body>
<div id="total">
		<div id="top">
			<jsp:include page="top/top.jsp"></jsp:include><!--html고정되는부분 연결 코드-->
		</div>
		<div id="top2">
			<jsp:include page="top/top2.jsp"></jsp:include>
		</div>
		<div id="top3">
			<jsp:include page="top/top3.jsp"></jsp:include>
		</div>
		<div id="top4">
			<jsp:include page="top/top4.jsp"></jsp:include>
		</div>
		<div id="top5"></div>

		<div id="center" style="background-color: white;">



	<h3>게시판 전체 글 조회 목록</h3>
	<hr color="green">
	<table border=1 style="width: 750px; font-size: 15px">
		<tr bgcolor="green">
			<th width="13%">사진</th>
			<th width="15%">가게이름</th>
			<th>소개</th>
			<th width="8%" style="text-align: center;">추천수</th>
			<th>작성자</th>
		</tr>
		<!-- 여기까지는 반복하면 안됨. for문 밖에  -->
		<%
		for (ADFoodDTO dto : list) {
		%>
		<tr>
			<td><a href="http://localhost:8889/project01Exercise/post.jsp?ad_Writer=<%=dto.getAd_Writer()%>" ><img width="80px" height="80px" src="img/<%= dto.getAd_Img() %>" ></a></td>
			<td style="text-align: center;"><a href="http://localhost:8889/project01Exercise/post.jsp?ad_Writer=<%=dto.getAd_Writer()%>"><%=dto.getAd_Name()%></a></td>
			<td><%= dto.getAd_Title() %> </td>
			<td style="text-align: center;" ><%=dto.getAd_Recommend()%></td>
			<td><%=dto.getAd_Writer()%></td>
		</tr>
		<%
		}
		%>
	</table>

	<hr color="red">
	전체 게시판 목록 개수 :
	<%=list.size()%>
	<br>
	<!-- 세션 글쓰기 버튼 활성화 부분 -->
	<%
		if(tBu.equals("1")){
	%>
	<form action="insertC.jsp">
		<button type="submit">글쓰기</button>
	</form>
	<%} %>
	
	<hr color="red">
	
	<form action="readOne.jsp">
		- 작성자 아이디 : <input name="ad_Writer" type="text" placeholder="글 작성시 사용한 id 작성하세요."> <br>

	<button type="submit">조회!</button>
	</form>
	
	<button onclick="history.back(1)">back</button>
	<form action="ADFood.jsp">
		<button>Home</button>
	</form>
	
		</div>

		<div id="footer1"></div>
		
		<div id="footer2">
			<h2>고객행복센터</h2><h3>1555-1234 (365고객센터 오전 7시 - 오후 7시)</h3>

		</div>
		<div id="footer3">
			법인명 (상호) : 주식회사 옥수수 <span class="bar">I</span> 사업자등록번호 : 111-88-12345<br>
			통신판매업 : 제 2021-서울종로-0000 호 <span class="bar">I</span> 개인정보보호책임자 : 홍길동
			<br> 주소 : 서울특별시 종로구 옥수수밭 1, 1층(옥수수동) <span class="bar">I</span>
			대표이사 : 더조은 <br> 팩스: 070 - 1234 - 0728 <span class="bar">I</span>
			이메일 : <a href="mailto:2554mj@gmail.com">help@oksusu.com</a> <em
				class="copy">© OKSUSU CORP. ALL RIGHTS RESERVED</em>
		</div>
	</div>
	
	
	
	

</body>
</html>