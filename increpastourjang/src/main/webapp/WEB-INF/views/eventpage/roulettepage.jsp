<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>룰렛 페이지</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/jQueryRotate.js"></script>
<style>
#image {
	margin: 50px 50px;
	z-index: 10;
}

#n_id {
	position: absolute;
	left: 286px;
	z-index: 20;
	bottom: 180px;
}
</style>
</head>
<body>
	<%@ include file="../../templates/header.jsp"%>
	<%@ include file="../../templates/searchForm.jsp"%>
	<img src="resources/images//roulette.png" id="image">
	<img src="resources/images//niddle.png" id="n_id">
	<br />
	<input type='button' value='시작' id='start_btn'></input>
	<div id="result_id"></div>
	<div id="result_id2"></div>
	<div id="result_id3"></div>
	<script>
		/* serpiko.tistory.com */
		window.onload = function() {

			var pArr = [ "0", "1", "2", "3", "4:꽝", "5", "6", "7", "8", "9" ];

			$('#start_btn').click(function() {
				rotation();
			});

			function rotation() {
				$("#image").rotate({
					angle : 0,
					animateTo : 360 * 5 + randomize(0, 360),
					center : [ "50%", "50%" ],
					easing : $.easing.easeInOutElastic,
					callback : function() {
						var n = $(this).getRotateAngle();
						endAnimate(n);
					},
					duration : 5000
				});
			}

			function endAnimate($n) {
				var n = $n;
				$('#result_id').html("<p>움직인각도:" + n + "</p>");
				var real_angle = n % 360 + 18;
				var part = Math.floor(real_angle / 36);

				$('#result_id2').html("<p>상품범위:" + part + "</p>");

				if (part < 1) {
					$('#result_id3').html("<p>당첨내역:" + pArr[0] + "</p>");
					return;
				}

				if (part >= 10) {
					$('#result_id3').html(
							"<p>당첨내역:" + pArr[pArr.length - 1] + "</p>");
					return;
				}

				$('#result_id3').html("<p>당첨내역:" + pArr[part] + "</p>");
			}

			function randomize($min, $max) {
				return Math.floor(Math.random() * ($max - $min + 1)) + $min;
			}
		};
	</script>
	<input type="button" value="목록보기"
		onclick="javascript:window.location.href='eventpage'" />
	<%@ include file="../../templates/footer.jsp"%>
</body>
</html>