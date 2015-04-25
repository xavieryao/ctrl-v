doctype 5
html ->
  head ->
    title "Gists"
    meta "http-equiv": "content-type", content: "text/html; charset=UTF-8"
    comment "新 Bootstrap 核心 CSS 文件"
    link rel: "stylesheet", href: "./stylesheets/bootstrap.css"
    link rel: "stylesheet", href: "./stylesheets/my_style.css"
    comment "jQuery文件。务必在bootstrap.min.js 之前引入"
    script src: "./javascripts/jquery.js"
    comment "最新的 Bootstrap 核心 JavaScript 文件"
    script src: "./javascripts/bootstrap.js"
  body ->
    nav ".navbar.navbar-inverse.navbar-fixed-top", ->
      div ".container", ->
        div ".navbar-header", ->
          a ".navbar-brand", href: "#", "Gists"
        div ".collapse.navbar-collapse", ->
          ul ".nav.navbar-nav", ->
            li ".active", ->
              a href: "#", "Create"
    div ".container", ->
      div ".starter-template", ->
        @body