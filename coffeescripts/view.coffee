$(document).ready ->
	lang = $('#lang').text()
	editor = ace.edit 'editor'
	editor.setTheme 'ace/theme/monokai'
	editor.getSession().setMode "ace/mode/#{lang}"
	editor.setReadOnly true
	$('#copy').click ->
		window.clipboardData.clearData()
		window.clipboardData.setData 'Text',editor.getValue()
