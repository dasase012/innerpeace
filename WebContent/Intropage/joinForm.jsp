<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>

<html>

<head>

<meta charset="UTF-8">

<title>이너피스 회원가입</title>

</head>

<body>
 <div class="w3-container">
	

		<hr width = 500 size=2 >

		<h2>회원 가입</h2>
	
		<hr width = 500 size=2 >

	<form action="joinSuccess.jsp" method="post" class="w3-container w3-light-grey">

		<!-- 기본정보 -->
		<label>이름 :<input class="w3-input w3-border-0" type="text" name="name" size="20">
		</label><br>
		<label>아이디 :<input class="w3-input w3-border-0" type="text" name="id" size="20"></label><br>
		<label>비밀번호 :<input class="w3-input w3-border-0"  type="password" name="pwd" size="20"></label><br>
		<label>비밀번호 확인 :<input class="w3-input w3-border-0" type="password" name="pwdconfirm" size="20"></label><br>
		<label>성별 : <input type="radio" name="gender" value="male">남
					<input type="radio" name="gender" value="female">여</label><br>
		<label>생년월일 :<input class="w3-input w3-border-0" type="date" name="birthdate" size="20"></label><br>
				
		<!-- 연락처 -->
		
		<label>전화번호 :<input class="w3-input w3-border-0" type="tel" name="tel" size="20">
		</label><br>
		<label>이메일:<input class="w3-input w3-border-0" type="email" name="email" size="20">
		</label><br>
		<!-- 과거진료이력 -->
		<label>
		과거에 상담 혹은 진료를 받은 적이 있습니까?<br>
		<input type="radio" name="yes" value="yes">있다
		<input type="radio" name="no" value="no">없다
		</label><br>
        <label>
		있다면 가장 최근 상담/진료 받으신 날짜를 알려주세요<br>
		<input class="w3-input w3-border-0"  type="date" name="con_date" size="20">
		</label><br>
		<label>
		<input type="submit" value="작성완료"><!-- &nbsp;&nbsp; -->
		<input type="reset" value="다시작성">
		<input type="button" value="취소"></form>
		</label><br>	

	</form>
	
	
	</div>

</body>

</html>



