// This is shorthand for $(document).ready(function() {})
$(function(){
	$("form").submit(function(){
		event.preventDefault();

		var action = $(this).attr('action');
		var method = $(this).attr('method');


		var description = $(this).find('#todo_description').val();
		var priority = $(this).find('#todo_priority').val();
		//console.log("Test");
		// this tegugger should be hit when you clik the submit button
		//debugger;

		var data = $(this).serializeArray();

		$.ajax({
			method: method,
			url: action,
			data: data,

			//this line make response format javascript
			dataType: 'script'
		});
	})
})