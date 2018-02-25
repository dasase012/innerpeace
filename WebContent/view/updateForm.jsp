
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<html>
<head><title>Insert title here</title></head>
<%
	String id = request.getParameter("id"); //어떤게시물을 수정할래?
	
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null || pageNum ==""){
		pageNum="1";} 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
	try{
		JoinDBBean dbPro = JoinDBBean.getInstance();
		JoinDataBean member = dbPro.getMember(id, "update");
%>

<body>
<div class="w3-container"><center>
<br>
<form method="post" name="writeform" action="<%=request.getContextPath() %>/view/updatePro2.jsp" >
<input type="hidden" name="id" value="<%=id %>">
<input type="hidden" name="pageNum" value="<%=pageNum %>">

<form class="w3-container w3-card-4 w3-white w3-text-black w3-margin" style="height: 100%;">
<div class="w3-row w3-section">
<body><br><br><center><h3><b><u>회원 정보 수정하기</u></b></h3><br><br>
<div class="container" id="info">
	<table class="w3-table w3-bordered w3-centered" style="width:50%;">
	<tr height="30">
		<td width="125" align="center"><b>아이디</b></td>
		<td width="125" align="center"><%=member.getId()%></td>
	</tr><tr height="30">	
		<td width="125"><b>이름</b></td>
		<td width="125">
		<input type="text" size="10" maxlength="10" name="name" value="<%=member.getName() %>"></td>
	</tr>
	<tr height="30">	
		<td width="125"><b>비밀번호</b></td>
		<td width="125">
		<input type="password" size="10" maxlength="10" name="pwd" value="<%=member.getPwd()%>"></td>
	</tr><tr height="30">			
		<td width="125"><b>성별</b></td>
		<td width="125" >
		<input type="text" size="10" maxlength="10" name="gender" value="<%=member.getGender() %>"></td>
	</tr><tr height="30">	
		<td width="125"><b>생년월일</b></td>
		<td width="125">
		<input type="text" size="10" maxlength="10" name="birthdate" value="<%=member.getBirthdate()%>"></td>
	</tr><tr height="30">		
		<td width="125"><b>연락처</b></td>
		<td width="125">
		<input type="text" size="10" maxlength="10" name="tel" value="<%=member.getTel() %>"></td>
	</tr><tr height="30">	
		<td width="125"><b>이메일</b></td>
		<td width="125">
		<input type="text" size="10" maxlength="10" name="email" value="<%=member.getEmail() %>"></td>
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
	</tr>
		<tr>      
	 <td colspan=2  align="center"> 
	  <input type="submit" value="정보수정" >  
	  <input type="reset" value="다시작성">
	  <input type="button" value="취소" onclick="document.location.href='/innerpeace/mainhome/fullcalendar-3.8.2/demos/__home.jsp?pageNum=<%=pageNum %>'">
	  <input type="button" value="탈퇴하기" 
    	onclick="document.location.href='deleteForm2.jsp?id=<%=member.getId() %>&pageNum=<%=pageNum %>'">
		&nbsp;&nbsp;&nbsp;&nbsp;
	</td></tr>
	</table></div></center>    
     
</form>  </center></div>
<%
	}catch(Exception e){}
%>
</body>
</html>