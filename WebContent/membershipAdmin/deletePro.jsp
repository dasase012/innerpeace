<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%
	String id = request.getParameter("id");
		
	String pwd = request.getParameter("pwd");
	JoinDBBean dbPro = JoinDBBean.getInstance();
	int x = dbPro.deleteAdmin(id, pwd);
	if(pwd.equals("admin")){
		session.setAttribute("pwd", pwd);
%>	<script language="JavaScript">
		alert("강제탈퇴가 완료되었습니다.");
	</script>
	<meta http-equiv="Refresh" content="0;url=/innerpeace/membershipAdmin/list.jsp?pageNum=1">
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