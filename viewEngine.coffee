cc = require 'coffeecup'
fs = require 'fs'

framePath = __dirname + '/../views/frame.coffee'
templateFile = fs.readFileSync framePath, encoding:'utf8'
template = cc.compile templateFile,null # add common.coffee later

module.exports = (filePath, options, callback)->
	fs.readFile filePath, encoding: 'utf8',(err, c)->
		throw err if err
		options.body = cc.render c,options
		callback null,template options
