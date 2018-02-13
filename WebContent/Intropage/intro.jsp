<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
	body {
		background-size: cover;
	}
	#patient{
		color: transparent;
	}
</style>
<body >
	<h3 class="w3-center" style="margin-top: 30px;">WELCOME to innerpeace</h3>

<div class="w3-container w3-center">
   <!--Patient Login-->
   <div class="patient">
     <button onclick="document.getElementById('id01').style.display='block'" 
     			class="w3-btn w3-transparent w3-display-left" 
     			style="margin-left: 30%; margin-bottom:10%;">
		<img src="/innerpeace/resources/plogo.png">
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
              <form class="w3-container" action="membershipForm.jsp">
        	  	<button class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">회원가입</button>        	  	
        	  </form>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>

    </div>
  </div>
  
  
  <!--Team med Login-->
  <div class="doctor">
	<button onclick="document.getElementById('id01').style.display='block'" class="w3-btn w3-transparent w3-display-right" style="margin-right: 30%;margin-bottom:10%;">
		<img src="/innerpeace/resources/dlogo.png">
	</button>
		 <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-btn w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        
      </div>

      <form class="w3-container" action="membershipForm.jsp">
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
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>

    </div>
  </div>
  
  
</div>
            
</body>
</html>