express = require 'express'
multer = require 'multer'
{exec} = require 'child_process'

router = express.Router()

router.use multer 
	dest:'../subtitle/'
	limits:
		files:1
	rename: (fieldname,filename,req,res)->
		filename + '-' + Date.now()

router.get '/',(req,res,next)->
	res.render 'subtitle'

router.post '/',(req,res,next)->
	console.log req.files
	command = "node out/subtitleConvert.js #{req.files.subtitle.name}"
	exec command,(err,stdout,stdin)->
		throw err if err
		res.render 'subtitle',file:req.files.subtitle

module.exports = router