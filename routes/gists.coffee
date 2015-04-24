express = require 'express'
fs = require 'fs'
db = require '../db'

router = express.Router()

router.post '/create',(req,res,next)->
	switch req.body.lang
		when 'js'
			extension = 'js'
	gist =
		title : req.body.title
		filetype : req.body.lang
		description : 'NULL'
		uid : '58882833' 

	if req.body.description?
		gist.description = req.body.description

	sql = 'INSERT INTO gists SET ?'

	db.query sql,gist,(err,r)->
		throw err if err
		fileName = r.insertId
		fs.writeFile __dirname + "/../../uploads/#{fileName}.#{extension}",req.body.code,flag:'w',(err)->
			if err
				console.error err
				next err
			else
				res.send 'Good!  ' + fileName
				res.end()

module.exports = router