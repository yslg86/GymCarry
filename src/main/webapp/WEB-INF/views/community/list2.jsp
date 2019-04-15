<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="  crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Faker/3.1.0/faker.js"></script>



<style>
	img{
		width:100%;
	}
	.container{
		width:80%;
		margin-left:10%;
	}
	#uploadBtn button{
		width:100%;
	}
	
</style>
</head>
<%@ include file="../include/menu.jsp" %>

<body>
	
	<div class="container">
		<div style="margin:20px;" id="uploadBtn" class="ui grid">
			<div class="twelve wide column"></div>
			<div class="four wide column">
				<button class="big ui blue button" onClick="clickUploadBtn()">사진올리기</button>
			</div>
		</div>
		<!-- 이미지들어갈곳 -->
		<div class="ui grid three column" id="contentDiv">
			<c:forEach var="dto" items="${list}">				
					<div class="column" >
						<form action="${path}/community.do?comNo=${dto.comNo }" method="post" target="iframe1">
							<label for="submit">								
								<img src="${path }/community/images/${dto.comImage}" onClick="clickImage(event)" />
							</label>
							<!-- <input type="hidden" name="comNo" value="" />		 -->					
							<input id="submit" type="submit" style="display:none;" />
						</form>
					</div>	
			
			</c:forEach>
		
		</div>
		<!--  -->
	</div>
	
	<!-- 이미지모달 --><!-- modal 안은 비어있으니  -->

	<div id="modalDiv">
	
	</div>
	<div class="ui mini modal" >
		<iframe name="iframe1" style="width:100%;height:500px;">			
		</iframe>	 
	</div>
	
	<!-- 이미지모달 -->
	<!-- 업로드 모달 -->
	<div class="ui tiny modal" >
		<div class="header">업로드</div>
		<div class="content">
			<form action="${path}/community/upload.do" method="post" enctype="multipart/form-data">
				<div>
					<label for="comImage">
						<img src="${path}/resources/uploadBtn.png" style="width:50%;margin-left:25%"/>
					</label>
					<input type="file" name="comImage" id="comImage" style="display:none;"/>
				</div>
				<hr/>				
				글내용 
				<input type="text" name="comDes" style="width:100%;height:300px;"/>
				<input type="hidden" name="userid" value="khdrogba"/>
				<div>
					<input type="submit" value="게시" class="ui blue button" style="width:100%"/>	
				</div>
			</form>		
			
		</div>
	</div>
	<!-- 업로드모달 -->
</body>
<script>
	const grid = document.querySelector(".ui.grid");
	

	//이미지 클릭 이벤트
	 function clickImage(e){
		//let comImage = document.querySelector(".comImage");
		//comImage.addEventListener("click",function(){
			//console.log(e.target.id)			
			//comImage.innerHTML = "<div><img src='"+e.target.src+"'/></div>"
			
			setTimeout(function(){
				$(function(){
					$('.ui.mini.modal').modal('show');	
					
				})		
			},1000)
			

	} 
 
	//이미지 업로드 버튼클릭
	function clickUploadBtn(){
		$(function(){
			$('.ui.tiny.modal').modal('show');	
		})
	}
	
		
		
	function init(){


	}
	init();

	
	
	
	
</script>

</html>