<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<style>
	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	body{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 15pt;
	}	
	h2{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 20pt;
	}
</style>
<html>

<head>

<meta charset="UTF-8">

<title>이너피스 회원가입</title>

</head>

<body>
	<!-- return logo top right -->
	<a href="/innerpeace/Intropage/intro_v1.jsp">
	<img class="w3-right" src="<%=request.getContextPath() %>/resources/home.png" style="width: 40px; height: 40px;">
	</a></h1>
	
 <div class="w3-container w3-display-center w3-teal" style="width: 50%; margin-left:25%; margin-right:25%;">
	

		<hr width = 500 size=2 >

		<h2 align="center">innerpeace 회원 가입</h2>
	
		<hr width = 500 size=2 >
	</div>
	 <div class="w3-container w3-display-center" style="width: 60%; margin-left:20%; margin-right:20%;">
	
	<form action="/innerpeace/Intropage/joinSuccess.jsp" method="post" >

		<!-- 기본정보 -->
		<label class="w3-text-teal">
		이름 :<input class="w3-input w3-border w3-light-grey" type="text" name="name" size="20">
		</label><br>
		<label class="w3-text-teal">
		아이디 :<input class="w3-input w3-border-0 w3-light-grey" type="text" name="id" size="20"></label><br>
		<label class="w3-text-teal">
		비밀번호 :<input class="w3-input w3-border-0  w3-light-grey"  type="password" name="pwd" size="20"></label><br>
		<label class="w3-text-teal">
		비밀번호 확인 :<input class="w3-input w3-border-0  w3-light-grey" type="password" name="pwdconfirm" size="20"></label><br>
		<label class="w3-text-teal">
		성별 : <input type="radio" name="gender" value="male">남
			 <input type="radio" name="gender" value="female">여</label><br><br>
		<label class="w3-text-teal">
		생년월일 :<input class="w3-input w3-border-0 w3-light-grey" type="date" name="birthdate" size="20"></label><br>
				
		<!-- 연락처 -->
		
		<label class="w3-text-teal">
		전화번호 :<input class="w3-input w3-border-0 w3-light-grey" type="tel" name="tel" size="20">
		</label><br>
		<label class="w3-text-teal">
		이메일:<input class="w3-input w3-border-0 w3-light-grey" type="email" name="email" size="20">
		</label><br>
		<!-- 과거진료이력 -->
		<label class="w3-text-teal">
		과거에 상담 혹은 진료를 받은 적이 있습니까?<br>
		<input type="radio" name="yes" value="yes">있다
		<input type="radio" name="no" value="no">없다
		</label><br><br>
        <label class="w3-text-teal">
		있다면 가장 최근 상담/진료 받으신 날짜를 알려주세요<br>
		<input class="w3-input w3-border-0 w3-light-grey"  type="date" name="con_date" size="20">
		</label><br>
		<label>
		<input type="submit" value="작성완료"><!-- &nbsp;&nbsp; -->
		<input type="reset" value="다시작성"></label></form>
		
	</form>
	
	
	</div>

</body>

</html>



