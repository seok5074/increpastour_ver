<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${package_do_tour_VO.do_name}</title>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/domesticdetail.css" />
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
</head>
<form name="checkForm" id="checkForm">
	<input type="hidden" name="no" id="no"
		value="${ package_do_tour_VO.do_idx }" />
</form>
<body>
	<%@ include file="../../templates/header.jsp"%>
	<%@ include file="../../templates/searchForm.jsp"%>
	<div class="detailmain">
		<div class="detailimg">
			<img alt="대표 이미지" src="${package_do_tour_VO.do_thumbnail}"
				class="detailimg_top">
			<div class="detailcontent">
				<div class="detailcontent_title">
					<h2>${ package_do_tour_VO.do_name }</h2>
				</div>
				<div class="detailcontent_content">${ package_do_tour_VO.do_contents }
				</div>
				<ul class="detailcontent_list">
					<li>여행기간 : ${ package_do_tour_VO.do_total }일</li>
					<li>여행도시 : ${ package_do_tour_VO.do_arrive }</li>
					<li>이동수단 : <c:if test="${ package_do_tour_VO.do_bus eq 'true'}">버스</c:if></li>
								<c:if test="${ package_do_tour_VO.do_air eq 'true'}">비행기</c:if>
					<li>예약가능 : ${ package_do_tour_VO.do_status }</li>
				</ul>
				<div class="detail_tot">
					<h5>총금액 : ${ package_do_tour_VO.do_price }원</h5>
				</div>
			</div>
		</div>
	</div>
	<table class="detailinformation">
		<tr>
			<th scope="row">출발날짜</th>
			<td>${ package_do_tour_VO.do_start_date }</td>
			<th scope="row">도착날짜</th>
			<td>${ package_do_tour_VO.do_end_date }</td>
			<th scope="row">여행일수</th>
			<td>${ package_do_tour_VO.do_total}일</td>
		</tr>
		<tr>
			<th scope="row"><c:if test="${ package_do_tour_VO.do_bus eq 'true'}">이동수단</c:if>
								<c:if test="${ package_do_tour_VO.do_air eq 'true'}">이동수단</c:if></th>
			<td><c:if test="${ package_do_tour_VO.do_bus eq 'true'}">버스</c:if>
				<c:if test="${ package_do_tour_VO.do_air eq 'true'}">비행기</c:if></td>
			<th scope="row"><c:if test="${ package_do_tour_VO.do_bus eq 'true'}">버스회사</c:if>
								<c:if test="${ package_do_tour_VO.do_air eq 'true'}">비행기회사</c:if></th>
			<td><c:if test="${ package_do_tour_VO.do_bus eq 'true'}">${ package_do_tour_VO.do_busagency }</c:if>
				<c:if test="${ package_do_tour_VO.do_air eq 'true'}">${ package_do_tour_VO.do_airagency }</c:if></td>
			<th scope="row"><c:if test="${ package_do_tour_VO.do_bus eq 'true'}">버스종류</c:if>
							<c:if test="${ package_do_tour_VO.do_air eq 'true'}">비행기종류</c:if></th>
			<td><c:if test="${ package_do_tour_VO.do_bus eq 'true'}">${ package_do_tour_VO.do_busclass }</c:if>
				<c:if test="${ package_do_tour_VO.do_air eq 'true'}">${ package_do_tour_VO.do_airclass }</c:if></td>
		</tr>
		<tr>
			<th scope="row">호텔 급</th>
			<td>${ package_do_tour_VO.do_hotel_class }</td>
			<th scope="row">테마</th>
			<td>${ package_do_tour_VO.do_theme }</td>
			<th scope="row">담&nbsp;당&nbsp;자</th>
			<td>${ package_do_tour_VO.do_manager }</td>
		</tr>
	</table>
	<div class="detailbuypackage">
		<button class="button button1">구매하기</button>
		<button class="button button2">장바구니</button>
	</div>
	<div class="detailmainimg">
		<img src="resources/images/detailtest.jpg" class="detailmainimg_img">
	</div>
	<%@ include file="../../templates/mainBanner2.jsp"%>
	<%@ include file="../../templates/footer.jsp"%>
</body>
</html>