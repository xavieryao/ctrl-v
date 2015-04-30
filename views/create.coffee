div ".row", ->  
  h2 ->
    text "Put your code here!"
    br()
    small "From PaperAirplane Dev"
div ".row", ->
  div ".col-xs-8", ->
    comment "Editor"
    form ->
      div '.form-group',->
        label for:'title','Title'
        input '#title.form-control',placeholder: 'Enter title'
      div '.form-group',->
        label for:'description','Description'
        input '#description.form-control',placeholder: '(Optional)'
    div ".control.row", ->
      div ".dropdown", ->
        button "#dropdownLang.btn.btn-default.dropdown-toggle", type: "button", "data-toggle": "dropdown", "aria-expanded": "true", ->
          b "Language"
          span '.caret', ''
        ul ".dropdown-menu.scrollable-menu", role: "menu", "aria-labelledby": "dropdownMenu1", ->
          li '.dropdown-header',role: 'presentation','Selected'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','JavaScript'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','HTML'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','Java'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','Scheme'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','Markdown'
          li '.dropdown-header',role: 'presentation','A'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','abap'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','abc'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','actionscript'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','ada'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','apache_conf'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','applescript'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','asciidoc'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','assembly_x86'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','autohotkey'
          li '.dropdown-header',role: 'presentation','B'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','batchfile'
          li '.dropdown-header',role: 'presentation','C'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','c9search'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','c_cpp'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','cirru'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','clojure'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','cobol'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','coffee'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','coldfusion'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','csharp'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','css'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','curly'
          li '.dropdown-header',role: 'presentation','D'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','d'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','dart'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','diff'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','django'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','dockerfile'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','dot'
          li '.dropdown-header',role: 'presentation','E'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','eiffel'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','ejs'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','elixir'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','elm'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','erlang'
          li '.dropdown-header',role: 'presentation','F'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','forth'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','ftl'
          li '.dropdown-header',role: 'presentation','G'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','gcode'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','gherkin'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','gitignore'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','glsl'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','golang'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','groovy'
          li '.dropdown-header',role: 'presentation','H'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','haml'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','handlebars'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','haskell'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','haxe'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','html'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','html_ruby'
          li '.dropdown-header',role: 'presentation','I'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','ini'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','io'
          li '.dropdown-header',role: 'presentation','J'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','jack'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','jade'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','java'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','javascript'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','json'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','jsoniq'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','jsp'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','jsx'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','julia'
          li '.dropdown-header',role: 'presentation','L'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','latex'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','lean'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','less'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','liquid'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','lisp'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','live_script'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','livescript'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','logiql'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','lsl'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','lua'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','luapage'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','lucene'
          li '.dropdown-header',role: 'presentation','M'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','makefile'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','markdown'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','mask'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','matlab'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','mel'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','mips_assembler'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','mipsassembler'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','mushcode'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','mysql'
          li '.dropdown-header',role: 'presentation','N'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','nix'
          li '.dropdown-header',role: 'presentation','O'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','objectivec'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','ocaml'
          li '.dropdown-header',role: 'presentation','P'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','pascal'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','perl'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','pgsql'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','php'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','plain_text'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','powershell'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','praat'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','prolog'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','properties'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','protobuf'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','python'
          li '.dropdown-header',role: 'presentation','R'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','r'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','rdoc'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','rhtml'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','ruby'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','rust'
          li '.dropdown-header',role: 'presentation','S'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','sass'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','scad'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','scala'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','scheme'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','scss'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','sh'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','sjs'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','smarty'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','snippets'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','soy_template'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','space'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','sql'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','stylus'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','svg'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','tcl'
          li '.dropdown-header',role: 'presentation','T'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','tex'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','text'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','textile'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','toml'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','twig'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','typescript'
          li '.dropdown-header',role: 'presentation','V'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','vala'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','vbscript'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','velocity'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','verilog'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','vhdl'
          li '.dropdown-header',role: 'presentation','X'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','xml'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','xquery'
          li '.dropdown-header',role: 'presentation','Y'
          li '.divider',role:'presentation'
          li role: 'presentation', ->
            a role: 'menuitem',tabindex:'-1',href:'#','yaml'

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
script src: '/javascripts/out/create.js'