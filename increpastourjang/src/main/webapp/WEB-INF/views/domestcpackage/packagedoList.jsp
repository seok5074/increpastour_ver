<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국내 패키지 전체 모음</title>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/doListmain.css" />
</head>
<body>
	<%@ include file="../../templates/header.jsp"%>
	<%@ include file="../../templates/searchForm.jsp"%>
	<div class="content-section">
		<c:if test="${!empty package_do_List }">
			<div class="ui_tabs_wrap">
				<c:forEach var="pack" items="${ package_do_List }"
					varStatus="status">
					<a href="packagedodetail?no=${ pack.do_idx }">
						<ul class="merchandise">
							<li><span class="img"><img src="${pack.do_thumbnail}"
									alt=""></span>
								<div class="info">
									<span class="text">${pack.do_name}</span> <span class="price"><fmt:formatNumber
											value="${pack.do_price }" pattern="#,###" />원</span>
								</div></li>
						</ul>
					</a>
				</c:forEach>
			</div>

		</c:if>
		<c:if test="${empty package_do_List }">
			값이 존재하지 않습니다.
		</c:if>
	</div>
	<%@ include file="../../templates/footer.jsp"%>
</body>
</html>