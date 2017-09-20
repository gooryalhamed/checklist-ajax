//= require jquery
//= require jquery_ujs
//= require_tree .

jQuery.fn.submitOnCheck = function() {
	this.find('input[type=submit]').remove();
	this.find('input[type=checkbox]').click(function() {
		$(this).parent('form').submit();
	});
	return this;
}
$(document).ready(function(){
	$('.edit_task').submitOnCheck();
})
//bind events on ajax loaded content
$(document).on("click", '#undo', function(event) { 
    $('#new_task').remove();
});
$(document).on("click", '#add-btn', function(event) { 
    $('#new_task').submit();
});