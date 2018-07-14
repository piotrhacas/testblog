$(function() {
	//$('h1').css({color: 'green'})

	$('.new-commenter').on('ajax:send', function() {
		$('.commenters').append('<img class="loader" style="height: 100px;" src="https://i.redd.it/ounq1mw5kdxy.gif"/>')
	})
	.on('ajax:complete', function() {
		$('.loader').remove()
	})
});
