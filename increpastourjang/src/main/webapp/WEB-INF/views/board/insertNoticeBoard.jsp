<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성하기</title>
<link rel="stylesheet" type="text/css" href="resources/css/test.css" />
<link rel="stylesheet" type="text/css" href="resources/button/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="resources/button/css/vicons-font.css" />
<link rel="stylesheet" type="text/css" href="resources/button/css/base.css" />
<link rel="stylesheet" type="text/css" href="resources/button/css/buttons.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="resources/board/textbox.js"></script>
</head>
<body>
	<div class="contents">
		<h4 style="text-align: center;">공지사항 작성하기</h4>
		<br/><br/>
		<form action="insertNotice" method="post" enctype="multipart/form-data">
			<div class="textbox">
				<label for="ex_input">제목</label> 
				<input type="text" id="ex_input" name="n_board_title">
				<input type="file" name="n_board_file">
				<input type="hidden" name="n_board_writer">
			</div>
			<br/>
			<textarea name="n_board_contents" id="editor" placeholder="본문"></textarea>
			<script>
				CKEDITOR.replace('editor', {
	
				});
			</script>
			<br/>
			<button class="button button--winona button--border-thin button--round-s" data-text="작성완료" type="submit">
				<span>작성완료</span>
			</button>
		</form>
	</div>
</body>
</html>