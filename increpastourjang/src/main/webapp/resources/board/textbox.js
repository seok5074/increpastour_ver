$(document).ready(function() {
  var placeholderTarget = $('.textbox input[type="text"], .textbox input[type="password"]');
  
  // placeholderTarget가 빈 값이 아니면 뒤에 글이 가리기 때문에 숨김 처리
  if(placeholderTarget.val() != null){
	  $(placeholderTarget).siblings('label').fadeOut('fast');
  }
  
  //포커스시
  placeholderTarget.on('focus', function(){
    $(this).siblings('label').fadeOut('fast');
  });

  //포커스아웃시
  placeholderTarget.on('focusout', function(){
    if($(this).val() == ''){
      $(this).siblings('label').fadeIn('fast');
    }
  });
  
  
});