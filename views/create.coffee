div ".row", ->  
  h2 ->
    text "Put your code here!"
    br()
    small "From PaperAirplane Dev"
div ".row", ->
  div ".col-xs-8", ->
    comment "Editor"
    div "#control.row", ->
      comment "control"
      div ".dropdown", ->
        button "#dropdownMenu1.btn.btn-default.dropdown-toggle", type: "button", "data-toggle": "dropdown", "aria-expanded": "true", ->
          b "Language"
          span '.caret', ''
        ul ".dropdown-menu", role: "menu", "aria-labelledby": "dropdownMenu1", ->
          li role: "presentation", ->
            a role: "menuitem", tabindex: "-1", href: "#", "JavaScript"
          li role: "presentation", ->
            a role: "menuitem", tabindex: "-1", href: "#", "CoffeeScript"
          li role: "presentation", ->
            a role: "menuitem", tabindex: "-1", href: "#", "Markdown"
          li role: "presentation", ->
            a role: "menuitem", tabindex: "-1", href: "#", "HTML"
    div "#editor", @code or """
      function foo(items) {
        var x = "All this is syntax highlighted";
        return x;
      }
      """
  div ".col-xs-4", ->
    button "#save.btn.btn-default", ->
      icon 'floppy-disk'
      text " Save"

script src: '/javascripts/ace/ace.js'

coffeescript ->
	editor = ace.edit 'editor'
	editor.setTheme 'ace/theme/monokai'
	editor.getSession().setMode 'ace/mode/javascript'
	$('#save').click ->
		console.log 'save'
		file = editor.getValue()
		$.ajax
			type: 'POST'
			url: '/gists/create'
			data:
				code: file
				lang: 'js'
				title: 'test'
			success: (r)->
				alert.success r
			error: (xhr,err)->
				alert.danger err