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
    row ->
      a "#copy.btn.btn-default", ->
        icon 'copy'
        text " Copy"
p '#lang',hidden:'hidden',@lang # replace this!
p '#location',hidden:'hidden',@location

script src: '/javascripts/ace/ace.js'
script src: '/javascripts/out/view.js'