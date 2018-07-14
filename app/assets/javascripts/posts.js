$(function() {
	//$('h1').css({color: 'green'})

	$('.new-post').on('ajax:send', function() {
		$('.posts').append('<img class="loader" style="height: 100px;" src="https://i.redd.it/ounq1mw5kdxy.gif"/>')
	})
	.on('ajax:complete', function() {
		$('.loader').remove()
	})
});