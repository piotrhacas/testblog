<% if @comment.persisted? %>
	$('.comment').append('<%= escape_javascript render('comment', comment: @comment) %>');
<% else %>
	alert('ogarnij się');
	alert('<%= j @comment.errors.full_messages.join(', ') %>');
<% end %>

$('.new-comment').find('input[type="text"]').val('');