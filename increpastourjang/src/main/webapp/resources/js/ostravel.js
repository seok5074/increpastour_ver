var osReqUrl = "activeOsTab?osTab=osTab01" ;
/* -------------------해외메뉴 탭ajax--------------------------- */

$(document).on("click", '.osTab_link', function() {

	var osReqUrl = "activeOsTab?osTab=" + $(this).attr('data-tab')
	$("#os_travel_content").empty();
	$(".osTab_link").css('background-color', 'rgba(255,255,255,0.1)');
	$(".osTab_link").css('border-width', '1px 1px 4px 1px');
	$(this).css('background-color', 'rgba(255,255,255,0.5)');
	$(this).css('border-width', '1px 1px 0px 1px');
	$.ajax({
		type : 'GET',
		url : osReqUrl,
		error : function(xhr, msg) {
			alert("ajax통신오류 : " + msg)
		},
		success : function(data) {
			$("#os_travel_content").html(data)
		}
	});
});

/*
 * -------------------------해외 지역도시 히든메뉴
 * ajax-----------------------------------------------------------
 */

$(document).on('click', '.sel_input_oscity', function() {

	$(".subOsSearchBox").empty();
	$(".osCloseButtom").css('visibility', 'visible')
	$.ajax({
		type : "GET",
		url : "osCityList",
		error : function() {
			alert("해외도시 리스트 불러오기 실패!!");
		},
		success : function(data) {
			$(".subOsSearchBox").html(data);

		}

	});

});

/*
 * ------------------------해외메뉴X버튼 펑션
 * ajax--------------------------------------------------------------------
 */

$(document).on('click', '.osCloseButtom', function() {
	$(".osCloseButtom").css('visibility', 'hidden')
	$("#osTab_1").css('background-color', 'rgba(255,255,255,0.5)');
	$("#osTab_1").css('border-width', '1px 1px 0px 1px');

	$.ajax({
		type : "GET",
		url : osReqUrl,
		error : function(msg) {
			alert("osTab01불러오기 실패!!" + msg);
		},
		success : function(data) {
			$("#os_travel_content").html(data)
		}
	});
});
