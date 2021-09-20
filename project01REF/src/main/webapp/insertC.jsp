<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
  		//String id = (String)session.getAttribute("id");
    	String memberId = "";
    	
    	String tId = (String)session.getAttribute("tId");
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 창</title>
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



<form action="createConfirm.jsp">

<!-- - 글번호 : <input name="ad_Num" type="text"> <br> --> <!-- auto incre 전에 테스트용 -->
<!-- - 작성자 : <input name="ad_Writer" type="text" value="${id}"> <br> -->   <!-- 세션받아오면 활성화 -->
<table style="text-align: left;">
	<tr>
		<td>작성자 :</td>  <td><input name="ad_Writer" type="text" value="<%= tId %>"></td>
	</tr>
	<tr>
		<td>가게이름 :</td> <td><input name="ad_Name" type="text"></td> 
	</tr>
	<tr>
		<td>한줄소개 :</td> <td><input name="ad_Title" type="text"></td>
	</tr>
	<tr>
		<td>내용 :</td> <td><textarea rows="20" cols="30" placeholder="정보나 소개글을 입력하세요." name="ad_Info"></textarea></td>
	</tr>
	<tr>
		<td>주소 :</td> <td><input name="ad_IAddress" type="text"></td>
	</tr>
	<tr>
		<td>영업시간 :</td> <td><input name="ad_ITime" type="text"></td>
	</tr>
	<tr>
		<td>사진 :</td> <td><input type="file" name="ad_Img"></td>
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
		<button type="submit">저장</button>
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
