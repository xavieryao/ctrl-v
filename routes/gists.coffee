express = require 'express'
fs = require 'fs'
router = express.Router()

router.post '/create',(req,res,next)->
	switch req.body.lang
		when 'js'
			extension = 'js'

	fileName = Math.floor Math.random()*100000
	fs.writeFile __dirname + "/../../uploads/#{fileName}.#{extension}",req.body.code,flag:'w',(err)->
		if err
			console.error err
			next err
		else
			res.send 'Good!' + fileName
			res.end()

module.exports = router