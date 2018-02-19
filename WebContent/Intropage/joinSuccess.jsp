<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<html>
<head>
<title>회원가입 성공</title>
</head>
<body>
회원가입 성공
<jsp:useBean id="info" class="login.JoinDataBean">
	<jsp:setProperty name="info" property="*"/>
</jsp:useBean>
<% System.out.println(info); 

	JoinDBBean dbPro = JoinDBBean.getInstance();
	dbPro.insertData(info);
	response.sendRedirect("/innerpeace/Intropage/intro_v1.jsp");
%>



</body>
</html>