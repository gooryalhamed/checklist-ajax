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

$('.edit_task').submitOnCheck();

