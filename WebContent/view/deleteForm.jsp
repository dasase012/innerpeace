<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int num= Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
%>

<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head><title>�Խ���</title></head>
<body>
<p class="w3-left" style="padding-left: 30px;"></p>
<center>
<div class="w3-container">
	<b>�ۻ���</b><br>
<form method="post" name="delForm" action="deletePro.jsp?pageNum=<%=pageNum %>" 
onsubmit="return deleteSave()">
	<table class="table-bordered" width="360">
	<tr height="30"><td align="center"><b>��й�ȣ�� �Է��� �ּ���.</b></td></tr>
	<td align="center">��й�ȣ:
	<input type="password" name="passwd" size="8" maxlength="12">
	<input type="hidden" name="num" value="<%=num %>"></td></tr>
	<tr height="30">
	<td align="center">
	<input type="submit" value="�ۻ���">
	<input type="button" value="�۸��" onclick="document.location.href='list.jsp?pageNum=<%=pageNum %>'">
	</td></tr></table></form></center></div>
</body>
</html>