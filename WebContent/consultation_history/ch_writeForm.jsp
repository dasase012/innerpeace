<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Form Style 8</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
<script type="text/javascript">
//auto expand textarea
function adjust_textarea(h) {
    h.style.height = "45px";
    h.style.height = (h.scrollHeight)+"px";
}
</script>
<style>
body{
	/* background: #348A96; */
	background: white;
}
.form-style-8{
	font-family: 'Open Sans Condensed', arial, sans;
	font-weight: bold;
	width: 500px;
	padding: 30px;
	background: #FFFFFF;
	margin: 50px auto;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
	-moz-box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
	-webkit-box-shadow:  0px 0px 15px rgba(0, 0, 0, 0.22);

}
.form-style-8 h2{
	background: #4D4D4D;
	text-transform: uppercase;
	font-family: 'Open Sans Condensed', sans-serif;
	color: #797979;
	font-size: 18px;
	font-weight: 100;
	padding: 20px;
	margin: -30px -30px 30px -30px;
}
.form-style-8 input[type="text"],
.form-style-8 input[type="password"],
.form-style-8 textarea,
.form-style-8 select 
{
	/* box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box; */
	outline: none;
	display: block;
	width: 100%;
	padding: 7px;
	border: none;
	border-bottom: 1px solid #ddd;
	background: transparent;
	margin-bottom: 10px;
	font: 16px Arial, Helvetica, sans-serif;
	height: 45px;
}
.form-style-8 textarea{
	resize:none;
	overflow: hidden;
}
.form-style-8 input[type="button"], 
.form-style-8 input[type="submit"]{
	-moz-box-shadow: inset 0px 1px 0px 0px #45D6D6;
	-webkit-box-shadow: inset 0px 1px 0px 0px #45D6D6;
	box-shadow: inset 0px 1px 0px 0px #45D6D6;
	background-color: #2CBBBB;
	border: 1px solid #27A0A0;
	display: inline-block;
	cursor: pointer;
	color: #FFFFFF;
	font-family: 'Open Sans Condensed', sans-serif;
	font-size: 14px;
	padding: 8px 18px;
	text-decoration: none;
	text-transform: uppercase;
}
.form-style-8 input[type="button"]:hover, 
.form-style-8 input[type="submit"]:hover {
	background:linear-gradient(to bottom, #34CACA 5%, #30C9C9 100%);
	background-color:#34CACA;
}
</style>
</head>

<body>

<div class="form-style-8">
  <h2><b>진료기록 확인</b></h2>
  <form>
   <tr><td align="left">글제목</td>
   	<td><input type="text" size="40" maxlength="50" name="subject"/>
   	</td></tr>
   	<tr><td align="left">작성자</td>
   	<td><input type="text" name="writer"/>
   	</td></tr>
   	<tr><td align="left">내용</td>
   	<td><textarea name="Content"></textarea>
   	</td></tr>
   	<tr><td align="left">비밀번호</td>
   	<td><input type="password" name="pwd" />
   	</td></tr>
   	<tr>
   	<td><input type="submit" value="글 게시" />
   	</td></tr>
  </form>
</div>
</body>
</html>