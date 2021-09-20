<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@page import="DTO.ADFoodDTO"%>
<%@page import="db.ADFoodDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
		ADFoodDAO dao = new ADFoodDAO();
    	ADFoodDTO dto = new ADFoodDTO(); //bag
    	
    	String ad_Writer = request.getParameter("ad_Writer");
    	String ad_Title = request.getParameter("ad_Title");
    	String ad_Info = request.getParameter("ad_Info");
    	String ad_IAddress = request.getParameter("ad_IAddress");
    	String ad_ITime = request.getParameter("ad_ITime"); 
    	String ad_Img = request.getParameter("ad_Img");
    	String ad_Name = request.getParameter("ad_Name");
    	String ad_Map_10 = request.getParameter("ad_Map_1");
    	String ad_Map_20 = request.getParameter("ad_Map_2");
    	
    	// 경도,위도 값 float 형변환 
    	float ad_Map_1 = Float.parseFloat(ad_Map_10);
    	float ad_Map_2 = Float.parseFloat(ad_Map_20);
    	// DB에 보내기 위해 DTO에 저장.
    	dto.setAd_Writer(ad_Writer);
    	dto.setAd_Title(ad_Title);
    	dto.setAd_Info(ad_Info);
    	dto.setAd_IAddress(ad_IAddress);
    	dto.setAd_ITime(ad_ITime);
    	dto.setAd_Img(ad_Img);
    	dto.setAd_Name(ad_Name);
    	dto.setAd_Map_1(ad_Map_1);
    	dto.setAd_Map_2(ad_Map_2);
    	
    	dao.create(dto);
			
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 입력 테스트창</title>
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

		<div id="center">

		 	 글작성 성공!	<br>
		<form action="ADFood.jsp">
			<button>홈으로 가기</button>
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