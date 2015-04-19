express = require 'express'
path = require 'path'
favicon = require 'serve-favicon'
logger = require 'morgan'
cookieParser = require 'cookie-parser'
bodyParser = require 'body-parser'

routes = require './routes/index'
users = require './routes/users'
gists = require './routes/gists'

app = express()

app.set 'views', path.join __dirname,'../views'
app.set 'view engine', 'ejs'

app.use logger 'dev'
app.use bodyParser.json()
app.use bodyParser.urlencoded extended:false
app.use cookieParser()
app.use express.static path.join __dirname, '../public'

app.use '/',routes
app.use '/users', users
app.use '/gists', gists

app.use (req,res,next)->
	err = new Error 'Not Found'
	err.status = 404
	next err

# error handlers

if (app.get 'env') is 'development'
	app.use (err,req,res,next)->
		res.status err.status || 500
		res.render 'error',
			message: err.message
			error: err

app.use (err,req,res,next)->
	res.status err.status || 500
	res.render 'error',
		message: err.message
		error: {}

module.exports = app