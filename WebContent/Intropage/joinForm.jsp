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
	

		<hr width = 500 size=2 >

		<h2>ȸ�� ����</h2>
	
		<hr width = 500 size=2 >

	<form action="joinSuccess.jsp" method="post" class="w3-container w3-light-grey">

		<!-- �⺻���� -->
		<label>�̸� :<input class="w3-input w3-border-0" type="text" name="name" size="20">
		</label><br>
		<label>���̵� :<input class="w3-input w3-border-0" type="text" name="id" size="20"></label><br>
		<label>��й�ȣ :<input class="w3-input w3-border-0"  type="password" name="pwd" size="20"></label><br>
		<label>��й�ȣ Ȯ�� :<input class="w3-input w3-border-0" type="password" name="pwdconfirm" size="20"></label><br>
		<label>���� : <input type="radio" name="gender" value="male">��
					<input type="radio" name="gender" value="female">��</label><br>
		<label>������� :<input class="w3-input w3-border-0" type="date" name="birthdate" size="20"></label><br>
				
		<!-- ����ó -->
		
		<label>��ȭ��ȣ :<input class="w3-input w3-border-0" type="tel" name="tel" size="20">
		</label><br>
		<label>�̸���:<input class="w3-input w3-border-0" type="email" name="email" size="20">
		</label><br>
		<!-- ���������̷� -->
		<label>
		���ſ� ��� Ȥ�� ���Ḧ ���� ���� �ֽ��ϱ�?<br>
		<input type="radio" name="yes" value="yes">�ִ�
		<input type="radio" name="no" value="no">����
		</label><br>
        <label>
		�ִٸ� ���� �ֱ� ���/���� ������ ��¥�� �˷��ּ���<br>
		<input class="w3-input w3-border-0"  type="date" name="con_date" size="20">
		</label><br>
		<label>
		<input type="submit" value="�ۼ��Ϸ�"><!-- &nbsp;&nbsp; -->
		<input type="reset" value="�ٽ��ۼ�">
		<input type="button" value="���"></form>
		</label><br>	

	</form>
	
	
	</div>

</body>

</html>



