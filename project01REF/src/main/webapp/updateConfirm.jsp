<%@page import="db.ADFoodDAO"%>
<%@page import="DTO.ADFoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
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
	
	ADFoodDTO dto = new ADFoodDTO();
	ADFoodDAO dao = new ADFoodDAO();
	
	dto.setAd_Writer(ad_Writer);
    dto.setAd_Title(ad_Title);
    dto.setAd_Info(ad_Info);
    dto.setAd_IAddress(ad_IAddress);
    dto.setAd_ITime(ad_ITime);
    dto.setAd_Img(ad_Img);
   	dto.setAd_Name(ad_Name);
   	dto.setAd_Map_1(ad_Map_1);
	dto.setAd_Map_2(ad_Map_2);
	
    dao.update(dto);
    
    response.sendRedirect("readAll.jsp");
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>

<!-- <hr color="purple">
	글수정이 완료되었습니다!
	<hr color="purple"> 
	<form action="placeM.html">
		<button>HOME 으로 가기!</button>
	</form> -->

</body>
</html>