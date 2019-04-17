<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
    	<title>GYM CARRY</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Fullscreen Background Image Slideshow with CSS3 - A Css-only fullscreen background image slideshow" />
        <meta name="keywords" content="css3, css-only, fullscreen, background, slideshow, images, content" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="${path}/mainSlide/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="${path}/mainSlide/css/style2.css" />
		<script type="text/javascript" src="${path}/mainSlide/js/modernizr.custom.86080.js"></script>
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
		<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet"> <!-- 구글폰트 -->
		<!--메인 슬라이드쇼  참조 https://tympanus.net/codrops/ -->
		<!-- 그외 css 참조 https://www.w3schools.com -->
    </head>
    <body id="page">
        <ul class="cb-slideshow">
            <li><span>Image 01</span><div><h3>No sweat, no sweet</h3></div></li>
            <li><span>Image 02</span><div><h3>Faith without deeds is useless.</h3></div></li>
            <li><span>Image 03</span><div><h3>United we stand, divided we fall.</h3></div></li>
            <li><span>Image 04</span><div><h3>Weak things united become strong.</h3></div></li>
            <li><span>Image 05</span><div><h3>The will of a man is his happiness.</h3></div></li>
            <li><span>Image 06</span><div><h3>All fortune is to be conquered by bearing it.</h3></div></li>
        </ul>
        <div class="container">
            <!-- top bar -->
            <div class="codrops-top">
                <a href="#">
                    <strong>&laquo; GYM CARRY 최고의 롤모델을 찾아서! </strong>
                </a>
                <span class="right">
                    <a href="#" target="_blank">GYM CARRY 앱 설치</a>
                    <a href="https://www.facebook.com/‎" target="_blank">
                    	<img src="${path }/resources/facebook.png"> <strong>페이스북</strong>
                    </a>
                    <a href="https://www.instagram.com/?hl=ko/">
                        <img src="${path }/resources/insta.png"> <strong>인스타그램</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div>
            	<!-- 상단 메뉴 -->
             <div id="menu"class="ui secondary right menu " style="font-family: 'Jua', sans-serif;font-size:18px;">
			  <a class="item" href="${path }/"><img src="${path }/resources/gclogo.png" style="width:400px;height:250px"/></a>
			  <a class="item active">트레이너찾기 </a>
			  <a class="item" href="${path }/notice.do">공지사항</a>
			  <a href="${path }/community.do" class="item">커뮤니티</a>
			  <c:if test="${loginCheck==null}">
			  	<a class="item" href="${path }/user/login.do">로그인</a>
			  	<a href="${path }/user/userJoin.do"class="item">회원가입</a>
			  </c:if>
			  <c:if test="${loginCheck=='Y'}">			  
			 	 <a class="item" href="${path }/user/logout.do">로그아웃</a>
			 	 <a class="item" href="${path }/user/myProfile.do">내 정보</a>			 	 
			 	 <a class="item">짐프로틴 사러 가기</a>
			 	 <a class="item" style="background-color:#890422;border-radius: 10px; border-style:inherit;">트레이너신청하기</a>
			  </c:if>
			  
			</div>
			<!-- 상단 메뉴 end -->
            
            <!--중단 포탈 -->
            <header id="portal">
                <h1>GYM CARRY <span>이용하는 방법</span></h1>
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;  버튼을 누르면 해당 페이지로 이동합니다.</h2>
				<p>
					<button onclick="scrollTo1()">GYM CARRY 이용 방법</button>
					<button onclick="scrollTo2()">트레이너가 되어 보세요.</button>  <!-- 트레이너신청하기페이지 -->
					<button onclick="scrollTo3()">트레이너를 추천해 드려요!</button>
					<button onclick="scrollTo4()">커뮤니티에 글 올리기!</button>
					<button onclick="scrollTo5()">생활꿀팁</button>
				</p>
            </header>
            
            <!-- 타이틀1 -->
            <div id=title1>HOW TO USE GYM CARRY [user]</div>
            <!--사용방법 첫번째줄 -->
            
            	<div class="ui steps">
				  <div class="step">
				    <i class="address card icon"></i>
				    <div class="content">
				      <div class="title"><a href="${path }/userJoin.do"class="item">회원가입 & 로그인</a></div>
				    </div>
				  </div>
				  <div class="step">
				    <i class="search icon"></i>
				    <div class="content">
				      <div class="title">트레이너 찾기<button style="background-color:#890422;border-radius: 10px; border-style:inherit;color:white;cursor:pointer;">Go!</button></div>
				    </div>
				  </div>
				  <div class="active step">
				    <i class="payment icon"></i>
				    <div class="content">
				      <div class="title">짐프로틴 구매 <button style="background-color:#890422;border-radius: 10px; border-style:inherit;color:white;cursor:pointer;">Go!</button> </div>
				    </div>
				  </div>
				</div>
			
				<!--사용방법 두번째줄 -->
				<br/>
				<div class="ui steps">
				  <div class="step">
				    <i class="american sign language interpreting icon"></i>
				    <div class="content">
				      <div class="title">pt요청 & 짐프로틴 지불</div>
				    </div>
				  </div>
				  <div class="step">
				    <img src="${path }/resources/logoct.png" style="width:40px;"/>
				    <div class="content">
				      <div class="title">매칭된 트레이너와 PT시작!</div>
				    </div>
				  </div>
				</div>
           
           	<!-- 타이틀 -->
           	<div id= title2>HOW TO USE GYM CARRY [trainer]</div>
           	
           		<div class="ui steps">
				  <div class="step">
				    <i class="address card icon"></i>
				    <div class="content">
				      <div class="title"><a href="${path }/userJoin.do"class="item">회원가입 & 로그인</a></div>
				    </div>
				  </div>
				  <div class="step">
				    <i class="file alternate outline icon"></i>
				    <div class="content">
				      <div class="title">트레이너 신청하기<button style="background-color:#890422;border-radius: 10px; border-style:inherit;color:white;cursor:pointer;">Go!</button></div>
				    </div>
				  </div>
				  <div class="active step">
				    <i class="comments outline icon"></i>
				    <div class="content">
				      <div class="title">내 프로필에 요청이 들어오면 수락여부 결정<button style="background-color:#890422;border-radius: 10px; border-style:inherit;color:white;cursor:pointer;">Go!</button> </div>
				    </div>
				  </div>
				</div>
           		<br/>
				<div class="ui steps">
				  <div class="step">
				    <i class="american sign language interpreting icon"></i>
				    <div class="content">
				      <div class="title">짐프로틴 수령 & 매칭성사</div>
				    </div>
				  </div>
				  <div class="step">
				    <img src="${path }/resources/logoct.png" style="width:40px;"/>
				    <div class="content">
				      <div class="title">매칭된 분과 PT시작!</div>
				    </div>
				  </div>
				</div>
           	
           	
           	<!-- 타이틀 -->
           	<div id= title3>RECOMMENDED MONTHLY TRAINERS</div>
           	<!-- 추천트레이너 --> 
            <div id="trainers"> <!-- float-frame 과 unit의미없음   -->
       			<div class="container float-unit">
				  	<img src="${path }/resources/selfi1.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  		<a href="#"><div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email">yslg86@naver.com</span><hr/> <!-- email적는란 -->
					    <span id="comment">헬스 경력 2년차입니다. 처음 입문하시는 분들께 도움이 되고 싶어요!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi2.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  		<a href="#"><div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email2">muscle12@gmail.com</span><hr/> <!-- email적는란 -->
					    <span id="comment2">같이 운동하실분 찾아요.^ㅡ^ </span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi3.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<a href="#"><div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email3">guenyuk@daum.net</span><hr/> <!-- email적는란 -->
					    <span id="comment3">초보분들 하나부터 열까지 천천히 가르쳐드려요!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi4.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  		<a href="#"><div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email4">lmsjz@naver.com</span><hr/> <!-- email적는란 -->
					    <span id="comment4">1년차. 함께 성장하실분 찾아요</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi5.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  		<a href="#"><div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email5">zbass@gmail.com</span><hr/> <!-- email적는란 -->
					    <span id="comment5">저와 같이 수다떨면서 몸매 가꾸실 여성분! </span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/selfi6.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  		<a href="#"><div class="overlay">
					    <div class="text"><i class="user circle outline icon"></i>
					    <span id="email6">khdrogba@daum.net</span><hr/> <!-- email적는란 -->
					    <span id="comment6">토요일에 하체 같이 조지실분</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
	
        	</div>
       
        	
        	<div id="title4">JOIN COMMUNITY</div>
        	<div id="com" style="border:outset; margin-top:30px; padding:50px 0px 50px 0px">
        		<h3>1. <a href="${path }/userJoin.do"class="item" style="color:red">회원가입 및 로그인.</a><h3/>
        		<h3>2. <a href="${path }/community.do" style="color:red">GYMCARRY 커뮤니티</a>에 입장!</h3>
        		<h3>3. 글이나 사진 올리기</h3>
        		<h3>4. 운동 외적인 글 또는 광고성 글은 제지 당할 수 있습니다.</h3>
        	</div>
        	
        	<div id ="title5">GYM CARYY 꿀팁</div>
        	<div id=honeyTip>
        		<div class="container float-unit">
				  	<img src="${path }/resources/tip1.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<a href="${path }/honeyTip.do" class="item"><div class="overlay">
					    <div class="text"><i class="hand point right outline icon"></i>
					    <span id="report">강휘 기자</span><hr/> <!-- email적는란 -->
					    <span id="comment">살을 빼기 위해선 절대로 먹어선 안되는 음식 탑 5를 선정해보았습니다.</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/tip2.png" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<a href="${path }/honeyTip2.do" class="item"><div class="overlay">
					    <div class="text"><i class="hand point right outline icon"></i>
					    <span id="report2">지경호 기자</span><hr/> <!-- email적는란 -->
					    <span id="comment2">당뇨 극복하기!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/tip3.png" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<a href="${path }/honeyTip3.do" class="item"><div class="overlay">
					    <div class="text"><i class="hand point right outline icon"></i>
					    <span id="report3">이윤성 기자</span><hr/> <!-- email적는란 -->
					    <span id="comment3">연예인들의 다이어트 꿀팁!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/tip4.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<a href="${path }/honeyTip4.do" class="item"><div class="overlay">
					    <div class="text"><i class="hand point right outline icon"></i>
					    <span id="report3">아이유 기자</span><hr/> <!-- email적는란 -->
					    <span id="comment3">눈건강과 다이어트를 한번에!</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>
				<div class="container float-unit">
				  	<img src="${path }/resources/tip5.jpg" alt="Avatar" class="image ui medium rounded" style="height:250px">
				  	<a href="${path }/honeyTip5.do" class="item"><div class="overlay">
					    <div class="text"><i class="hand point right outline icon"></i>
					    <span id="report3">강휘 기자</span><hr/> <!-- email적는란 -->
					    <span id="comment3">3분할 운동 정석.</span> <!-- 코멘트적는란 -->
				    	</div>
				  	</div></a>
				</div>

        	</div>
        	<div id=blank style="font-size:15px">Gym Carry 
        	대표:강휘<br/>
        	공동대표: 지경호, 이윤성<br/>
        	주소:대한민국 서울시 구로구 구트아카데미 2층<br/>
        	연락처:010-2200-7646<br/>
        	이메일: goott@naver.com<br/>
        	
        	</div>
        	
        	
        	<!-- 따라다니는 버튼 -->
        	<a onclick="scrollToTop()">
	        	<div id="top">
					<i class= "arrow up icon" style="width:20px" ></i>
				</div>
			</a>
			
			
			
        </div>   
    </body>
    
