<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${packageDetail.package_tour_name} 상세보기</title>
<link rel="stylesheet" type="text/css" href="resources/css/test.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="contents">
		<!--  이미지 업로드 후 여기에 출력 -->
		<c:if test="${packageDetail.package_tour_status =='예매불가능'}">
			<script type="text/javascript">
				alert("예매가 불가능한 상품입니다.");
				history.go(-1);
			</script>
		</c:if>
		<img alt="thumbnail" src="resources/images/thumbnail/example.png" width="570" height="350">
		<div class="detailContents">
			상품 번호 : ${packageDetail.package_tour_idx} <br/>
			패키지 이름 : ${packageDetail.package_tour_name} <br/>
			출발 지역 : ${packageDetail.package_tour_start} <br/>
			도착 지역 : ${packageDetail.package_tour_arrive} (${packageDetail.package_tour_natname})<br/>
			일정 : ${packageDetail.package_tour_start_date} ~ ${packageDetail.package_tour_end_date} 
			총${packageDetail.package_tour_total}일<br/>
			상태 : ${packageDetail.package_tour_status}<br/>
			가격 : <fmt:formatNumber value="${packageDetail.package_tour_price}" pattern="#,###" />원
		</div> 
		<div>
			<c:if test="${packageDetail.package_tour_status =='예매가능'}">
				<input type="button" onclick="" value="예매하기" class="statusPossible btn btn-secondary">
				<input type="button" onclick="" value="장바구니에 추가" class="statusPossible btn btn-dark">
			</c:if>
			<c:if test="${packageDetail.package_tour_status !='예매가능'}">
				<input type="button" value="예매가 불가능한 상품입니다." disabled="disabled" class="statusImpossible btn btn-secondary">
			</c:if>
		</div>
		<div>
			${packageDetail.package_tour_contents }<br/>
			${packageDetail.package_tour_image }
		</div>
	</div>
	
</body>
</html>