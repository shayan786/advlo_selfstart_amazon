$('#contact').on('ajax:send', function(event, data, status, xhr) {
	// Do your thing, data will be the response
	$(this).hide();

	$(".contact_msg").show();
	alert("You're in! We'll notify you as soon as Advlo launches");
});