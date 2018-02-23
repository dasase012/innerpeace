<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%
	String id = request.getParameter("id");
	String pageNum=request.getParameter("pageNum");
	if(pageNum==null||pageNum==""){
		pageNum="1";
	}
	
	String pwd = request.getParameter("pwd");
	JoinDBBean dbPro = JoinDBBean.getInstance();
	int check = dbPro.deleteData(id, pwd);
	if(pwd.equals("admin")){
%><meta http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum%>">
<%}else{ %>
	<script language="JavaScript">
		alert("권한이 없습니다.");
		history.go(-1);
	</script><%} %>
<html>
<head>
<title>회원 강제 탈퇴</title>
</head>
<body>

</body>
</html>