<%@page import="board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head><title>Insert title here</title></head>
<body>
<% request.setCharacterEncoding("euc-kr"); %>

<% String boardid = request.getParameter("boardid");
	if (boardid==null) boardid = "1";
	int num = Integer.parseInt(request.getParameter("num"));

	String pageNum = request.getParameter("pageNum");
	if(pageNum == null || pageNum ==""){
		pageNum="1";}
%>
<jsp:useBean id="article" class="board.BoardDataBean"> <!-- 수정하고싶은게 한 두가지가 아니므로 boardDataBean 전체를 파라미터로 보냄 -->
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<% System.out.println(article); %>
<%  BoardDBBean dbPro = BoardDBBean.getInstance(); 
	int chk = dbPro.updateArticle(article);%>
<% if (chk==1){ %>
<meta http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum %>">
<%}else{ %>
<script>
alert("비밀번호가 맞지 않습니다")
history.go(-1);</script>
<%} %>
</body>
</html>