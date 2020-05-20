$(function(){
	$('.obtn').click(function(){
		
		var no = $(this).parents().parents().attr('id');
		alert(no);
		$('#no').val(no);
		$('#frm').submit();
	});
});