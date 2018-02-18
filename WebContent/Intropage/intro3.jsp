<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">
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
	body {
		background-size: cover;
	}
	#patient{
		color: transparent;
	}
	/* welcome message typewriter effect */
	h3{
		animation: type 4s steps(20);
		overflow: hidden;
		white-space: nowrap;
		margin-left:20%;
		margin-right:15%;
		margin-top: 15%;
		font-family: 'Ubuntu', sans-serif;
		font-size: 100pt;
		font-weight: bold;
	}
	span{
		border: 0;
		padding: 0;
		margin: 0;
	}
	@keyframes type{
		0%{
			width: 0ch;
		}
		100%{
			width:20ch;
		}
	}
	/*----------------------------------*/
</style>
<body>
	<!--	welcome message typewriter effect   -->
	<h3 class="w3-center" >
		<span style="color: #FFDD75">i</span>
		<span style="color: #FF800D">n</span>
		<span style="color: #FF800D">n</span>
		<span style="color: #74BAAC">e</span>
		<span style="color: #FF7373">r</span>
		<span style="color: #FFDD75">p</span>
		<span style="color: #74BAAC">e</span>
		<span style="color: #FF7373">a</span>
		<span style="color: #FF800D">c</span>
		<span style="color: #74BAAC">e</span>
	</h3>
	
<div class="w3-container w3-center">
   <!--Patient Login-->
   <div class="patient">
     <button onclick="document.getElementById('id01').style.display='block'" 
     			id="patientfont" class="w3-btn w3-blue-grey w3-round-xxlarge w3-display-left" style="margin-left: 35%; margin-top: 10%;">
     			일반인
     </button>
	</div>
   <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" 
        	 class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
      </div>

      <form class="w3-container" action="/innerpeace/mainhome/fullcalendar-3.8.2/demos/__home.jsp">
        <div class="w3-section">
          <label><b>Username</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="usrname" required>
          <label><b>Password</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="psw" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Login</button>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">취소</button>
              <form class="w3-container" action="joinForm.jsp">
        	  	<button class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">회원가입</button>        	  	
        	  </form>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>

    </div>
  </div>
  
  
  <!--Team med Login-->
  <div class="doctor">
	<button onclick="document.getElementById('id01').style.display='block'" 
			id="docfont" class="w3-btn w3-blue-grey w3-round-xxlarge w3-display-right" style="margin-right: 35%; margin-top: 10%;">
     		의료진
     </button>
		 <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-btn w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        
      </div>     

    </div>
  </div>
  
  
</div>
</body>
</html>