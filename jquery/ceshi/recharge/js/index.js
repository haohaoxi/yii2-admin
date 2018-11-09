$(function() {
	$(':radio').on('click', function() {
		if(this.checked) {
			var define = $('#defined').siblings().text();
			console.log($(this).val())
			$(this).parents('li').css('border','1px solid #eb3037');
			$(this).parents('li').siblings().css('border','1px solid #c9c9c9');
			
		} 
	});
	
	$('#zdy').on('focus', function() {
	  	$(this).parents('li').css('border','1px solid #eb3037');
	    $(this).parents('li').siblings().css('border','1px solid #c9c9c9');
	  
	})
	$('#zdy').on('change', function() {
	  $('#defined').val($(this).val()) ;//把自定义金额赋值给input
	 	  console.log($(this).val());
	 	  console.log($('#defined').val()); 
	})
	
})

