mysql = require 'mysql'

module.exports = mysql.createConnection
	host : 'localhost'
	user : 'root'
	database : 'gists'
#	password: '123456'

module.exports.format = mysql.format