<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="resources/css/packageSelect.css" />
<script>
	$(document).ready(function() {

		$("#textForm1").hover(function() {
			$(this).animate({
				marginTop : 150
			}, 100, "linear")
			$("#backImg1").css('filter','opacity(0.5)')
		}, function() {
			$(this).animate({
				marginTop : 255
			}, 100, 'linear')
			$("#backImg1").css('filter','none')
		});
		$("#textForm2").hover(function() {
			$(this).animate({
				marginTop : 150
			}, 100, "linear")
			$("#backImg2").css('filter','opacity(0.5)')
		}, function() {
			$(this).animate({
				marginTop : 255
			}, 100, 'linear')
			$("#backImg2").css('filter','none')
		});
		$("#textForm3").hover(function() {
			$(this).animate({
				marginTop : 150
			}, 100, "linear")
			$("#backImg3").css('filter','opacity(0.5)')
		}, function() {
			$(this).animate({
				marginTop : 255
			}, 100, 'linear')
			$("#backImg3").css('filter','none')
		});
		$("#textForm4").hover(function() {
			$(this).animate({
				marginTop : 150
			}, 100, "linear")
			$("#backImg4").css('filter','opacity(0.5)')
		}, function() {
			$(this).animate({
				marginTop : 255
			}, 100, 'linear')
			$("#backImg4").css('filter','none')
		});
		$("#textForm5").hover(function() {
			$(this).animate({
				marginTop : 150
			}, 100, "linear")
			$("#backImg5").css('filter','opacity(0.5)')
		}, function() {
			$(this).animate({
				marginTop : 255
			}, 100, 'linear')
			$("#backImg5").css('filter','none')
		});
	
		
	/*----------------------여기서부터는 라이트 배너---------------------------------  */
		
		var step = 1;
		var length =$('.banner').length;
		var width = $('.banner').width()+10;
		var height =$('.banner').height();
		var num;
		var index = 0;
		
		setInterval(skip,10000);
		
	
		$("#lBtn").click(function(){
			
			
			skip();
		});
		
		$("#rBtn").click(function(){
			
			index = length - step;
			num= $("#banner" + step)
			
			
			slideRight();
			
		});
		
	/*-------인터벌이랑 같이쓸려고 skip함수로 slideLeft를 공유했음-----------  */
	/*-----------------skip() == slideLeft() 같은함수입니다.------------  */
		function skip(){ 
			
		index = length - step;
			num= $("#banner" + step)
			
			slideLeft()
			
			}
		
		function slideLeft(){
			
			
			num.animate({marginLeft:-width},200,"swing", function() {
				
			num.css("z-index", index);	
			
			$(this).css('margin-left','0px');
			
			if(step == 3 ){
				
				$("#banner1").css('z-index','5'); 
				$("#banner2").css('z-index','4'); 
				$("#banner3").css('z-index','3'); 
				step = 0;
				index = 0;
				index = length - step;
				
			}
			step++;
		});
		}
		function slideRight(){
				num.animate({marginLeft:width},200,"swing",function(){
				num.css('z-index',index);
				num.css('margin-left','0px');
				
				if(step==3){
					
					$("#banner1").css('z-index','5'); 
					$("#banner2").css('z-index','4'); 
					$("#banner3").css('z-index','3'); 
					step = 0;
					index = 0;
					index = length - step;
				}
				step++;
				
			});
		}
	});
</script>
<article>
	<div class="mainForm">
		<div class="leftBanner">
			<div class="menu">
				<div class="menuSub1">
					<p>당신께 추천하는 패키지</p>
				</div>
				<div class="menuSub2">
					<p class="esAsia">동남아</p>
					<p class="eu">유럽/남태평양</p>
					<p class="japan">일본</p>
					<p class="america">미주/중남미</p>
					<p class="mediSea">지중해</p>
					<p class="domestic">국내</p>
				</div>
			</div>
			<div class="subForm" id="subForm1">
				<div class="backImg" id="backImg1"></div>
				<div class="no">Top.1</div>
				<div class="textForm" id="textForm1">
					<p id="title">
						뉴질랜드남북섬<br>낭만으로 떠나자
					</p>
					<p id="explain">
						어서와요 소의나라 뉴질랜드로!<br>소농장 체험 특가<br>패키지
					</p>
					<div class="button">
						<a href="링크를넣어주세요">상품보기></a>
					</div>
				</div>
			</div>
			<div class="subForm" id="subForm2">
				<div class="backImg" id="backImg2"></div>
				<div class="no">Top.2</div>
				<div class="textForm" id="textForm2">
					<p id="title">상품제목</p>
					<p id="explain">상품설명</p>
					<div class="button">
						<a href="링크를넣어주세요">상품보기></a>
					</div>
				</div>
			</div>
			<div class="subForm" id="subForm3">
				<div class="backImg" id="backImg3"></div>
				<div class="no">Top.3</div>
				<div class="textForm" id="textForm3">
					<p id="title">상품제목</p>
					<p id="explain">상품설명</p>
					<div class="button">
						<a href="링크를넣어주세요">상품보기></a>
					</div>
				</div>
			</div>
			<div class="subForm" id="subForm4">
				<div class="backImg" id="backImg4"></div>
				<div class="no">Top.4</div>
				<div class="textForm" id="textForm4">
					<p id="title">상품제목</p>
					<p id="explain">상품설명</p>
					<div class="button">
						<a href="링크를넣어주세요">상품보기></a>
					</div>
				</div>
			</div>
			<div class="subForm" id="subForm5">
				<div class="backImg" id="backImg5"></div>
				<div class="no">Top.5</div>
				<div class="textForm" id="textForm5">
					<p id="title">상품제목</p>
					<p id="explain">상품설명</p>
					<div class="button">
						<p>상품보기></p>
					</div>
				</div>
			</div>
		</div>
		<div class="rightBanner">
			<div class="bannerBox">
				<div class="banner" id="banner3"></div>
				<div class="banner" id="banner2"></div>
				<div class="banner" id="banner1"></div>
			</div>
			<div class="btn" id="lBtn">
				<i class="fa fa-chevron-circle-left fa-3x"></i>
			</div>
			<div class="btn" id="rBtn">
				<i class="fa fa-chevron-circle-right fa-3x"></i>
			</div>
		
		</div>
	</div>
</article>