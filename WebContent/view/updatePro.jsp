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
<jsp:useBean id="article" class="board.BoardDataBean"> <!-- �����ϰ������ �� �ΰ����� �ƴϹǷ� boardDataBean ��ü�� �Ķ���ͷ� ���� -->
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<% System.out.println(article); %>
<%  BoardDBBean dbPro = BoardDBBean.getInstance(); 
	int chk = dbPro.updateArticle(article);%>
<% if (chk==1){ %>
<meta http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum %>">
<%}else{ %>
<script>
alert("��й�ȣ�� ���� �ʽ��ϴ�")
history.go(-1);</script>
<%} %>
</body>
</html>