<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcom to "OKSUSU MARKET"</title>
<link rel="stylesheet" href="css/out.css">
<!-- <link rel="stylesheet" href="css/outS.css"> -->
<!-- <hr  size="60" color=#FFBF00> -->
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

		<div id="center">
			<h3 style="margin-left: 700px;" >주변 정보 메뉴</h3>
		
				<!-- 메인메뉴 탭 3개 이미지 클릭시 해당 탭으로 넘어감 -->
				<table style="width: 500px; margin-left: 500px;">
					<tr align="center">
						<td colspan="3">
							<!-- <form action="placeM.html">
								<button type="submit">HOME!!</button>					
							</form> -->
						 </td>
					</tr>
					<tr align="center">
					<!-- 주변맛집 -->
					<td width="100" height="30"><img alt="FoodIcon" src="img/FoodIcon.png"
							usemap="#FoodIcon" style="width: 100px; height: 100px;"> <map
							name="FoodIcon">
							<area alt="맛집이동 아이콘" shape="default" href="ADFood.jsp">
						</map></td>
					<!-- 구인구직 -->
					<td width="100" height="30"><img alt="ToolIcon" src="img/ToolIcon.jpg"
							usemap="#ToolIcon" style="width: 100px; height: 100px;"> <map
							name="ToolIcon">
							<area alt="구인구직 이동 아이콘" shape="default" href="ADWork.jsp">
						</map></td>
					<!-- 동네학원/과외 -->
					<td width="100" height="30"><img alt="BookIcon" src="img/BookIcon.jpg"
							usemap="#BookIcon" style="width: 100px; height: 100px;"> <map
							name="BookIcon">
							<area alt="동네학원/과외 이동 아이콘" shape="default" href="ADAcademy.jsp">
						</map></td>
				</tr>
				<tr align="center">
					<!-- 각탭 아래에 이름표시 -->
					<td>
						동네 맛집
					</td>
					<td>
						동네 구인구직
					</td>
					<td>
						동네 학원
					</td>
				</tr>
			</table>
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
	

</body>
</html>