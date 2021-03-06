<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<html>
<head>
<title>게시판</title>
</head>
<%
	int num=0,ref=0,re_step=0,re_level=0;
	
	String boardid = request.getParameter("boardid");//boardid 내용 넘겨받고
	if(boardid == null) boardid = "1";
	
	if(request.getParameter("num")!=null){
		num = Integer.parseInt(request.getParameter("num"));//새 글, 댓글 상관없이 글 자체의 갯수
		ref = Integer.parseInt(request.getParameter("ref"));//속하는 글의 번호 (새 글의 경우 num과 같은 번호, 새 글에 속한 댓글의 경우 "상위 num"과 같은 번호)
		re_step = Integer.parseInt(request.getParameter("re_step"));//글이 달린 최신 순 (오래된 글일 수록 1씩 밀려남-->0보다 큰 수 +1해줘야함)
		re_level = Integer.parseInt(request.getParameter("re_level"));
	}
%>
<p class="w3-left"  style="padding-left:30px;"></p>
<div class="w3-container">

<center><b>글쓰기</b>
<br>
<form method="post" name="writeform" action="<%=request.getContextPath() %>/view/writePro.jsp" >
<input type="hidden" name="boardid" value="<%=boardid %>"> <!-- form>hidden으로 내용 저장을 해야함 -->
<input type="hidden" name="num" value="<%=num %>">
<input type="hidden" name="ref" value="<%=ref %>">
<input type="hidden" name="re_step" value="<%=re_step %>">
<input type="hidden" name="re_level" value="<%=re_level %>">


<table class="w3-table-all"  style="width:70%;" >
   <tr>
    <td align="right" colspan="2" >
	    <a href="list.jsp"> 진료내역</a> 
   </td>
   </tr>
   <tr>
    <td  width="70"   align="center">작성자</td>
    <td  width="330">
       <input type="text" size="10" maxlength="10" name="writer"></td>
  </tr>
  <tr>
    <td  width="70"   align="center" >진료명
    </td>
    <td width="330">
 
 	<% if(request.getParameter("num")==null) {%>
       <input type="text" size="40" maxlength="50" name="subject">
	<% }else { %>
	   <input type="text" size="40" maxlength="50" name="subject" value="[답글]">
    <% } %>
   </td>
  </tr>
   <tr>
    <td  width="70"   align="center">진료개시일</td>
    <td  width="330">
       <input type="date" size="10" maxlength="10" name="date"></td>
  </tr>
  <tr>
    <td  width="70"   align="center" >내 용</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>
  <tr>
    <td  width="70"   align="center" >비밀번호</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" name="passwd"> 
	 </td>
  </tr>
<tr>      
 <td colspan=2  align="center"> 
  <input type="submit" value="글쓰기" >  
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" OnClick="window.location='list.jsp'">
</td></tr></table>    
     
</form>  </center></div>  




</body>
</html>      
