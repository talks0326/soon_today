
$(document).on("click",".judge",function(){
	alert("hogehGe")
	console.log($(this).val())
	$(".user-box").last().remove();
	var next_id = $(".user-box").last().attr("id");
	$(this).closest("form").find("input#target_id").val(next_id);
});
