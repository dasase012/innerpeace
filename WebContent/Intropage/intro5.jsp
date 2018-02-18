<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">

<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

<style type="text/css">

	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

	#patientfont{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 20pt;
		
	}
	#docfont{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 20pt;
		
	}
	.signup{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 15pt;
		font-style: italic;
	}
	body {
		background-size: cover;
		background-color: white;
 		padding-top: 5en;
 		display: flex;
 		justify-content: center;
	}
	
	/* welcome message typewriter effect */
	.typewriter h1{
		color: white;
		font-family: 'Ubuntu', sans-serif;
		font-size: 8rem;
		font-weight: bold;
		overflow: hidden;
		border-right: .13em solid orange;
		white-space: nowrap;
		margin: 140px auto;
		animation: typing 3.5s steps(30, end), blink-caret .5s step-end infinite;
		width: 100%;
	}
	@keyframes typing{
		from {width:0}
		to {width: 100%}
	}
	@keyframes blink-caret{
		from,to{border-color: transparent}
		50%{border-color: orange}
	}
	
</style>
<body>
	<!--	welcome message typewriter effect   -->
	<div class="typewriter ">
		<h1><div>
		<span style="color:#ffcf3f;">i</span>
		<span style="color:#ffbc49;">n</span>
		<span style="color:#ffa953;">n</span>
		<span style="color:#ff965c;">e</span>
		<span style="color:#ff8366;">r</span>
		<span style="color:#ff7070;">p</span>
		<span style="color:#ff7d7d;">e</span>
		<span style="color:#ff8a8a;">a</span>
		<span style="color:#ff9797;">c</span>
		<span style="color:#ffa4a4;">e</span></div></h1>
	</div>
	
	
	

<div class="w3-container w3-center">
 
   <!--Patient Login-->
   <!-- <div class="patient">
     <button onclick="document.getElementById('id01').style.display='block'" 
     			id="patientfont" 
     			class="w3-button w3-white w3-round-large w3-border w3-padding-large w3-xxlarge w3-display-left" style="margin-left: 35%; margin-top: 10%;">
     	<font color="#808B96">일반인</font>
     </button>
	</div> -->
   
   <!-- login modal -->
   <!-- <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" 
        	 class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
      </div>

      <form class="w3-container" action="/innerpeace/mainhome/fullcalendar-3.8.2/demos/__home.jsp">
        <div class="w3-section">
          <label><b>아이디</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="아이디를 입력하세요" name="usrname" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="비밀번호를 입력하세요" name="psw" required>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> 아이디 기억하기
		</div>
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
          <button class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">로그인</button>
      </form>

		<form class="w3-container" action="joinForm.jsp">
        	  	<button class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">회원가입</button>        	  	
        	  </form>
        
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-navy">취소</button>
              
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>

    </div>
  </div> -->
  <div data-role="main" class="ui-content">
    <a href="#myPopup" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all ui-icon-check ui-btn-icon-left">Show Popup Form</a>

    <div data-role="popup" id="myPopup" class="ui-content" style="min-width:250px;">
      <form method="post" action="/action_page_post.php">
        <div>
          <h3>Login information</h3>
          <label for="usrnm" class="ui-hidden-accessible">Username:</label>
          <input type="text" name="user" id="usrnm" placeholder="Username">
          <label for="pswd" class="ui-hidden-accessible">Password:</label>
          <input type="password" name="passw" id="pswd" placeholder="Password">
          <label for="log">Keep me logged in</label>
          <input type="checkbox" name="login" id="log" value="1" data-mini="true">
          <input type="submit" data-inline="true" value="Log in">
        </div>
      </form>
    </div>
  </div>
  
  <!--Team med Login-->
  <!-- <div class="doctor">
	<button onclick="document.getElementById('id01').style.display='block'" 
			id="docfont" 
			class="w3-button w3-white w3-round-large w3-border w3-padding-large w3-xxlarge w3-display-right" style="margin-right: 35%; margin-top: 10%;">
     	<font color="#808B96">의료진</font>
     </button>
		 <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-btn w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
    </div>     
  </div>
  </div>
</div> -->
 
</body>
</html>