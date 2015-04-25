express = require 'express'

users = require './users'
gists = require './gists'

router = express.Router()

router.get '/',(req,res,next)->
	res.render 'create',user:req.user

router.use '/users', users
router.use '/gists', gists

module.exports = router