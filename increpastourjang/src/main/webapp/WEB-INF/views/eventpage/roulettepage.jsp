<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>룰렛 페이지</title>
<link rel="stylesheet" type="text/css" href="resources/css/main.css"/>
</head>
<body>
	<%@ include file="../../templates/header.jsp"%>
	<%@ include file="../../templates/searchForm.jsp" %>
	<h1>룰렛</h1>
	<input type="button" value="목록보기"
		onclick="javascript:window.location.href='eventpage'" />
	<%@ include file="../../templates/footer.jsp"%>
</body>
</html>