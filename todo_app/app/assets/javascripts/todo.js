$(function() {
	var element = $(this).find("form");
	if (element.is('form')) {
	  method = element.attr('method');
	  url = element.attr('action');
	  data = element.serializeArray();
	  // memoized value from clicked submit button
	  var button = element.data('ujs:submit-button');
	  if (button) {
	    data.push(button);
	    element.data('ujs:submit-button', null);
	  }
	}
});