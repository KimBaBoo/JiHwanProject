<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>QKYG게임즈 | 홈페이지</title>
	<script src="jq/jquery-3.7.0.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script src="js/logout.js"></script>
	<script src="js/myroom.js"></script>
	<script src="js/goMain.js"></script>
	<script src="js/FriendsRefresh.js"></script>
	<script src="js/ProfileSectionMove.js"></script>
	<script src="js/UpdateTitle.js"></script>
	<script src="js/GoProfileSetting.js"></script>
	<script src="js/MyRoomSection.js"></script>
	<script>
	  $(function(){
		    $('.jhSlider').bxSlider({
		    	mode:'horizontal',
		    	controls:true,
		    	captions: true,
				minSlides:3,
			    maxSlides:3,
			    slideWidth:640,
			    ticker:true,
			    tickerHover:true,
			    speed:30000
		    });
		  });
	</script>
<link rel= "stylesheet" href ="css/QkHome.css"/>

	<jsp:include page="NavBar2.jsp" />
</head>
<body>
	<div class="jhSlider">
		<div id = "robot" class="sliderTransition">
			<div class = "whatMenu">
			<!-- 새 소식 페이지 이동 -->
				<span>NEWS</span><br/>
				<form action="Controller">
					<button class=aBtn>알아보기</button>
					<input type="hidden" name="command" value="news"/>
				</form>
			</div>
		</div>
		<div id = "storeImg" class="sliderTransition">
			<div class = "whatMenu">
				<span>STORE</span><br/>
				<a href="main.jsp">
					<button class=aBtn>알아보기</button>
				</a>
			</div>
		</div>
		<!-- 피씨방 좌석예약 이동 -->
		<div id = "carFight" class="sliderTransition">
			<div class = "whatMenu">
				<span>PC CAFE</span><br/>
				<form action="Controller">
					<input type="hidden" name="command" value="pcCafe"/>
<!-- 				<a href="CafeSeatsTileArray.jsp"> -->
					<button class="aBtn">알아보기</button>
<!-- 				</a> -->
				</form>
			</div>
		</div>
		<!-- 게시판 이동 -->
		<div id = "greenMan" class="sliderTransition">
			<div class = "whatMenu">
				<span>COMMUNITY</span><br/>
				<form action="Controller">
					<input type="hidden" name="command" value="community"/>
					<button class=aBtn>알아보기</button>
				</form>
			</div>
		</div>
		<div id = "twoPeople" class="sliderTransition">
			<div class = "whatMenu">
				<span>REGISTER</span><br/>
				<a href="profileSetting.jsp">
					<button class=aBtn>알아보기</button>
				</a>
			</div>
		</div>
		<div id = "carImg" class="sliderTransition">
			<div class = "whatMenu">
				<span>LOGIN</span><br/>
				<a href="Login.jsp">
					<button class=aBtn>알아보기</button>
				</a>
			</div>
		</div>
		
	</div>
	 <jsp:include page="BottomFooter.jsp" />
</body>
</html>