//= require jquery
//= require jquery_ujs
//= require_tree .
$(function () {
	$('.edit_task input[type=submit]').remove();
	$('.edit_task input[type=checkbox]').click(function () {
		$(this).parent('form').submit();
	});  
});
let today = new Date().toISOString().substr(0, 10);
document.getElementById("task_task_date").defaultValue = today;