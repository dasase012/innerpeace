<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="euc-kr" />
<link href="../fullcalendar.min.css" rel="stylesheet" />
<link href="../fullcalendar.print.min.css" rel="stylesheet" media="print" />
<script src="../lib/moment.min.js"></script>
<script src="../lib/jquery.min.js"></script>
<script src="../fullcalendar.min.js"></script>
<script>

  $(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next',
        center: 'title',
        right: 'month'
      },
      defaultDate: '2018-02-12',
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectHelper: true,
      select: function(start, end) {
          var title = prompt('Event Title:');
          var eventData;
          if (title) {
            eventData = {
              title: title,
              start: start,
              end: end
            };
            $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
          }
          $('#calendar').fullCalendar('unselect');
        },          
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2018-02-01'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-02-09T16:00:00'
        },
        {
          title: 'Conference',
          start: '2018-02-11',
          end: '2018-02-13'
        },
        {
          title: 'Meeting',
          start: '2018-02-12T10:30:00',
          end: '2018-02-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2018-02-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2018-02-12T14:30:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2018-02-28'
        }
      ]
    });

  });
  $(document).ready(function() {

	    $('#calendar-list').fullCalendar({
	      header: {
	        left: 'today',
	        right: 'listDay,listWeek'
	      },
	      views: {
	          listDay: { buttonText: 'list day' },
	          listWeek: { buttonText: 'list week' }
	        },

	        defaultView: 'listDay',
	        defaultDate: '2018-02-12',
	        navLinks: true, // can click day/week names to navigate views
	        editable: true,
	        eventLimit: true
	    });
  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 45%;
    margin: 0 auto;
    margin-top: 2%;
    margin-right: 40%;
    margin-bottom: 20%;
    
  }
	#calendar-list{
	max-width: 20%;
    margin: 0 auto;

    margin-right: 18%;

	}

  #navigation{
  	width: 60%;
  	margin-left: 20%;
  	margin-right: 20%;
  }	
</style>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
	<h1 class="w3-center">WELCOME
	<!-- home logo top right -->
	<a href="/innerpeace/mainhome/fullcalendar-3.8.2/demos/__home.jsp">
	<img class="w3-right" src="<%=request.getContextPath() %>/resources/home.png" style="width: 40px; height: 40px;">
	</a></h1>
	<!-- logout -->
	<a href="/innerpeace/login/logout.jsp">
	<button type="button" class="btn btn-default btn-sm">
       Log out
    </button>
	
	<!-- header navigation -->
	<div class="w3-bar w3-border w3-light-grey" id="navigation">
	  <a href="/innerpeace/doc_find/map.jsp" class="w3-bar-item w3-button w3-mobile w3-light-grey" style="width:25%">의료진/병원 찾기</a>
	  <a href="/innerpeace/reservation/reservation.jsp" class="w3-bar-item w3-button w3-mobile" style="width:25%">예약관리</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">원격진료</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">진료기록</a>
	</div>
	
	<!-- calendar left-body -->
	<div id='calendar'></div>
	
	<!-- calendar right-body -->
	<div id="calendar-list" class="w3-display-right"></div>	
		<!-- db에 연동해서 왼쪽 바디 캘린더에 들어간 예약 내용을 오른쪽 리스트에 뿌려주면 됨 -->
	
	<!-- footer contact admin -->
	<h6 class="w3-bottom" align="center">contact: admin@innerpeace.com</h6>
</body>
</html>