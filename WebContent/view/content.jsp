<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head><title>�Խ���</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<%
	String id = request.getParameter("id");
			
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null || pageNum ==""){
		pageNum="1";} 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
	try{
		JoinDBBean dbPro = JoinDBBean.getInstance();
		JoinDataBean member = dbPro.getMember(id, "content");


%>
<body><br><br><b>�� ���� ����</b>
<div class="container">
	<table class="w3-table-all" style="width:80%;">
	<tr height="30">
		<td width="125" align="center">���̵�</td>
		<td width="125" align="center"><%=member.getId()%></td>
		<td width="125">�̸�</td>
		<td width="125" align="center"><%=member.getName() %></td>
		<td width="125">��й�ȣ</td>
		<td width="125" align="center"><%=member.getPwd() %></td>
		</tr><tr height="30">
		<td width="125">����</td>
		<td width="125" align="center"><%=member.getGender() %></td>
		<td width="125">�������</td>
		<td width="125" align="center"><%=member.getBirthdate()%></td>
		<td width="125">����ó</td>
		<td width="125" align="center"><%=member.getTel() %></td>
		</tr><tr height="30">
		<td width="125">�̸���</td>
		<td width="125" align="center"><%=member.getEmail() %></td>
		<td width="125">���� �������</td>
		<td width="125" align="center"><%=member.getCon_past() %></td>
			<td width="125">�ֱ� ������</td>
			<td width="125" align="center"><%=member.getCon_date() %></td>
		</tr><tr height="30">
			<td width="125">�������</td>
			<td width="125" align="center"><%=member.getCon_cat() %></td>
		<td width="125">����</td>
		<td width="125" align="center"><%=member.getPosition() %></td>
		<td width="125" align="center">������</td>
		<td width="125" align="center"><%=sdf.format(member.getRegdate()) %></td>
		</tr>		 
	<%-- <tr height="30">
		<td colspan="4"  class="w3-center">
			<input type="button" value="ȸ����������" 
			onclick="document.location.href='updateForm.jsp?id=<%=member.getId() %>&pageNum=<%=pageNum %>'">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="����Ż��" 
			onclick="document.location.href='deleteForm.jsp?id=<%=member.getId() %>&pageNum=<%=pageNum %>'">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="�۸��" 
			onclick="document.location.href='list.jsp?pageNum=<%=pageNum %>'">
		</td></tr> --%></table>
		<%
		}catch(Exception e){}%>
</div>
</body>
</html>