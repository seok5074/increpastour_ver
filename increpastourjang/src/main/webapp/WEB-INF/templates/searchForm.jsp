<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="resources/css/searchForm.css"/>

<script>

	/* 시간 인터벌 갱신하는 뿽션입니다.  */
	$(document).ready(function(){
		var count = $('.rankBox p').length;
		var height = $('.rankBox p').height();
		var step = 0 ;
		
		/* 실시간 검색순위 데이터베이스에서 가져오는 뿽션입니다. */
/* 		setinterval(searchRack,10000);
		function searchRank(){
			$.ajax({
				type:"GET",
				url:'/searchRank',
				error:function(){
					alert("순위갱신 ajax오류")
				},
				seccess:function(responseData){
					$.each(data,function(index,item){
						var rank ='$("#rTimeRank'+index+'")'
						var keyword ='$("#rTimeText'+index+'")'
						rank.html(index)
						keyword.html(item.keyword)
						if (index>=5){
							break;
						}
					});
				}
				
			});
		} */
		
		
		
		setInterval(update,6000);
		function update(){
			$(".rankBox").animate({
			marginTop:-height*step},100,'linear'
			);
			$(".rankTextBox").animate({
				marginTop:-height*step},100,'linear'
				);
			step += 1
			if(step >= count){
				step = 0;
			}
		}
	});
	
	
	

</script>
<article>
	<div class="search">
		<form class="searchForm" action="파라미터 보낼 곳을 적어주세요" >
			<div class="searchBar">
				<input class="searchText" type="text" placeholder="검색어를 입력하세요">
				<button class="searchButton" type="submit">검색</button>
			</div>
		</form>
		<div class="rTime">
			<i class="fa fa-caret-up" aria-hidden="true">3</i>
			
			<div class="rankBox">
				<p class="rTimeRank1" id="rTimeRank1">$db.rank1 .</p>
				<p class="rTimeRank2" id="rTimeRank2">$db.rank2 .</p>
				<p class="rTimeRank3" id="rTimeRank3">$db.rank3 .</p>
				<p class="rTimeRank4" id="rTimeRank4">$db.rank4 .</p>
				<p class="rTimeRank5" id="rTimeRank5">$db.rank5 .</p>
			</div>
			<div class="rankTextBox">
				<p class="rTimeText" id="rTimeText1">실시간인기검색어1 ajax </p>
				<p class="rTimeText" id="rTimeText2">실시간인기검색어2 ajax </p>
				<p class="rTimeText" id="rTimeText3">실시간인기검색어3 ajax </p>
				<p class="rTimeText" id="rTimeText4">실시간인기검색어4 ajax </p>
				<p class="rTimeText" id="rTimeText5">실시간인기검색어5 ajax </p>
			</div>
			</div>
	</div>
</article>