div ".row", ->  
  h2 ->
    text @title
    br()
    if @description
      small @description
div ".row", ->
  div ".col-sm-10", ->
    comment "Editor"
    div "#editor", @code
  div ".col-sm-2", ->
    row ->
      a "#copy.btn.btn-default", ->
        icon 'copy'
        text " Copy"
p '#lang',hidden:'hidden',@lang # replace this!
p '#location',hidden:'hidden',@location

script src: '/javascripts/ace/ace.js'
script src: '/javascripts/out/view.js'