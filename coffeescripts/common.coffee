createAlertDom = (type,msg)->
	"""
<div class="alert alert-#{type}" role="alert">
<a class="close" data-dismiss="alert">×</a><span>
#{msg}</span></div>"""

window.alert =
	success: (msg)->
		$('#alert_placehoder').html createAlertDom 'success',msg
	info: (msg)->
		$('#alert_placehoder').html createAlertDom 'info',msg
	warning: (msg)->
		$('#alert_placehoder').html createAlertDom 'warning',msg
	danger: (msg)->
		$('#alert_placehoder').html createAlertDom 'danger',msg