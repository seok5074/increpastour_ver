<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="resources/css/mainBanner2.css"/>
<script>

	$(document).ready(function(){
		var step = 1;
		
		$(".rightBox").css('background-image','url("resources/images/1.png")');
		$("#select1").css('color','#fff');
		
		$("#select1").hover(function(){
			$(".select").css("color",'#ffffff91');
			$("#select1").css('color','#fff');
			$(".leftBox").css('background','#652dd2');
			$(".rightBox").css('background-image','url("resources/images/1.png")');
		});
		$("#select2").hover(function(){
			$(".select").css("color",'#ffffff91');
			$("#select2").css('color','#fff');
			$(".leftBox").css('background','#2dbbd2');
			$(".rightBox").css('background-image','url("resources/images/2.png")');
		});
		$("#select3").hover(function(){
			$(".select").css("color",'#ffffff91');
			$("#select3").css('color','#fff');
			$(".leftBox").css('background','#2dd2ac');
			$(".rightBox").css('background-image','url("resources/images/3.png")');
		});
		$("#select4").hover(function(){
			$(".select").css("color",'#ffffff91');
			$("#select4").css('color','#fff');
			$(".leftBox").css('background','#d24b2d');
			$(".rightBox").css('background-image','url("resources/images/4.png")');
		});
		
		setInterval(Interval,7000);
		
		function Interval(){
			if(step==1){
				$(".select").css("color",'#ffffff91');
				$("#select1").css('color','#fff');
				$(".leftBox").css('background','#652dd2');
				$(".rightBox").css('background-image','url("resources/images/1.png")');
			}else if(step==2){
				$(".select").css("color",'#ffffff91');
				$("#select2").css('color','#fff');
				$(".leftBox").css('background','#2dbbd2');
				$(".rightBox").css('background-image','url("resources/images/2.png")');
			}else if(step==3){
				$(".select").css("color",'#ffffff91');
				$("#select3").css('color','#fff');
				$(".leftBox").css('background','#2dd2ac');
				$(".rightBox").css('background-image','url("resources/images/3.png")');
			}else if(step==4){
				$(".select").css("color",'#ffffff91');
				$("#select4").css('color','#fff');
				$(".leftBox").css('background','#d24b2d');
				$(".rightBox").css('background-image','url("resources/images/4.png")');
			}
			
			step++;
			
			if(step==5){
				step = 1;
			}
		}
	});

</script>
<article>
	<div class="mainBox">
		<div class="leftBox">
			<div class="selectBox">
				<div class="select" id="select1">
					<p>낭만도시로 떠나는 여행 <br>399,000원~</p>
					<i></i>
				</div>
				<div class="select" id="select2">
					<p>하노이 리조트 대특가<br>이벤트대특가!!</p>
					<i></i>	
				</div>
				<div class="select" id="select3">
					<p>포인트 대전 <br>매주 월요일 2배데이</p>
					<i></i>
				</div>
				<div class="select" id="select4">
					<p>이탈리아 시칠리 패키지<br>1290,000원~<p>
					<i></i>	
				</div>
			</div>
		</div>
		<div class="rightBox">
			<div class="leftClick"><</div>
			<div class="rightClick">></div>
		</div>
	
	</div>

</article>