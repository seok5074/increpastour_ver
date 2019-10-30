<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div id="tab_1" class="tab_content current">
	tab02
	<form class="domestic_form" action="" method="get">
		<input id="도시" type="hidden">
		<input id="국가" type="hidden">
		<input id="지역코드" type="hidden">
		<input id="출발년" type="hidden">
		<input id="출발월" type="hidden">
		<input id="출발일" type="hidden">
		<input id="평일/주말" type="hidden">
		<input id="상품등급" type="hidden">
		<div class="quick_search_form">
			<ul>
				<li style="width:100%" class="sub_left">
					<p class="dtravel_title">국내지역도시</p>
					<div class="sel_input_dcity" >
						<input type="text" id="text_search_city" data-palaceholder="도시명을 입력해주세요"
							value="도시명을 입력해주세요">
							<button type="button" title="검색" class="sel_btn" >
							<i class="fa fa-search" ></i>
							</button>
					</div>
				</li>
			</ul>
			<!-- 국내 출발도시 셀렉트메뉴 -->
			<div class="d_depart">
				<ul>
					<li class="d_depart_city">
						<p class="dtravel_title">출발도시</p>
						<div class="selbox_dcity" >
							<select id="selbox_input_dcity" onchange="cutySelect(this.value);">
								<option value="seoul">서울(인천/김포)</option>
								<option value="busan">부산</option>
								<option value="daegu">대구</option>
								<option value="chonju">청주</option>
								<option value="jeju">제주</option>
								<option value="kangwon">강원</option>
							</select>
						</div>
					</li>
				</ul>
				
				<!-- 국내 출발일 지정 셀렉트메뉴 -->
				<!-- for문을사용? 현재날짜와 대응해서 월이나오게 강구하기!! -->
				<ul>
					<li class="d_depart_date">
						<p class="dtravel_title">출발월</p>
						<div class="selbox_depart_date" >
							<select id="selbox_input_depart_date" onchange="dateSelect(this.value);">
								<option value="seoul">서울(인천/김포)</option>
								<option value="busan">부산</option>
								<option value="daegu">대구</option>
								<option value="chonju">청주</option>
								<option value="jeju">제주</option>
								<option value="kangwon">강원</option>
							</select>
						</div>
					</li>
				</ul>
			</div>
			
			<!-- 출발요일 체크박스-->
			<div class="d_depart_week">
				<p class="dtravel_title" style="float:left; padding-right:15px;">출발요일</p>
				<ul>
					<li style="float:left; padding-right:15px;">
						<input type="checkbox" id="ck_week">
						<label for="ck_weekday" class="checkbox_week">평일</label>
					</li>
					<li style="float:left;">
						<input type="checkbox" id="ck_week" value=checked>
						<label for="ck_weekend" class="checkbox_week">주말</label>
					</li>
				</ul>
			</div>	
			
			
			<!-- 상품등급 체크박스-->
			<div class="d_depart_package">
				<p class="dtravel_title" style="float:left; padding-right:15px;">상품등급</p>
				<ul>
					<li style="float:left; padding-right:15px;">
						<input type="checkbox" id="ck_superpremium">	
						<label for="ck_superpremium" class="checkbox_superpremium">슈퍼프리미엄</label>
					</li>
					<li style="float:left;">
						<input type="checkbox" id="ck_premium" value=checked>
						<label for="ck_premium" class="checkbox_premium">프리미엄팩</label>
					</li>
					<li style="float:left;">
						<input type="checkbox" id="ck_economy" value=checked style="margin-left:79px;" >	
						<label for="ck_economy" class="checkbox_economy" >이코노미팩</label>
					</li>
				</ul>
			</div>	
			
		</div>
	</form>
</div>
