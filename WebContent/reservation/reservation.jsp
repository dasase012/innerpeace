<%@page import="java.text.SimpleDateFormat"%>
<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="euc-kr" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
  	<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
	  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	  <script>
	  $( function() {
	    $( "#datepicker" ).datepicker();
	  } );
	  $( function() {
		$( "#datepicker2" ).datepicker();
	  } );
	  $(function(){
		$('input.timepicker').timepicker({
		    	scrollbar: true
		    });  
		});
	  </script>

<style>
  i{
  	margin-left: 80%;
  }
  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #navigation{
  	width: 60%;
  	margin-left: 20%;
  	margin-right: 20%;
  }	
  #body{
  	margin-left: 20%;
  	margin-right: 20%;
  }
  
</style>
</head>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<body>
	<!-- home logo top right -->
		<a href="/innerpeace/mainhome/home.jsp">
		<i id="home" class="material-icons" style="font-size:36px">home</i>
		</a>
	<!-- Logout logo top right -->
		<a href="/innerpeace/membershipUser/logout.jsp">
		<i id="logout" class="material-icons" style="font-size:36px">power_settings_new</i>
		</a>
		
	<!-- Mypage logo top right -->
		<a href="/innerpeace/membershipUser/updateLogin.jsp">
		<i id="mypage" class="material-icons" style="font-size:36px">portrait</i>
		</a>
	<h1 class="w3-center">WELCOME
	</h1>
	
	<!-- header navigation -->
	<div class="w3-bar w3-border w3-light-grey" id="navigation">
	  <a href="/innerpeace/doc_find/map.jsp" class="w3-bar-item w3-button w3-mobile w3-light-grey" style="width:25%">�Ƿ���/���� ã��</a>
	  <a href="/innerpeace/reservation/reservation.jsp" class="w3-bar-item w3-button w3-mobile" style="width:25%">�������</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">��������</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">������</a>
	</div>
	<!-- body board -->
	<center>
	<form class="w3-container w3-card-4 w3-white w3-text-black w3-margin" style="height: 110%;width:40%; ">
		<div class="reservation_form">
	<form action="rsvpPro.jsp" method="post">
	
		<div><br>
			<label>�̸�</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;"type="text" name="your name" required="">
		</div>
		<div>
			<label>���̵�</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;"type="text" name="your id" required="">
		</div>
		<div>
			<label>�⺻ ����ó</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;"type="text" name="tel" required="">			
		</div>
		<div>
			<label>����ó 2</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;" type="text" name="tel2" >
		</div>
		<div>
			<label>�̸���</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;" type="email" name="email" >
		</div>
		<div>
			<label>���� : </label><span></span>
			<input type="radio" name="gender" value="male">��
			<input type="radio" name="gender" value="female">��
		</div>
		<div>
	
			<select id="category1" class="w3-select" name="option" style="width: 50%;" required="">
				<option value="">��� �ް��� �ϴ� ����*</option>
				<option value=""></option>
				<option value="">----�������Űǰ� ����----</option>
				<option value="">�����</option>
				<option value="">�г�����,��Ʈ����</option>
				<option value="">�Ҹ���</option>
				<option value="">���ΰ�����</option>
				<option value="">�������(�Ž�,����)</option>
				<option value="">�ߵ�(����,����Ȱ,��)</option>
				<option value="">�Ҿ����,������</option>
				<option value="">�ܻ� �� ��Ʈ���� ���</option>
				<option value="">�κΰ���,Ŀ�� ī���</option>
				<option value=""></option>
				<option value=""></option>
				<option value="">----�Ҿ�û�ҳ� ���Űǰ� ����----</option>
				<option value="">���Ƿ� ���� ���� �ൿ���(ADHD)</option>
				<option value="">ƽ���</option>
				<option value="">�н����,���� �� ��������</option>
				<option value="">�������</option>
				<option value="">û�ҳ� ���ͳ� �ߵ�</option>
				<option value="">������ ������</option>
				<option value="">������ ���� ������,�յ� ������</option>
			</select>
			<span></span>
		</div>
		<div>
			<select id="category2" class="w3-select" name="option" style="width: 50%;" required="">
				<option value="">��� �ް��� �ϴ� ������*</option>
				<option value="">�����A</option>
				<option value="">�����B</option>
				<%-- <option value=""><%=getget%></option>
				<option value=""><%=getget%></option> --%>
			</select>
			<span></span>
		</div><br>
		<div>
			<label>���Ͻô� ���� �Ͻø� ������ �ּ���.<br><span></span></label>
			<input class="date1" id="datepicker" name="Text" type="text" value="MM/DD/YYYY" 
			onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MM/DD/YYYY';}" required="">
			<input class="timepicker timepicker-with-dropdown text-center" />
		</div><br>
		<div>
			<label>�������� ������ ���� �Ͻø� ������ �ּ���.<br><span></span></label>
			<input class="date2" id="datepicker2" name="Text" type="text" value="MM/DD/YYYY" 
			onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MM/DD/YYYY';}" required="">
			<input class="timepicker timepicker-with-dropdown text-center"/>
		</div><br>		
		<div>
			<label>���� �������� ���� �ֽ��ϱ�? </label><span></span>
			<input type="radio" name="medication" value="yes">��
			<input type="radio" name="medication" value="no">�ƴϿ�
		</div><br>
		<div>
			<label >�ִٸ� �Ʒ��� �̸��� �����ּ���.<br><span></span></label>
			<textarea style="height: 10%; width: 40%;"></textarea>
			<span></span>
		</div><br>
		<div>
			<label class="list">�� �ۿ� �˷��ֽ� ������ �ִٸ� �Ʒ��� �����ּ���.<br><span></span></label>
			<textarea style="height: 10%; width: 40%;"></textarea>
			<span></span>
		<br><br>
		<input type="submit" name="submit" value="�����ϱ�"></div>
	</form>
	</div>
	</form>
	</center>

	
	
	
	<!-- footer contact admin -->
	<!-- <h6 class="w3-bottom" align="center">contact: admin@innerpeace.com</h6> -->
</body>
</html>