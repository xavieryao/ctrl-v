{exec} = require 'child_process'

compile = (what,call)->
	switch what
		when 'server'
			exec 'coffee -o out -c ./*.coffee && coffee -o out/routes -c ./routes/*.coffee',(err,stdout,stderr)->
				call err
		when 'statics'
			exec 'coffee -o public/javascripts -c ./coffeescripts/*.coffee',(err,stdout,stderr)->
				call err

task 'build', 'compile all files',->
	compile 'server',(err)->
		throw err if err
		console.log 'Server compiled.'
		compile 'statics',(err)->
			throw err if err
			console.log 'Statics compiled.'

task 'build:server', 'build server',->
	compile 'server',(err)->
		throw err if err
		console.log 'Server compiled.'

task 'build:statics', 'build statics',->
	compile 'server',(err)->
		throw err if err
		console.log 'Statics compiled.'

task 'run','run in debug mode',->
	exec 'DEBUG=myapp ./bin/www',(err,stdout,stderr)->
		throw err if err