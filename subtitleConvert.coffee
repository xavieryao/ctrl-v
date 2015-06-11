fs = require 'fs'

fileNameArr = process.argv[2].split('/')
fileName = fileNameArr[fileNameArr.length - 1]

file = fs.readFileSync "../subtitle/#{fileName}",encoding:'utf8'
file = file.replace /\r\n/g, '\r'

arr = file.split '\r'
convertedFile = ''

for line in arr
	unless /[0-9]/.test line.charAt 0
		convertedFile += line + '\r\n'

convertedFile += 'Converted by Xavier Yao'

fs.writeFileSync "public/subtitles/#{fileName}",convertedFile,encoding:'utf8'