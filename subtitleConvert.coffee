fs = require 'fs'

# Get file name
fileNameArr = process.argv[2].split('/')
fileName = fileNameArr[fileNameArr.length - 1]

# Read subtitle file
file = fs.readFileSync "../subtitle/#{fileName}",encoding:'utf8'

# '\r\n' is the symbol for 'new line'. Here we replace it with '\r'.
# The reason is complicated.
file = file.replace /\r\n/g, '\r'

# Split the whole file into an array of lines.
arr = file.split '\r'

# Initialize a new variable to store the converted file temporarily.
convertedFile = ''

for line in arr
# In Visual Basic, we write the above line like this:
# 	String line
#	For a = 0 to arr.Length 
#		line = arr(a)
#		Next a

#	If the first character of a line is a number(matches the pattern
#	[0-9]), append it to `convertedFile`. 
	unless /[0-9]/.test line.charAt 0
		convertedFile += line + '\r\n'

convertedFile += 'Converted by Xavier Yao'

# Write the converted subtitle into a file.
fs.writeFileSync "public/subtitles/#{fileName}",convertedFile,encoding:'utf8'
