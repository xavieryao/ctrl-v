{spawn,exec} = require 'child_process'

task 'build', 'compile all files',->
	run """coffee -o out -c ./*.coffee && 
  coffee -o out/routes -c ./routes/*.coffee &&
  coffee -o public/javascripts/out/ -c ./coffeescripts/*.coffee"""

task 'clean', 'clean up compiled files',->
	run 'rm -rf out'

task 'run', 'run server',->
	run 'DEBUG=myapp ./bin/www'

run = (args...) ->
  for a in args
    switch typeof a
      when 'string' then command = a
      when 'object'
        if a instanceof Array then params = a
        else options = a
      when 'function' then callback = a
  
  command += ' ' + params.join ' ' if params?
  cmd = spawn '/bin/sh', ['-c', command], options
  cmd.stdout.on 'data', (data) -> process.stdout.write data
  cmd.stderr.on 'data', (data) -> process.stderr.write data
  process.on 'SIGHUP', -> cmd.kill()
  cmd.on 'exit', (code) -> callback() if callback? and code is 0