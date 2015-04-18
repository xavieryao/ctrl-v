{exec} = require 'child_process'

task 'build', 'compile all files',->
	exec 'coffee -o out -c ./*.coffee && coffee -o out/routes -c ./routes/*.coffee',(err,stdout,stderr)->
		throw err if err
		console.log 'Built.'

task 'run','run in debug mode',->
	exec 'DEBUG=myapp ./bin/www',(err,stdout,stderr)->
		throw err if err