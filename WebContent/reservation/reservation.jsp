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
	  <a href="/innerpeace/doc_find/map.jsp" class="w3-bar-item w3-button w3-mobile w3-light-grey" style="width:25%">의료진/병원 찾기</a>
	  <a href="/innerpeace/reservation/reservation.jsp" class="w3-bar-item w3-button w3-mobile" style="width:25%">예약관리</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">원격진료</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">진료기록</a>
	</div>
	<!-- body board -->
	<center>
	<form class="w3-container w3-card-4 w3-white w3-text-black w3-margin" style="height: 110%;width:40%; ">
		<div class="reservation_form">
	<form action="rsvpPro.jsp" method="post">
	
		<div><br>
			<label>이름</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;"type="text" name="your name" required="">
		</div>
		<div>
			<label>아이디</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;"type="text" name="your id" required="">
		</div>
		<div>
			<label>기본 연락처</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;"type="text" name="tel" required="">			
		</div>
		<div>
			<label>연락처 2</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;" type="text" name="tel2" >
		</div>
		<div>
			<label>이메일</label><span></span>
			<input class="w3-input w3-hover-grey" style="width: 50%;" type="email" name="email" >
		</div>
		<div>
			<label>성별 : </label><span></span>
			<input type="radio" name="gender" value="male">남
			<input type="radio" name="gender" value="female">여
		</div>
		<div>
	
			<select id="category1" class="w3-select" name="option" style="width: 50%;" required="">
				<option value="">상담 받고자 하는 과목*</option>
				<option value=""></option>
				<option value="">----성인정신건강 전반----</option>
				<option value="">우울증</option>
				<option value="">분노조절,스트레스</option>
				<option value="">불면증</option>
				<option value="">대인공포증</option>
				<option value="">섭식장애(거식,폭식)</option>
				<option value="">중독(게임,성생활,술)</option>
				<option value="">불안장애,강박증</option>
				<option value="">외상 후 스트레스 장애</option>
				<option value="">부부갈등,커플 카운셀링</option>
				<option value=""></option>
				<option value=""></option>
				<option value="">----소아청소년 정신건강 전반----</option>
				<option value="">주의력 결핍 과잉 행동장애(ADHD)</option>
				<option value="">틱장애</option>
				<option value="">학습장애,적성 및 진로지도</option>
				<option value="">정서장애</option>
				<option value="">청소년 인터넷 중독</option>
				<option value="">도벽과 거짓말</option>
				<option value="">성폭력 피해 후유증,왕따 후유증</option>
			</select>
			<span></span>
		</div>
		<div>
			<select id="category2" class="w3-select" name="option" style="width: 50%;" required="">
				<option value="">상담 받고자 하는 선생님*</option>
				<option value="">상담자A</option>
				<option value="">상담자B</option>
				<%-- <option value=""><%=getget%></option>
				<option value=""><%=getget%></option> --%>
			</select>
			<span></span>
		</div><br>
		<div>
			<label>원하시는 진료 일시를 선택해 주세요.<br><span></span></label>
			<input class="date1" id="datepicker" name="Text" type="text" value="MM/DD/YYYY" 
			onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MM/DD/YYYY';}" required="">
			<input class="timepicker timepicker-with-dropdown text-center" />
		</div><br>
		<div>
			<label>차선으로 가능한 진료 일시를 선택해 주세요.<br><span></span></label>
			<input class="date2" id="datepicker2" name="Text" type="text" value="MM/DD/YYYY" 
			onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MM/DD/YYYY';}" required="">
			<input class="timepicker timepicker-with-dropdown text-center"/>
		</div><br>		
		<div>
			<label>현재 복용중인 약이 있습니까? </label><span></span>
			<input type="radio" name="medication" value="yes">예
			<input type="radio" name="medication" value="no">아니오
		</div><br>
		<div>
			<label >있다면 아래에 이름을 적어주세요.<br><span></span></label>
			<textarea style="height: 10%; width: 40%;"></textarea>
			<span></span>
		</div><br>
		<div>
			<label class="list">그 밖에 알려주실 사항이 있다면 아래에 적어주세요.<br><span></span></label>
			<textarea style="height: 10%; width: 40%;"></textarea>
			<span></span>
		<br><br>
		<input type="submit" name="submit" value="예약하기"></div>
	</form>
	</div>
	</form>
	</center>

	
	
	
	<!-- footer contact admin -->
	<!-- <h6 class="w3-bottom" align="center">contact: admin@innerpeace.com</h6> -->
</body>
</html>