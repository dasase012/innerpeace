<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
<title>ȸ������ ����</title>
</head>
<body>
ȸ�������� �Ϸ�Ǿ����ϴ�.
<%-- <%
	String id=request.getParameter("id");
	String pass=request.getParameter("pwd");
	JoinDataBean dao = JoinDataBean.getInstance();
	
	//�α���
	int pwcheck = dao.login(id, pass);
%>
<%	if(pwcheck == -1){ %>
	<script>
      alert("ID�� �������� �ʽ��ϴ�!");
      history.back();
    </script>
<%
   }
   else if(pwcheck == 0)
   {
%>
     <script>
      alert("��й�ȣ�� Ʋ���ϴ�!");
      history.back();
     </script>
<%
   }
   else
   {
	  String name = dao.getname(id);
	  session.setAttribute("id",id);
	  session.setAttribute("name", name);	//name ���� >> welcome �� name�� �Ѱ���
	  System.out.println(name);
	  
	  response.sendRedirect("../main/main.jsp");
   }
%> --%>
</body>
</html>