div ".jumbotron", ->
  div ".container", ->
    h1 "Hello, world!"
    blockquote ->
      p "Gists are a great way to share your work. You can share single files, parts of files, or full applications."
      footer "GitHub User Documentation"
    p ->
      if @user
        a ".btn.btn-success.btn-lg", href: "/gists/create", role: "button", "Create now&raquo;"
      else
        a ".btn.btn-primary.btn-lg", href: "/login", role: "button", "Login to start &raquo;"        
div ".container", ->
  comment "Example row of columns"
  div ".row", ->
    div ".col-md-4", ->
      h2 "Heading"
      p "Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. "
      p ->
        a ".btn.btn-default", href: "#", role: "button", "View details &raquo;"
    div ".col-md-4", ->
      h2 "Heading"
      p "Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. "
      p ->
        a ".btn.btn-default", href: "#", role: "button", "View details &raquo;"
    div ".col-md-4", ->
      h2 "Heading"
      p "Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus."
      p ->
        a ".btn.btn-default", href: "#", role: "button", "View details &raquo;"
  hr()
  footer ->
    p "&copy; PaperAirplane Dev Team"
comment "/container"