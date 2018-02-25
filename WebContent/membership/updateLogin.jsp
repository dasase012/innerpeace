<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
	<form class="w3-container w3-card-4 w3-white w3-text-black w3-margin" style="height: 100%; width: 70%;" 
	action="/innerpeace/membership/updateLoginPro.jsp" method="post">
        <div class="w3-section">
         	<p><b>보안을 위해 아이디와 비밀번호를 한 번 더 입력해 주세요</b></p>
          <label><b>아이디</b></label>
          <input class="w3-input w3-border w3-margin-bottom" style="width: 50%;" type="text" placeholder="아이디를 입력하세요" name="id" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border"  style="width: 50%;" type="password" placeholder="비밀번호를 입력하세요" name="pwd" required>
		</div>
      <div class="w3-container w3-border-top">
          <button class="w3-button w3-block w3-silver w3-section w3-padding" type="submit"  style="width: 50%;" >회원 정보 수정하기</button>
      </form>
	
</body>
</html>