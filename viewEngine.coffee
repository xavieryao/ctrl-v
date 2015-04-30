cc = require 'coffeecup'
fs = require 'fs'

helper = require './viewHelper'

basePath = __dirname + '/../views/'
templateFile = fs.readFileSync basePath + 'frame.coffee', encoding:'utf8'
template = cc.compile templateFile,hardcode:helper

module.exports = (filePath, options, callback)->
	fs.readFile filePath, encoding: 'utf8',(err, c)->
		callback err if err
		s = filePath.split '/'
		options.page = (s[s.length-1].split '.')[0]
		options.hardcode = helper
		options.body = cc.render c,options
		callback null,template options
