<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%  JoinDBBean dbPro = JoinDBBean.getInstance(); 
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		int pwcheck = dbPro.login(id, pwd);
	%>	<%	if(pwcheck == -1){ %>
		<script>
	      alert("ID가 존재하지 않습니다!");
	      history.back();
	    </script>
	<%
	   }
	   else if(pwcheck == 0)
	   {
	%>
	     <script>
	      alert("비밀번호가 틀립니다!");
	      history.back();
	     </script>
	<%
	    } 
	   else
	   {
		  session.setAttribute("id",id); 
		  response.sendRedirect("/innerpeace/view/updateForm.jsp?id="+id);
	   }		
	%>
</body>
</html>