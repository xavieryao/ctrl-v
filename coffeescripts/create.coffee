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
		data =
			code: file
			lang: lang
			title: $('#title').val().trim()
		if $('#description').val().trim() isnt ''
			data.description = $('#description').val().trim()
		$.ajax
			type: 'POST'
			url: '/gists/create'
			data: data
			success: (r)->
				window.location = "/gists/#{r}"
			error: (xhr,err)->
				alert.danger err
	$('.dropdown-menu').on 'click', 'li a',->
		lang = $(this).text().toLowerCase()
		$('#dropdownLang').html """#{lang}<span class="caret"></span>"""
		editor.getSession().setMode "ace/mode/#{lang}"
	$('#vim').change ->
		if this.checked
			editor.setKeyboardHandler 'ace/keyboard/vim'
		else
			editor.setKeyboardHandler ''
