<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/css/bodyMenu.css"/>
<script src="resources/js/dtravel.js"></script>
<script src="resources/js/ostravel.js"></script>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="mainBody">
		<div class="mainBodyImg">
		</div>
		<div class="subAdd1">
			<div class="subHead">
				<a class="sublink" href="domestcpackage">-국내 패키지투어- ECO Pack <span
					class="btn_link">메인가기</span>
				</a>
			</div>
			<div class="tab_container current">
				<ul class="tabs">
					<li class="tab_link" id="tab_1" data-tab="tab01">메뉴1</li>
					<li class="tab_link" id="tab_2" data-tab="tab02">메뉴2</li>
					<li class="tab_link" id="tab_3" data-tab="tab03">메뉴3</li>
				</ul>
				<div class="d_travel_content" id="d_travel_content"></div>
			</div>
		</div>
		
		<div class="subAdd2">
			<div class="subHeadOs">
				<a class="sublink" href="packageList">-해외 패키지투어- ECO Pack <span>
					class="btn_link">메인가기</span>
				</a>
			</div>
			<div class="tab_container current">
				<ul class="tabs">
					<li class="osTab_link" id="osTab_1" data-tab="osTab01">메뉴1</li>
					<li class="osTab_link" id="osTab_2" data-tab="osTab02">메뉴2</li>
					<li class="osTab_link" id="osTab_3" data-tab="osTab03">메뉴3</li>
				</ul>
				<div class="os_travel_content" id="os_travel_content"></div>
			</div>
		</div>
	</div>
	
	
</body>
</html>