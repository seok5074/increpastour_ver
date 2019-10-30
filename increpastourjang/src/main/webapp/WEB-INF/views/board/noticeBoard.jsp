<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css" href="resources/css/board.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="icon" type="image/png" href="resources/board/images/icons/favicon.ico" /> -->
<link rel="icon" type="image/png" href="resources/images/favicon.png">
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<link rel="stylesheet" type="text/css" href="resources/css/test.css" />
<title>공지사항</title>
</head>
<body>
	<%-- 
		<%@ include file="../templates/header.jsp"%>
		<%@ include file="../templates/footer.jsp"%>
	 --%>
	 <div class="contents">
	 	<table>
	 		<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:if test="${!empty noticeBoardList }">
					<c:forEach var="nb" items="noticeBoardList">
						<tr>
							<td>${nb.n_board_idx}</td>
							<td>${nb.n_board_title}</td>
							<td>${nb.n_board_writer}</td>
							<td>${nb.n_board_regDate}</td>
							<td>${nb.n_board_views}</td>
						</tr>
					</c:forEach>
				</c:if>
			<c:if test="${empty noticeBoardList }">
				<tr>
					<td colspan="5">공지사항 글이 존재하지 않습니다.</td> 
				</tr>
			</c:if>
		</table>
		<input type="button" onclick="location.href='insertNoticeBoard'" value="공지사항 등록하러 가기">
		<c:if test="">
			<input type="button" onclick="location.href='insertNoticeBoard'" value="공지사항 등록하러 가기">
		</c:if>
	</div>
</body>
</html>