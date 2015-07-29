mysql = require 'mysql'

module.exports = mysql.createConnection
	host : 'localhost'
	user : 'root'
	port: 3307
	database : 'gists'
#	password: '123456'

module.exports.format = mysql.format
