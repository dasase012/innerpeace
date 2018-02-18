<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
<title>회원가입 성공</title>
</head>
<body>
회원가입이 완료되었습니다.
<%-- <%
	String id=request.getParameter("id");
	String pass=request.getParameter("pwd");
	JoinDataBean dao = JoinDataBean.getInstance();
	
	//로그인
	int pwcheck = dao.login(id, pass);
%>
<%	if(pwcheck == -1){ %>
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
	  String name = dao.getname(id);
	  session.setAttribute("id",id);
	  session.setAttribute("name", name);	//name 저장 >> welcome 에 name을 넘겨줌
	  System.out.println(name);
	  
	  response.sendRedirect("../main/main.jsp");
   }
%> --%>
</body>
</html>