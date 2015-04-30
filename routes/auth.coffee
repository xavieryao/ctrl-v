express = require 'express'
passport= require 'passport'
passportSina = require 'passport-sina'

middleware = express.Router()

passport.serializeUser (user,callback)->
	callback null,user

passport.deserializeUser (user,callback)->
	callback null,user

config =
	clientID: '1883039858'
	clientSecret: '70685d6e33e13010d2745bab3ac4bbf1'
	callbackURL :'http://127.0.0.1:3000/login/callback'
	requireState: false

passport.use new passportSina config,(accessToken, refreshToken, profile, callback)->
	process.nextTick ->
		callback null,profile

middleware.use passport.initialize()
middleware.use passport.session()

middleware.get '/login',passport.authenticate 'sina'
middleware.get '/login/callback',passport.authenticate 'sina',
	failureRedirect: '/aaa', successRedirect: '/'

exports.middleware = middleware