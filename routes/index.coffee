express = require 'express'

users = require './users'
gists = require './gists'

router = express.Router()

router.get '/',(req,res,next)->
	res.render 'index'

router.use '/users', users
router.use '/gists', gists

module.exports = router