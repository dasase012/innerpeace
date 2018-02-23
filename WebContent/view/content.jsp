<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head><title>게시판</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- <style type="text/css">
	.info{
		font-size: 20pt;
	}
</style> -->
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
<form class="w3-container w3-card-4 w3-white w3-text-black w3-margin" style="height: 100%;">
<div class="w3-row w3-section">
<body><br><br><center><h3><b><u>회원 정보</u></b></h3><br><br>
<div class="container" id="info">
	<table class="w3-table w3-bordered w3-centered" style="width:50%;">
	<tr height="30">
		<td width="125" align="center"><b>아이디</b></td>
		<td width="125" align="center"><%=member.getId()%></td>
	</tr><tr height="30">	
		<td width="125"><b>이름</b></td>
		<td width="125" align="center"><%=member.getName() %></td>
	</tr><tr height="30">	
		<td width="125"><b>비밀번호</b></td>
		<td width="125" align="center"><%=member.getPwd() %></td>
	</tr><tr height="30">			
		<td width="125"><b>성별</b></td>
		<td width="125" align="center"><%=member.getGender() %></td>
	</tr><tr height="30">	
		<td width="125"><b>생년월일</b></td>
		<td width="125" align="center"><%=member.getBirthdate()%></td>
	</tr><tr height="30">		
		<td width="125"><b>연락처</b></td>
		<td width="125" align="center"><%=member.getTel() %></td>
	</tr><tr height="30">	
		<td width="125"><b>이메일</b></td>
		<td width="125" align="center"><%=member.getEmail() %></td>
	</tr><tr height="30">	
		<td width="125"><b>과거 진료경험</b></td>
		<td width="125" align="center"><%=member.getCon_past() %></td>
	</tr><tr height="30">	
			<td width="125"><b>최근 진료일</b></td>
			<td width="125" align="center"><%=member.getCon_date() %></td>
	</tr><tr height="30">
			<td width="125"><b>진료과목</b></td>
			<td width="125" align="center"><%=member.getCon_cat() %></td>
	</tr><tr height="30">	
		<td width="125"><b>구분</b></td>
		<td width="125" align="center"><%=member.getPosition() %></td>
	</tr><tr height="30">	
		<td width="125" align="center"><b>가입일</b></td>
		<td width="125" align="center"><%=sdf.format(member.getRegdate()) %></td>
		</tr>
	<tr height="30">
		<td colspan="4"  class="w3-center">
			<input type="button" value="회원정보수정" 
			onclick="document.location.href='updateForm.jsp?id=<%=member.getId() %>&pageNum=<%=pageNum %>'">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="강제탈퇴" 
			onclick="document.location.href='deleteForm.jsp?id=<%=member.getId() %>&pageNum=<%=pageNum %>'">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="글목록" 
			onclick="document.location.href='list.jsp?pageNum=<%=pageNum %>'">
	</td></tr> </table></div></center>
		<%
		}catch(Exception e){}%>
</div>
</body>
</html>