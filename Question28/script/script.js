$(document).ready(function(){

	$("#listContainer>.page_heading").click(function(event){

		if($(this).next().hasClass('active'))
		{
			$(this).next().removeClass('active');
		}
		else
		{
			$(".page_heading").next().removeClass('active');
			$(this).next().addClass('active');
		}
	});

});
