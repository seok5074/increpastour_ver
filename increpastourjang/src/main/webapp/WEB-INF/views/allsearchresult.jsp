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
		<div class="allsearchform_notice"></div>
		<div class="allsearchform_domestic"></div>
		<div class="allsearchform_oversea"></div>
	</div>
	<%@ include file="../templates/mainBanner2.jsp"%>
	<%@ include file="../templates/footer.jsp"%>
</body>
</html>