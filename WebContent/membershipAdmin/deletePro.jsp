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
		alert("����Ż�� �Ϸ�Ǿ����ϴ�.");
	</script>
	<meta http-equiv="Refresh" content="0;url=/innerpeace/membershipAdmin/list.jsp?pageNum=1">
<%}else{ %>
	<script language="JavaScript">
		alert("������ �����ϴ�.");
		history.go(-1);
	</script><%} %>
<html>
<head>
<title>ȸ�� ���� Ż��</title>
</head>
<body>

</body>
</html>