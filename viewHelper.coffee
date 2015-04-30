helper =
	icon: (name)->
		span ".glyphicon.glyphicon-#{name}", 'aria-hidden':'true'
	alertDom: (type,msg)->
		"""
	<div class="alert alert-#{type}" role="alert">
	<a class="close" data-dismiss="alert">×</a><span>
	#{msg}</span></div>"""
	checkbox: (id,txt)->
        div ".checkbox",->
          label ->
            input "##{id}",type:'checkbox'
            text txt

module.exports = helper