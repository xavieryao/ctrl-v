$(document).ready ->
	lang = 'javascript'
	editor = ace.edit 'editor'
	editor.setTheme 'ace/theme/monokai'
	editor.getSession().setMode 'ace/mode/javascript'
	$('#save').click ->
		if $('#title').val().trim() is ''
			alert.warning 'Title can\'t be empty'
			return
		file = editor.getValue()
		$.ajax
			type: 'POST'
			url: '/gists/create'
			data:
				code: file
				lang: lang
				title: 'test'
			success: (r)->
				alert.success r
			error: (xhr,err)->
				alert.danger err
	$('.dropdown-menu').on 'click', 'li a',->
		lang = $(this).text().toLowerCase()
		$('#dropdownLang').html """#{lang}<span class="caret"></span>"""
		editor.getSession().setMode "ace/mode/#{lang}"

