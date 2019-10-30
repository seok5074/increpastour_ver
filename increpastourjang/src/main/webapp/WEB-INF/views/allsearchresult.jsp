<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/allresult.css" />
<title>전체 페이지 검색용(임시)</title>
</head>
<body>
	<%@ include file="../templates/header.jsp"%>
	<%@ include file="../templates/searchForm.jsp"%>
	<div class="allsearchform_all">
		<div class="allsearchform_oversea">
			<h2>해외 패키지 검색</h2>
			<div class="allsearchform_oversea_result">?</div>
		</div>
		<div class="allsearchform_domestic">
			<h2>국내 패키지 검색</h2>
			<div class="allsearchform_domestic_result">?</div>
		</div>
		<div class="allsearchform_notice">
			<h2>공지사항 검색</h2>
			<div class="allsearchform_notice_result">?</div>
		</div>
		<div class="allsearchform_board">
			<h2>게시판 검색</h2>
			<div class="allsearchform_board_result">?</div>
		</div>
	</div>
	<%@ include file="../templates/mainBanner2.jsp"%>
	<%@ include file="../templates/footer.jsp"%>
</body>
</html>