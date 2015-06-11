div '.container',->
	div '.jumbotron',->
		h1 'Subtitle Reformatter'
		p '.lead',->
			'Automatically remove any line starting with a digit.'
		if @file
			p ->
				text @file.originalname + ' converted. <b>All done.</b> '
				a '.btn.btn-large.btn-success',href:"subtitles/#{@file.name}",'Download'
		else 
			p ->
				form {action:'subtitle',method:'post',enctype:'multipart/form-data'},->
					p -> input type:'file',name:'subtitle',id:'subtitle'
					p -> input '.btn.btn-large.btn-success',type:'submit'