doctype 5
html ->
  head ->
    title "Ctrl-V"
    meta "http-equiv": "content-type", content: "text/html; charset=UTF-8"
    meta 'name':'viewport', content: 'width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
    comment "新 Bootstrap 核心 CSS 文件"
    link rel: "stylesheet", href: "/stylesheets/bootstrap.css"
    link rel: "stylesheet", href: "/stylesheets/my_style.css"
    comment "jQuery文件。务必在bootstrap.min.js 之前引入"
    script src: "/javascripts/jquery.js"
    comment "最新的 Bootstrap 核心 JavaScript 文件"
    script src: "/javascripts/bootstrap.js"
    script src: '/javascripts/out/common.js'
  body ->
    nav ".navbar.navbar-default.navbar-fixed-top", ->
      div ".container", ->
        div ".navbar-header", ->
          a ".navbar-brand", href: "/", "Ctrl-V"
        div ".collapse.navbar-collapse", ->
          ul ".nav.navbar-nav", ->
            li (".active" if @page is 'create'), ->
              a href: "/gists/create", "Create"
          ul '.nav.navbar-nav.navbar-right',->
            li '#login', ->
              if @user?
                a href: '/', @user.screen_name
              else
                a href: '/login', 'Log In'
    div ".container", ->
      div ".starter-template", ->
        div '.row', ->
          div '#alert_placehoder', ->
              if @messages.msg?
                comment 'got message'
                alertDom @messages.type,@messages.msg
              else comment 'no message'
        @body
      hr()
      footer ->
        p "&copy; PaperAirplane Dev Team"

