<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>

<html>

<head>

<meta charset="UTF-8">

<title>�̳��ǽ��� �Բ��� �ּż� �����մϴ�.</title>

</head>

<body>
 <div class="w3-container">
	<center>

		<hr width = 500 size=2 >

		<h2>ȸ�� ����</h2>
	
		<hr width = 500 size=2 >

	<form action="JoinOK" method="post">

		�̸� : <input type="text" name="name" size="20"><br />

		���̵� :<input type="text" name="id" size="20"><br />		

		��й�ȣ :<input type="password" name="pw" size="20"><br/>

		��ȭ��ȣ :<select name = "hp">

				<option value="010">010</option>

				<option value="016">016</option>

				<option value="017">017</option>

				<option value="018">018</option>

				<option value="019">019</option>				 

		</select>

		<input type="text" name="hp2" size="4">-<input type="text" name="hp3" size=4><br/>

		���� : <input type="radio" name="gender" value="man">�� <input type="radio" name="gender" value="woman">��<br/>

		<input type="submit" value="ȸ������">&nbsp;&nbsp;<input type="reset" value="���">	

	</form>
	</table>
	</center>
	</div>

</body>

</html>



