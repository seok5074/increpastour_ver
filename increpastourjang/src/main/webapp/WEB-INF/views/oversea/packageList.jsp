<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>해외 여행 상품 목록</title>
<link rel="stylesheet" type="text/css" href="resources/css/test.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/board/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/board/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/board/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="resources/board/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="resources/board/vendor/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css" href="resources/board/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/board/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript">
	var selectContines = {
		eu : ["그리스", "네덜란드", "노르웨이", "덴마크", "독일", "러시아", "루마니아", "벨기에", "보스니아",
			"스웨덴", "스페인", "스위스", "아일랜드", "영국", "우크라이나", "오스트리아", "이탈리아", "체코", 
			"크로아티아", "터키", "포르투갈", "폴란드", "프랑스", "핀란드", "헝가리"],
		asia :["일본", "중국", "대만", "몽골", "네팔", "말레이시아", "몰디브", "베트남", "싱가폴", "인도","인도네시아",
			"캄보디아", "태국", "이란", "이스라엘", "사우디아라비아", "아랍에메리트", "카타르"],
		na : ["캐나다", "미국", "멕시코"],
		oceania : ["호주", "뉴질랜드"]
	}
	function changeNats(value){
		if (value.length == 0)
			document.getElementById("nations").innerHTML = "<option></option>";
		else {
			var chaNats = "";
			for (natNames in selectContines[value]) {
				chaNats += "<option>" + selectContines[value][natNames]
						+ "</option>";
			}
			document.getElementById("nations").innerHTML = chaNats;
		}
	}
	
	var map;
    function initMap() {
      map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -34.397, lng: 150.644},
        zoom: 8
      });
    }
	
  </script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0pFRjZzAh1-19xnNgPNpvD63bqD8HflY&callback=initMap"
    async defer></script>
		<!-- // AIzaSyB7zPa9eEDWv7vqQ3SNjwf-hzuqRKcxDuI
		// AIzaSyC0pFRjZzAh1-19xnNgPNpvD63bqD8HflY -->
		<!-- AIzaSyC0pFRjZzAh1-19xnNgPNpvD63bqD8HflY -->
<style type="text/css">
 #map {
        height: 100%;
      }
</style>
</head>
<body>
  <div id="map"></div>
	<div class="limiter">
		<div class="container-table100">
			<form action="packageList" method="get">
				<select id="contine" name="contine" onchange="changeNats(this.value);">
					<optgroup label="대륙">
						<option disabled selected>대륙을 선택하세요.</option>
						<option value="eu">유럽</option>
						<option value="asia">아시아</option>
						<option value="na">북중미</option>
						<option value="oceania">오세아니아</option>
					</optgroup>
				</select> 
				<select id="nations" name="package_tour_natname">
					<!-- 대륙이 선택되면 채워짐. -->
					<option disabled selected>나라를 선택하세요.</option>
				</select>
				<input type="submit" style="width: 100%; border: 1px solid #000;" value="검색">
			</form>
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<c:if test="${!empty packageList }">
						<div class="table100-head">
							<table>
								<thead>
									<tr class="row100 head">
										<th class="cell100 column1">상품번호</th>
										<th class="cell100 column2">패키지 이름</th>
										<th class="cell100 column3">시작일 ~ 끝나는 일</th>
										<th class="cell100 column4">패키지 가격</th>
										<th class="cell100 column5">출발 - 도착</th>
										<th class="cell100 column6">상태</th>
									</tr>
								</thead>
							</table>
						</div>
						<div class="table100-body js-pscroll">
							<table>
								<tbody>
									<c:forEach var="pack" items="${ packageList }"
										varStatus="status">
										<tr class="row100 body"
											onclick="location.href='overSeaPackageDetail?package_tour_idx=${pack.package_tour_idx }'">
											<td class="cell100 column1">${pack.package_tour_idx }</td>
											<td class="cell100 column2">${pack.package_tour_name }</td>
											<td class="cell100 column3">
												${pack.package_tour_start_date }~${pack.package_tour_start_date }
												(총 ${pack.package_tour_total }일)</td>
											<td class="cell100 column4"><fmt:formatNumber
													value="${pack.package_tour_price }" pattern="#,###" />원~</td>
											<td class="cell100 column5">${pack.package_tour_start }-${pack.package_tour_arrive }
											</td>
											<td class="cell100 column6">${pack.package_tour_status }
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						</c:if>
				</div>
			</div>
		</div>
	</div>

	<c:if test="${empty packageList }">
				값이 존재하지 않습니다.
			</c:if>
	<div class="s003">
		<form>
			<div class="inner-form">
				<div class="input-field first-wrap">
					<div class="input-select">
						<select data-trigger="" name="category">
							<option>상품번호</option>
							<option>패키지 이름</option>
							<option>도착지점</option>
						</select>
					</div>
				</div>
				<div class="input-field second-wrap">
					<input id="search" type="text" placeholder="검색어를 입력해주세요." />
				</div>
				<div class="input-field third-wrap">
					<button class="btn-search" type="submit">
						<svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true"
							data-prefix="fas" data-icon="search" role="img"
							xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
               				 <path fill="currentColor"
								d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
              				</svg>
					</button>
				</div>
			</div>
		</form>
	</div>
	<!-- select 관련 js-->
	<script src="resources/board/js/extention/choices.js"></script>
	<script>
		const choices = new Choices('[data-trigger]', {
			searchEnabled : false,
			itemSelectText : '',
		});
	</script>
</body>
</html>