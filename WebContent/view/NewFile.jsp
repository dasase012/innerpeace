<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Userlist.UserlistDataBean"%>
<%@page import="Userlist.UserlistDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%  
    String number = request.getParameter("number"); %>
<% 
 int num = Integer.parseInt(request.getParameter("num"));
 
 String pageNum = request.getParameter("pageNum");
   if (pageNum == null || pageNum == "") {
      pageNum = "1";   }
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
 try { 
   UserlistDBBean dbPro = UserlistDBBean.getInstance();
    UserlistDataBean user = dbPro.getUser(num,"content"); 
  %>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<div class="w3-container" style="width:750px; margin-left:30%; margin-top:15%; text-align: center;">   
  <h3 class="w3-center"><b>회원 목록</b></h3>   
  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-deep-purple">
        <th colspan="4" style="text-align:center"><%=user.getUserid() %> 님의 정보</th>
      </tr>
    </thead>
    
    <tr>
       <td width="200"><b>아이디</b></td>
       <td width="200"><%=user.getUserid() %></td>
       <td width="100"><b>가입일</b></td>
       <td width="250"><%=sdf.format(user.getReg_date())%></td>
    </tr>
 
    <tr>
       <td width="200"><b>이름</b></td>
       <td width="200"><%=user.getUsername() %></td>
       <td width="100"><b>성별</b></td>
       <td width="250"><%=user.getGender() %></td> 
    </tr>
    
    <tr>
       <td width="200"><b>닉네임</b></td>
       <td width="200"><%=user.getDisplayname() %></td>
       <td width="100"><b>포지션</b></td>
       <td width="250"><%=user.getPosition() %></td>
    </tr>
    
    <tr>
       <td width="200"><b>연락처</b></td>
       <td width="550" colspan="3"><%=user.getHp() %></td>
    </tr>
    
    <tr>
       <td width="200"><b>주소</b></td>
       <td width="550" colspan="3"><%=user.getAddress() %></td>
    </tr>
    
    <tr>
       <td width="200"><b>이메일</b></td>
       <td width="550" colspan="3"><%=user.getEmail() %></td>
    </tr>
    
    <tr>
       <td width="200"><b>소개</b></td>
       <td width="550"  colspan="3"><%=user.getBio()%></td>
    </tr>
  
  </table>

   <br>
   
   <button onclick="document.location.href='deleteForm.jsp?num=<%=user.getNum()%>&pageNum=<%=pageNum%>'" class="w3-button w3-red"><b>강제 탈퇴</b></button>
   &nbsp;&nbsp;&nbsp;&nbsp;
   <button onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'" class="w3-button w3-yellow"><b>회원 목록</b></button>
   <%
 }catch(Exception e) {} %>
    
 </div>
      
</body>
</html>