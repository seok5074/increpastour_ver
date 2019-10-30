<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 네이버 지도 API -->
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=frtfrv8k5d"></script>
<script src="resources/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="resources/js/examples-base.js"></script>
<script type="text/javascript" src="resources/js/highlight.min.js"></script>
<script type="text/javascript" src="resources/js/MarkerClustering.js"></script>
<script>
	$(document).ready(function() {
		mapapi();
		selectcitypackage();

		$(".do_tab1").click(function() {
			clickMenu1();
		});
		$(".do_tab2").click(function() {
			clickMenu2();
		});
		/* 메뉴1 클릭하면 보여줄 화면  */
		function clickMenu1() {
			$.ajax({
				type : 'GET',
				url : 'clickMenu1',
				success : function(data) {
					$('.submapapi').html(data);
				},
				error : function() {
					alert("지도목록 불러오기 실패!!!")
				}
			});

		}
		/* 메뉴2 클릭하면 보여줄 화면 */
		function clickMenu2() {
			$.ajax({
				type : 'GET',
				url : 'clickMenu2',
				success : function(data) {
					$('.submapapi').html(data);
				},
				error : function() {
					alert("도시목록 불러오기 실패!!!")
				}
			});

		}
		/* mapapi 초기화 (처음킬때화면)  */
		function mapapi() {
			$.ajax({
				type : 'GET',
				url : 'mapapi',
				success : function(data) {
					$(".submapapi").html(data)
				},
				error : function() {
					alert("ajax 불러오기 실패!!!")
				}
			});
		}
		/* 도시별 패키지 목록 출력(처음 킬때) */
		function selectcitypackage() {
			$.ajax({
				type : 'GET',
				url : 'selectcitypackage',
				success : function(data) {
					$(".domaplist").html(data)
				},
				error : function() {
					alert("ajax 불러오기 실패!!!")
				}
			});
		}
	});
</script>
<script>
	var HOME_PATH = 'resources/';
</script>
<script>
	var result = ${ jsonStr } // [{"num": 10 }]

	var data = result[0]
</script>
<title>국내메인페이지</title>
</head>
<body>
	<div class="domain">
		<!-- <div class="domesitcmainimg"></div> -->
		<ul class="do_menu">
			<li class="do_tab1">지도</li>
			<li class="do_tab2">도시</li>
		</ul>
		<div class="submapapi"></div>
		<div class="domaplist"></div>
	</div>
	<div class="warntitle">※현재 진행중인 패키지목록을 보여주고있습니다.</div>
	<div class="banner">
		<div class="banner-do">
			<a href="eventpage">이벤트 페이지 입니다.</a>
		</div>
	</div>
	<div class="maindolisttitle">
		<h2>
			<a href="packagedoList">국내패키지</a>
		</h2>
		&nbsp;<a>추천순</a>/<a>최신순</a>
	</div>
	<div class="maindolist">
		<div class="main_box">
			<c:if test="${!empty package_do_List }">
				<c:forEach var="pack" items="${ package_do_List }"
					varStatus="status">
					<div class="visit_type">
						<img alt="대표 이미지" src="${pack.do_thumbnail}" class="thumimage">
						<h2>
							<a class="do_title" href="packagedodetail?no=${ pack.do_idx }">${pack.do_name}</a>
						</h2>
						<p class="do_theme">테마여행 : ${pack.do_theme}</p>
						출발날짜:${pack.do_start_date}<br /> 도착날짜 : ${pack.do_end_date} <br />
						총 여행일자:${pack.do_total}
						<p class="tot_price"><fmt:formatNumber	value="${pack.do_price }" pattern="#,###" />원</p>
						
					</div>
				</c:forEach>
				<br />
			</c:if>
			<c:if test="${empty package_do_List }">
			값이 존재하지 않습니다.
		</c:if>
		</div>
	</div>
</body>
</html>
