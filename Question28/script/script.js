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

  $("#logout").click(function() {
		if(confirm("Are you sure you want to Logout"))
		$.ajax({
		url: 'components/logOut.cfc?method=logOutUser',
		type: 'POST',		
		success: function(result) {
			window.location.href="index.cfm"
		},
		error: function(xhr, status, error) {
		
		}
		});
	});

	$("#logout").click(function() {
		if(confirm("Are you sure you want to Logout"))
		$.ajax({
		url: 'components/logOut.cfc?method=logOutUser',
		type: 'POST',		
		success: function(result) {
			window.location.href="index.cfm"
		},
		error: function(xhr, status, error) {
		
		}
		});
	});

});

function deletePage(pageId)
{
	if(confirm("Are you sure you want to dlt"))
	{
		$.ajax({
		url: 'components/Pages.cfc?method=deletePage',
		type: 'POST',
		data:{pageId: pageId.value},		
		success: function() {
			location.reload();
		},
		error: function(xhr, status, error) {
		}
		});
	}
}
