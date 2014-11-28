__author__ = "Welser Muñoz - https://twitter.com/WelserJr"

import bottle
import os
import math

@bottle.route('/')
def home_page():
	return bottle.template('calc', result="")

@bottle.post('/calc')
def calc():
	btn = bottle.request.forms.get('btn')
	lcd = bottle.request.forms.get('LCD')

	if btn == 'C':
		bottle.redirect('/')
	elif btn == 'R':
		valor = int(lcd)
		r = math.sqrt(valor)
		return bottle.template('calc', result=r)
	else:
		print(lcd)
		valor = lcd.split('.')
		p = pow(int(valor[0]), int(valor[1]))
		return bottle.template('calc', result=p)

@bottle.get('/<filename:re:.*\.css>')
def stylesheets(filename):
	directory = os.getcwd()
	return bottle.static_file(filename, root=directory)

bottle.debug(True)
bottle.run(host='localhost', port=8080)