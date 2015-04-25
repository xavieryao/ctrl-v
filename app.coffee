express = require 'express'
path = require 'path'
favicon = require 'serve-favicon'
logger = require 'morgan'
cookieParser = require 'cookie-parser'
bodyParser = require 'body-parser'
session = require 'express-session';

auth = require './routes/auth'

app = express()

app.engine 'coffee',require './viewEngine'
app.set 'views', path.join __dirname,'../views'
app.set 'view engine', 'coffee'

app.use logger 'dev'
app.use bodyParser.json()
app.use bodyParser.urlencoded extended:false
app.use session
	resave:false
	saveUninitialized: false
	secret: '42 is a magical number'
app.use cookieParser()
app.use express.static path.join __dirname, '../public'

app.use auth.middleware
app.use require './routes/index'

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