<style>
	body{font-family: 'Jua', sans-serif;color:white }
	#menu a{color:white}
	#portal{margin-left:27%}
	#portal button{border-radius:10px;background:#890422;font-family: 'Jua', sans-serif;color:white; font-size:17px;border-style:inherit;cursor:pointer }
	#portal a{font-size:15px}	
	#com{clear:both;} /* float-left 종료시키기 */
	#trainers{margin-left:220px }
	#honeyTip{margin-left:330px;}
	#title1, #title2, #title3, #title5{text-algin:center;margin-top:400px;margin-bottom:50px;font-size:30px}
	#title4{text-algin:center;margin-top:650px;font-size:30px}
	#blank{margin-top:650px;}
	
	.float-unit{float:left;margin-left:10px;margin-bottom:10px;position: relative;width: 200px;}		
	.image {
	  display: block;
	  width: 100%;
	  height: auto;
	}
	
	.overlay {
	  position: absolute;
	  top: 0;
	  bottom: 0;
	  left: 0;
	  right: 0;
	  height: 100%;
	  width: 100%;
	  opacity: 0;
	  transition: .5s ease;
	  background-color: #008CBA;
	}
	
	#trainers .container:hover .overlay {
	  opacity: 0.7;
	}
	#honeyTip .container:hover .overlay {
	  opacity: 0.7;
	}
	
	.text {
	  color: white;
	  font-size: 15px;
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  -webkit-transform: translate(-50%, -50%);
	  -ms-transform: translate(-50%, -50%);
	  transform: translate(-50%, -50%);
	  text-align: center;
	}
	/* 따라다니는 고정 버튼 */
	#top{ position:fixed; width:30px;height:20px; 
		right:20px; /* 창에서 오른쪽 길이 */ 
		top:97%; /* 창에서 위에서 부터의 높이 */ 
		border-radius:50%;
		background-color:white ;
		color :#890422;
		cursor:pointer;
		}
	
			
</style>

<script>
	function closex(){  //광고 닫는 함수 
		const closex = document.getElementById('carousel-example-generic');
		closex.style.display='none';
	}
	function scrollTo1(){
		window.scrollTo(0,650);	
	}
	function scrollTo2(){
		window.scrollTo(0,1330);	
	}
	function scrollTo3(){
		window.scrollTo(0,2000);	
	}
	function scrollTo4(){
		window.scrollTo(0,2700);	
	}
	function scrollTo5(){
		window.scrollTo(0,3500);	
	}
	function scrollToTop(){
		window.scrollTo(0,0);	
	}
	
</script>
    
</html>