helper =
	icon: (name)->
		span '.' + name, ''
	alertDom: (type,msg)->
		"""
	<div class="alert alert-#{type}" role="alert">
	<a class="close" data-dismiss="alert">×</a><span>
	#{msg}</span></div>"""

module.exports = helper