<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>

<html>

<head>

<meta charset="UTF-8">

<title>이너피스와 함께해 주셔서 감사합니다.</title>

</head>

<body>
 <div class="w3-container">
	<center>

		<hr width = 500 size=2 >

		<h2>회원 가입</h2>
	
		<hr width = 500 size=2 >

	<form action="JoinOK" method="post">

		이름 : <input type="text" name="name" size="20"><br />

		아이디 :<input type="text" name="id" size="20"><br />		

		비밀번호 :<input type="password" name="pw" size="20"><br/>

		전화번호 :<select name = "hp">

				<option value="010">010</option>

				<option value="016">016</option>

				<option value="017">017</option>

				<option value="018">018</option>

				<option value="019">019</option>				 

		</select>

		<input type="text" name="hp2" size="4">-<input type="text" name="hp3" size=4><br/>

		성별 : <input type="radio" name="gender" value="man">남 <input type="radio" name="gender" value="woman">여<br/>

		<input type="submit" value="회원가입">&nbsp;&nbsp;<input type="reset" value="취소">	

	</form>
	</table>
	</center>
	</div>

</body>

</html>



