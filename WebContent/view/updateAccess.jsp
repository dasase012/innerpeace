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
<head><title>ȸ������ ����</title></head>
<body>
<p class="w3-left" style="padding-left: 30px;"></p>
<center>
<div class="w3-container">
	<b>ȸ������ �����ϱ�</b><br>
<form method="post" name="updateForm" action="updateForm.jsp?pageNum=<%=pageNum %>" 
onsubmit="return deleteSave()">
	<table class="table-bordered" width="360">
	<tr height="30"><td align="center"><b>��й�ȣ�� �Է��� �ּ���.</b></td></tr>
	<td align="center">��й�ȣ:
	<input type="password" name="pwd" size="8" maxlength="12">
	<input type="hidden" name="id" value="<%=id %>"></td></tr>
	<tr height="30">
	<td align="center">
	<input type="submit" value="�����ϱ�">
	<input type="button" value="Ȩ���� ���ư���" onclick="document.location.href='/innerpeace/mainhome/fullcalendar-3.8.2/demos/__home.jsp?pageNum=<%=pageNum %>'">
	</td></tr></table></form></center></div>
</body>
</html>