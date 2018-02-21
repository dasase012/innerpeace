<%@page import="board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>writePro</title>
</head>
<body>
<% request.setCharacterEncoding("euc-kr"); %>
<% String boardid = request.getParameter("boardid");
	if(boardid == null) boardid = "1";
%>
<jsp:useBean id="article" class="board.BoardDataBean">
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<% System.out.println(article); %>
<%  BoardDBBean dbPro = BoardDBBean.getInstance(); 
	
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null || pageNum ==""){
	   pageNum="1";}

	article.setIp(request.getRemoteAddr());
	dbPro.insertArticle(article);
	
	response.sendRedirect("list.jsp?pageNum="+pageNum+"&boardid="+boardid);
	%>
</body>
</html>