import bottle

@bottle.route('/')
def home_page():
	return bottle.template('calc', result="")

@bottle.post('/calc')
def calc():
		bottle.redirect('/')

bottle.debug(True)
bottle.run(host='localhost', port=8080)