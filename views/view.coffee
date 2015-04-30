div ".row", ->  
  h2 ->
    text @title
    br()
    if @description
      small @description
div ".row", ->
  div ".col-xs-8", ->
    comment "Editor"
    div "#editor", @code
  div ".col-xs-4", ->
    button "#copy.btn.btn-default", ->
      icon 'copy'
      text " Copy"
p '#lang',hidden:'hidden',@lang # replace this!

script src: '/javascripts/ace/ace.js'
script src: '/javascripts/out/view.js'