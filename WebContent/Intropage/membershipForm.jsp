<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>

<html>

<head>

<meta charset="UTF-8">

<title>�̳��ǽ� ȸ������</title>

</head>

<body>
 <div class="w3-container">
	<center>

		<hr width = 500 size=2 >

		<h2>ȸ�� ����</h2>
	
		<hr width = 500 size=2 >

	<form action="JoinOK" method="post">

		<table class="w3-table-all"  style="width:70%;" >
		<tr><td>
		�̸� : <input type="text" name="name" size="20"></td></tr>
		<tr><td>
		���̵� :<input type="text" name="id" size="20"></td></tr>		
		<tr><td>
		��й�ȣ :<input type="password" name="pw" size="20"></td></tr>
		<tr><td>
		��ȭ��ȣ :<select name = "hp">

				<option value="010">010</option>

				<option value="016">016</option>

				<option value="017">017</option>

				<option value="018">018</option>

				<option value="019">019</option>				 

		</select>

		<input type="text" name="hp2" size="4">-<input type="text" name="hp3" size=4></td></tr>
		
		<tr><td>
		���� : <input type="radio" name="gender" value="man">�� <input type="radio" name="gender" value="woman">��</td></tr>
		<tr><td>
		<input type="submit" value="�ۼ��Ϸ�">&nbsp;&nbsp;<input type="reset" value="���"></td></tr>	

	</form>
	</table>
	</center>
	</div>

</body>

</html>



