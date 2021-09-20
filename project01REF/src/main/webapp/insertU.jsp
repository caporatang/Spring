<%@page import="db.ADFoodDAO"%>
<%@page import="DTO.ADFoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		String ad_writer = request.getParameter("ad_Writer");	
		
		ADFoodDTO dto = new ADFoodDTO();
		dto.setAd_Writer(ad_writer);		
		
		ADFoodDAO dao = new ADFoodDAO();
		ADFoodDTO dto2 = dao.read(dto);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update 입력창</title>
<link rel="stylesheet" href="css/out.css">
<script type="text/javascript">
	function upD() {
		var upC = confirm('해당 글을 수정하시겠습니까?');
			if (upC) {
				/* location.href="updateConfirm.jsp" */ //지금 페이지에선 사용 안해도 되나 리팩토링 할 때 살펴볼것
				alert('수정이 완료되었습니다.')
			}
	} //업데이트 func end
</script>
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

		<div id="center">




<form action="updateConfirm.jsp">
<table style="text-align: left;">
	<tr>
		<td>작성자 :</td>  <td><input name="ad_Writer" type="text" value="<%= dto2.getAd_Writer() %>"></td> <!-- 세션으로 자동으로 불러올부분 -->
	</tr>
	<tr>
		<td>가게이름 :</td> <td><input name="ad_Name" type="text" value="<%= dto2.getAd_Name()%>"></td> 
	</tr>
	<tr>
		<td>한줄소개 :</td> <td><input name="ad_Title" type="text" value="<%= dto2.getAd_Title()%>"></td>
	</tr>
	<tr>
		<td>내용 :</td> <td><textarea rows="20" cols="30"  name="ad_Info" placeholder="수정될 내용을 입력하세요" ></textarea></td>
	</tr>
	<tr>
		<td>주소 :</td> <td><input name="ad_IAddress" type="text" value="<%= dto2.getAd_IAddress()%>"></td>
	</tr>
	<tr>
		<td>영업시간 :</td> <td><input name="ad_ITime" type="text" value="<%= dto2.getAd_ITime() %>"></td>
	</tr>
	<tr>
		<td>사진 :</td> <td><input type="file" name="ad_Img" value="<%= dto2.getAd_Img()%>"></td>
	</tr>	
	<tr>
		<td colspan="2"><a style="color: red; font-size: 15px;">지도 사용안할시 입력창에 0을 기입하세요.</a> </td>
	</tr>
	<tr>
		<td>위도 : <input name="ad_Map_1" type="text" placeholder="ex. 12.1234 ,,," value="0" > </td>
		<td>경도 : <input name="ad_Map_2" type="text" placeholder="ex. 123.1234 ,,, " value="0" ></td>
	</tr>
</table>
<hr color="red">
<!--  <button type="submit">저장</button> --> <!-- 에러 떳을시 사용할 버튼 -->
		 <button type="submit" onclick=upD()>저장</button>
		 
		</form>
		<!-- <input type="button" value="수정" onclick=upD()> -->
		
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

