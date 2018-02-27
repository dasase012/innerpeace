<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pageNum = request.getParameter("pageNum");
%>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head><title>게시판</title></head>
<body>
<p class="w3-left" style="padding-left: 30px;"></p>
<center>
<div class="w3-container">
	<b>회원탈퇴</b><br>
<form method="post" name="delForm" action="/innerpeace/membershipAdmin/deletePro.jsp?pageNum=<%=pageNum %>" 
onsubmit="return deleteSave()">
	<table class="table-bordered" width="360">
	<tr height="30"><td align="center"><b>관리자 비밀번호를 입력해 주세요.</b></td></tr>
	<td align="center">비밀번호:
	<input type="password" name="pwd" size="8" maxlength="12">
	<input type="hidden" name="id" value="<%=id %>"></td></tr>
	<tr height="30">
	<td align="center">
	<input type="submit" value="탈퇴">
	<input type="button" value="회원목록" onclick="document.location.href='list.jsp?pageNum=<%=pageNum %>'">
	</td></tr></table></form></center></div>
</body>
</html>