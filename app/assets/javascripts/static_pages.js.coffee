# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

newText = (action) ->
	if action == 1
		return 'Added some text'
	else
		return ''

jQuery ->
	$('a[data-action]').click (e) ->
		#e.preventDefault()
		action = $(this).data('action')
		$('div#ins').html newText(action) 
		console.log 'Clicked a link'
		return
	return