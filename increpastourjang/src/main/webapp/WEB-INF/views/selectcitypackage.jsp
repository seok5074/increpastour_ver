<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div>
	<p class="domaplist_title">도시별 패키지</p>
	<div class="subselectcity">
		<c:if test="${ not empty tourPackage }">
			<h2 style="text-align: center;">${ regionName }에해당하는여행패키지</h2>
			<br />
			<c:forEach var="pack" items="${ tourPackage }" varStatus="status">
				<div class="sublist_list">
					<div class="sublist_title">
						<a href="packagedodetail?no=${ pack.do_idx }">${pack.do_name}</a>
						총금액:<fmt:formatNumber	value="${pack.do_price }" pattern="#,###" />원 <br />
					</div>
				</div>

			</c:forEach>
		</c:if>
	</div>
	<c:if test="${ empty tourPackage }">
		<h2 style="text-align: center;">도시를 선택해주세요</h2>
	</c:if>
</div>