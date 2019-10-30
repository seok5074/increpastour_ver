$(document).ready(function(){
	
	/*--국내메뉴초기화---  */	
	var reqUrl = "activeTab?tab="+$("#tab_1").attr('data-tab')
	$("#tab_1").css('background-color','rgba(255,255,255,0.5)');
	$("#tab_1").css('border-width', '1px 1px 0px 1px');
	$.ajax({
		type:"GET",
		url:reqUrl,
		error:function(msg){
			alert("tab01불러오기 실패!!"+ msg);	
			},
		success:function(data){
			$("#d_travel_content").html(data)
		}
	});
	
	/*--해외메뉴초기화---  */
	
	var osReqUrl = "activeOsTab?osTab="+$("#osTab_1").attr('data-tab')
	
	$("#osTab_1").css('background-color','rgba(255,255,255,0.5)');
	$("#osTab_1").css('border-width', '1px 1px 0px 1px');
	
	$.ajax({
		type:"GET",
		url:osReqUrl,
		error:function(msg){
			alert("osTab01불러오기 실패!!"+ msg);	
			},
		success:function(data){
			$(".os_travel_content").html(data)
		}
	});
	
	
	/* -------------------해외메뉴 탭ajax--------------------------- */
	$(".tab_link").click(function(){
		var reqUrl = "activeTab?tab=" + $(this).attr('data-tab')
		$("#d_travel_content").empty();
		$(".tab_link").css('background-color','rgba(255,255,255,0.1)');
		$(".tab_link").css('border-width', '1px 1px 4px 1px');
		$(this).css('background-color','rgba(255,255,255,0.5)');
		$(this).css('border-width', '1px 1px 0px 1px');
		$.ajax({
			type:'GET',
			url:reqUrl,				
			error:function(xhr, msg){
				alert("ajax통신오류 : " + msg)
			},
			success:function(data){
				$("#d_travel_content").html(data)
			}
			
		});
			
	});
	
	
	
	/*--------------------국내 지역도시 히든메뉴  ajax--------------------------------  */
	$(document).on('click','.sel_input_dcity',function(){
		$('.dCloseButtom').css("visibility",'visible');
		$(".subSearchBox").empty();
		$.ajax({
			type:"GET",
			url:"cityList",
			error:function(){
				alert("도시리스트 불러오기 실패!");
			},
			success:function(data){
				$(".subSearchBox").html(data);
			}
		}); 
	});
	
	
	
	
	/* -------------------국내메뉴X버튼 ajax-------------------------------------------------- */
	
	
	$(document).on('click','.dCloseButtom',function(){
		$(".dCloseButtom").css('visibility','hidden')
		$("#Tab_1").css('background-color','rgba(255,255,255,0.5)');
		$("#Tab_1").css('border-width', '1px 1px 0px 1px');
		
		$.ajax({
			type:"GET",
			url:reqUrl,
			error:function(msg){
				alert("Tab01불러오기 실패!!"+ msg);	
				},
			success:function(data){
				$("#d_travel_content").html(data)
			}
		});
	});
	
	
	
	
	
	
	
});