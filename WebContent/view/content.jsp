<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head><title>게시판</title>
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
<body><br><br><b>글 내용 보기</b>
<div class="container">
	<table class="w3-table-all" style="width:80%;">
	<tr height="30">
		<td width="125" align="center">아이디</td>
		<td width="125" align="center"><%=member.getId()%></td>
		<td width="125">이름</td>
		<td width="125" align="center"><%=member.getName() %></td>
		<td width="125">비밀번호</td>
		<td width="125" align="center"><%=member.getPwd() %></td>
		</tr><tr height="30">
		<td width="125">성별</td>
		<td width="125" align="center"><%=member.getGender() %></td>
		<td width="125">생년월일</td>
		<td width="125" align="center"><%=member.getBirthdate()%></td>
		<td width="125">연락처</td>
		<td width="125" align="center"><%=member.getTel() %></td>
		</tr><tr height="30">
		<td width="125">이메일</td>
		<td width="125" align="center"><%=member.getEmail() %></td>
		<td width="125">과거 진료경험</td>
		<td width="125" align="center"><%=member.getCon_past() %></td>
			<td width="125">최근 진료일</td>
			<td width="125" align="center"><%=member.getCon_date() %></td>
		</tr><tr height="30">
			<td width="125">진료과목</td>
			<td width="125" align="center"><%=member.getCon_cat() %></td>
		<td width="125">구분</td>
		<td width="125" align="center"><%=member.getPosition() %></td>
		<td width="125" align="center">가입일</td>
		<td width="125" align="center"><%=sdf.format(member.getRegdate()) %></td>
		</tr>		 
	<%-- <tr height="30">
		<td colspan="4"  class="w3-center">
			<input type="button" value="회원정보수정" 
			onclick="document.location.href='updateForm.jsp?id=<%=member.getId() %>&pageNum=<%=pageNum %>'">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="강제탈퇴" 
			onclick="document.location.href='deleteForm.jsp?id=<%=member.getId() %>&pageNum=<%=pageNum %>'">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="글목록" 
			onclick="document.location.href='list.jsp?pageNum=<%=pageNum %>'">
		</td></tr> --%></table>
		<%
		}catch(Exception e){}%>
</div>
</body>
</html>