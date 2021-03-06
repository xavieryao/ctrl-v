$(document).ready ->
	lang = $('#lang').text()
	editor = ace.edit 'editor'
	editor.setTheme 'ace/theme/github'
	editor.getSession().setMode "ace/mode/#{lang}"
	editor.setReadOnly true
	$('#copy').click ->
		window.clipboardData.clearData()
		window.clipboardData.setData 'Text',editor.getValue()
	$('#down').click ->
		window.open $('#location').text()