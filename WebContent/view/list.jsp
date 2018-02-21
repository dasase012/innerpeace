<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% request.setCharacterEncoding("euc-kr"); %>
<% String boardid = request.getParameter("boardid"); //어떤 게시판을 보여줄래? ==> boardid 파라미터로 넘김
	if(boardid==null) boardid="1";%>
<% int pageSize = 5;
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
   String pageNum = request.getParameter("pageNum");
   if(pageNum==null || pageNum =="") {pageNum = "1";}
   int currentPage = Integer.parseInt(pageNum);
   int startRow = (currentPage-1)*pageSize+1;
   int endRow = currentPage*pageSize;
   int count = 0;
   int number = 0;
   List memberList = null;
   JoinDBBean dbPro = JoinDBBean.getInstance();
   count = dbPro.getMemberCount(boardid);
   if(count>0){
	memberList = dbPro.getMembers(startRow,endRow,boardid);
   }
  	number = count-(currentPage-1)*pageSize;
   %>

<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<head><title>Insert title here</title></head>
<body>
	<p class="w3-left" style="padding-left: 30px"></p>
<div class="w3-container">
	<span class="w3-center w3-large">
		<h3><%=boardid %>(전체 글:<%=count %>)</h3>
	</span>
<p class="w3-right w3-padding-right-large">
	<a href="/innerpeace/Intropage/joinForm.jsp">글쓰기</a></p>
	<%	if(count==0){ %>
	<table class="table-bordered" width="700">
		<tr class="w3-grey">
			<td align="center">게시판에 저장된 글이 없습니다.</td>
	</table>
	<%}else {%>
	<table class="w3-table-all" width="700">
		<tr class="w3-grey">
		<td align="center" width="50">아이디</td>
		<td align="center" width="250">이름</td>
		<td align="center" width="100">성별</td>
		<td align="center" width="150">가입일</td>
	<% for(int i=0;i<memberList.size();i++){
		JoinDataBean member = (JoinDataBean) memberList.get(i);%>
		<tr height="30">
		<td align="center" width="50"><%=number-- %></td>
		<td width="250"><a href="content.jsp?id=<%=member.getId()%>&pageNum=<%=currentPage %>">
			<%=member.getName()%></a></td>
			<td align="center" width="100"><%=member.getGender() %></td>
			<td align="center" width="150"><%=sdf.format(member.getRegdate()) %></td>
			</tr><%} %>	</table> <% } %>

<div class="w3-center">
	<% int bottomLine=3;
	if(count>0){
		int pageCount = count/pageSize + (count%pageSize == 0?0:1);
		int startPage = 1 + (currentPage-1)/bottomLine * bottomLine;
		int endPage = startPage+bottomLine-1;
		if(endPage>pageCount) endPage = pageCount;
		if(startPage>bottomLine) {%>
		<a href="list.jsp?pageNum=<%=startPage-bottomLine %>">[이전]</a>
		<%} %>
		<% for(int i=startPage; i<=endPage;i++){ %>
		<a href="list.jsp?pageNum=<%=i %>"><%
		if(i!=currentPage) out.print("["+i+"]");
		else out.print("<font color='red'>["+i+"]</font>");%></a>
		<%	}
		if(endPage<pageCount){%>
		<a href="list.jsp?pageNum=<%=startPage+bottomLine %>">[다음]</a>
		<%} 
	} %>
</div>
</div>
</body>
</html>