express = require 'express'
Gist = require '../module/Gist'

router = express.Router()

router.get '/create',(req,res,next)->
	if req.user
		res.render 'create'
	else
		req.flash 'type','warning'
		req.flash 'msg','You must login first'
		res.redirect 'back'

router.post '/create',(req,res,next)->
	if not req.user?
		e = new Error 'Unauthorized'
		e.status = 403
		return next e

	gist = Gist.createFromReq req,req.body.code

	if req.body.description?
		gist.description = req.body.description

	gist.save (err,r)->
		if err
			next err
		else
			res.send "#{r}"
			res.end()

router.get '/:id',(req,res,next)->
	Gist.queryById req.params.id,(err,gist)->
		if not err
			res.render 'view',gist
		else next err

module.exports = router