<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("euc-kr"); %>
    
<%
	String id = request.getParameter("id");
	String pageNum = request.getParameter("pageNum"); 
	if(pageNum == null || pageNum ==""){
		pageNum="1";} 
%>

<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head><title>회원정보 수정</title></head>
<body>
<p class="w3-left" style="padding-left: 30px;"></p>
<center>
<div class="w3-container">
	<b>회원정보 수정하기</b><br>
<form method="post" name="updateForm" action="updateForm.jsp?pageNum=<%=pageNum %>" 
onsubmit="return deleteSave()">
	<table class="table-bordered" width="360">
	<tr height="30"><td align="center"><b>비밀번호를 입력해 주세요.</b></td></tr>
	<td align="center">비밀번호:
	<input type="password" name="pwd" size="8" maxlength="12">
	<input type="hidden" name="id" value="<%=id %>"></td></tr>
	<tr height="30">
	<td align="center">
	<input type="submit" value="수정하기">
	<input type="button" value="홈으로 돌아가기" onclick="document.location.href='/innerpeace/mainhome/fullcalendar-3.8.2/demos/__home.jsp?pageNum=<%=pageNum %>'">
	</td></tr></table></form></center></div>
</body>
</html>