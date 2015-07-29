fs = require 'fs'
db = require '../db'

class Gist
	constructor: (@title,@lang,@description,@code,@uid)->
	filePath: ->
		if not @id
			undefined
		else __dirname + "/../../uploads/#{@id}.#{@lang}"

	save: (callback) ->
		sql = 'INSERT INTO gists SET ?'
		set =
			title: @title
			filetype: @lang
			uid: @uid
			description: @description
		dbCallback = (err,r) =>
			return callback err if err
			@id = r.insertId
			fs.writeFile @filePath(),@code,(fserr)->
				callback fserr, r.insertId
		db.query sql,set,dbCallback

	@createFromReq: (req,code)->
		new Gist req.body.title,req.body.lang,req.body.description,
			code,req.user.id

	@queryById: (id,callback)->
		sql = 'SELECT * FROM gists WHERE id = ?'
		db.query sql,[id],(err,results,fields)=>
			return callback err if err
			if results.length != 0
				r = results[0]
				gist = new Gist r.title,r.filetype,r.description,null,r.uid
				gist.id = id
				path = gist.filePath()
				fs.readFile path,encoding:'utf8',(err,content)->
					return callback err if err
					gist.code = content
					callback null, gist

			else callback new Error 'Query:Nothing matches.'

module.exports = Gist
