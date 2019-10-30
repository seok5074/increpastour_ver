<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/css/header.css"/>
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<script>
	$(document).ready(function(){
		var count =$('.vipBox p').length;
		var height = $('.vipBox p').height();
		var step = 0 ;
		var toggle= 1;
		
		setInterval(update,10000);
		
		function update(){
			$('.vipBox').animate({
				marginTop:-(height+4)*step},100,'linear'
				);
			step += 1
			if(step >= count){
				step = 0
			}
		}
		
		
		$(".btn_menu").click(function(){
			
			
			if(toggle%2 != 0){
				$(".hiddenMenu").animate({
					height:450},50,'linear');
				
				
			}
			
			if(toggle%2 == 0){
				$(".hiddenMenu").animate({
					height:0},50,'linear');
				
			}
			
			toggle +=1 ;
			if(toggle==3){
				toggle=1;
			}
			
			
		});
		
	});
</script>
<header>
		<div class="ibackground">
		<!-- https://fontawesome.com/v4.7.0/icons/#currency 적용  fonts폴더에있는파일들이랑 css폴더의 font-awsome.min.css 파일로 적용시킴
			적용방법 class 네임으로 적용 fa fa-name 왠만한 단어를넣으면 거의 있음 아니면 fontawesome.com에서 검색으로 아이콘을찾아주세요 
		
		-->
		<!-- 제일 탑부분의 아이콘 8개 부분중 왼쪽입니다 -->
			<div class="liconSection">
				<i class="fa fa-bus" aria-hidden="true"><a href="링크주소넣어주세요"></a></i>
				<i class="fa fa-car" aria-hidden="true"><a href="링크주소넣어주세요"></a></i>
				<i class="fa fa-ship" aria-hidden="true"><a href="링크주소넣어주세요"></a></i>
				<i class="fa fa-plane" aria-hidden="true"><a href="링크주소넣어주세요"></a></i>
			</div>
			
			<!-- 제일 탑부분의 아이콘 8개 부분중 오른쪽입니다 -->
			<div class="riconSection">
			<a href="allsearchresult"><i class="fa fa-gift" aria-hidden="true"></i> </a>
			<i class="fa fa-shopping-cart" aria-hidden="true"><a href="링크주소넣어주세요"></a></i> 
			<i class="fa fa-envelope-open" aria-hidden="true"><a href="링크주소넣어주세요"></a></i> 
			<i class="fa fa-user-circle-o" aria-hidden="true"><a href="링크주소넣어주세요"></a></i> 
			</div>
		</div>
		
		
		
		<div class="container">
			<div class="left_menu ">
				<a href="#">기획전</a>
				<a href="#">여행전</a>
				<a href="#">이벤트대전</a>
				<a href="#">여행정보</a>
				<a href="#">기업여행</a>
			</div>
			<div class="logo">		
				<a href="start">
				<img src="resources/images/logotest3.png" alt="logo" width="300px" height="100px" /></a>
			</div>
			<div class="right_menu">
			<a href="#">로그인</a>
			<a href="#">회원가입</a>
			<a href="#">예약확인/결제</a>
			<a href="#">고객센터</a>
			</div>	
		</div>
		
		<!-- 오른쪽 고정메뉴입니다. -->
		<button type="button" class="btn_menu" >
			<i class="bar">
				
			</i>
			
			<span class="blind">전체메뉴</span>
		</button>
		<div class="hiddenMenu">
			<div class="hiddenMenuButton">
				<i class="fa fa-folder" aria-hidden="true"></i>
				<a href="링크주소를 넣어주세요">발권/조회</a>
			</div>
			<div class="hiddenMenuButton">
				<i class="fa fa-folder" aria-hidden="true"></i>
				<a href="링크주소를 넣어주세요">Shopping</a>
			</div>
			<div class="hiddenMenuButton">
				<i class="fa fa-folder" aria-hidden="true"></i>
				<a href="링크주소를 넣어주세요">장바구니</a>
			</div>
			<div class="hiddenMenuButton">
				<i class="fa fa-folder" aria-hidden="true"></i>
				<a href="링크주소를 넣어주세요">패키지</a>
			</div>
		</div>
		<!-- 여기까지 오른쪽 고정메뉴입니다. -->
		
		<!-- 실시간순위등 ajax 처리해야할부분입니다. -->
		<div class="searchSection">
			<div class="vipForm">
				<div class="vipFormBox">
					<i class="fa fa-caret-up" aria-hidden="true">1</i>
					&nbsp;
					<div class="vipBox">
						<p class="vip1">흑우왕1ajax 여기다가쓰세요</p>
						<p class="vip2">흑우왕2ajax 여기다가쓰세요</p>
						<p class="vip3">흑우왕3ajax 여기다가쓰세요</p>
						<p class="vip4">흑우왕4ajax 여기다가쓰세요</p>
						<p class="vip5">흑우왕5ajax 여기다가쓰세요</p>
					</div>
				</div>
			</div>
			<div class="noticeForm">
				<p class="notice">공지사항ajax 여기다가써주세요</p>
			</div>
		</div>
		<!-- 여기까지 실시간순위등 ajax 처리해야할부분입니다. -->
</header>