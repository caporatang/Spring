<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.TryStatement"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="DTO.ADFoodDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.ADFoodDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="true" %>
	
	<%
		/* 세션 테스트 */
		String memberID = request.getParameter("memberID");
		String business = request.getParameter("business");
	session.setAttribute("tId", memberID);
	session.setAttribute("tBu", business);
	
	String tId = (String)session.getAttribute("tId");
	String tBu = (String)session.getAttribute("tBu");
	
		//ADFoodDTO dto = new ADFoodDTO();
		ADFoodDAO dao = new ADFoodDAO();
		ArrayList<ADFoodDTO> list = dao.read();
	
		/* 세션set admin 권한 */
		
		String memberId = "admin";		// 추후 세션 아이디 값 
		int memberBusiness = 1;			// 세션 비지니스 값 
		
		
		
	 
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동네 맛집</title>
	<script type="text/javascript">				/* 버튼 onclick 선언부분 */
		function bt1(){							/* 관리자 권한으로 글삭제 func  */
		 var returnValue = confirm('글을 삭제하시겠습니까?');
			if (returnValue) {
				 var returnPrompt = prompt("작성자 아이디를 입력하세요.",""); 
				 location.href="deleteConfirm.jsp?ad_Writer=" + returnPrompt 
			} //if end
		} //function end
		
		<%-- session id와 작성자 id가 일치할 경우 삭제버튼 활성화 --%>
		   
 	   <%-- function() {
		      if (<%=session.getAttribute("id") %> != 'null' ) {
		         $(".but1").hide();
		      } else(<%=session.getAttribute("id") %> == <%= memberId %>) {
		         $(".but1").show();
		         
		      }
		   } --%>
		alert('<%= memberID %>');
		
	</script>
<link rel="stylesheet" href="css/out.css">
</head>
<body>
<div id="total">
		<div id="top">
			<jsp:include page="/top/top.jsp"></jsp:include><!--html고정되는부분 연결 코드-->
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

		<%-- <div id="topS">
			<jsp:include page="top/topS.jsp"></jsp:include>
		</div> --%>
		<!-- <div id="total1"> -->
		<br>
		<!-- 리스트업 화면 -->
		<div id="center1" style="background-color: white;">
			동네 맛집 정보
			<!-- 관리자 권한 (관리자만 보임) -->			
		     <%
				if(memberId.equals(tId)){
			%>  
			<!-- 글쓰기버튼 추후 세션 연동예정 & 권한부여 예정 -->
			<form action="insertC.jsp">
				<button type="submit" class="but1"  >글쓰기(admin)</button>
			</form>
				
			<!-- 글삭제버튼 추후 게시글 창으로 이동예정(권한) -->
			<input type="button" class="but1" value="글삭제(admin)"   onclick=bt1()>
			
			<!-- 글수정버튼 추후 게시글 창으로 이동예정(권한) -->	
			<form action="insertU.jsp">
				<button type="submit" class="but1"  >글수정(admin)</button>
			</form>	
 			<% }  %>   
					<!-- 선택된 지역 -->			
			
			<hr color="red">
			<!-- 동네 맛집랭킹 list up 3개  --> 
				<h3>동네 맛집 추천!</h3>
				 <table border="1" style="width: 880px; background-color: white; font-size: 15px;">
				 <%
				 for (int i = 0; i < 3; i++  ) {
						ADFoodDTO dto1 = list.get(i);
				 %>
						<tr> <!-- 1번. 사진 -->
							<td width="13%"><a href="http://localhost:8889/project01Exercise/post.jsp?ad_Writer=<%=dto1.getAd_Writer()%>" >
							<img width="80px" height="80px" src="img/<%= dto1.getAd_Img() %>" ></a></td>
							<td width="20%"> 가게 이름 :<%= dto1.getAd_Name() %></td>
	   <!-- 3번 제목 title --><td> 가게 한줄 소개 :<%= dto1.getAd_Title() %></td>
							<td width="9%">추천수 : <%= dto1.getAd_Recommend() %></td>
	<!--2번 가게이름. writer--><td width="15%"> 작성자 :	<%= dto1.getAd_Writer() %></td>
						</tr>
						<%
						}
						%>
				</table>			 
			<a href="readAll.jsp"><button>더보기!</button></a>
		</div>
<!-- 	</div> -->
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