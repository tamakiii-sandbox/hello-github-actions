.PHONY: help install build uninstall clean

export PATH := ./node_modules/.bin:${PATH}

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	node_modules

build: \
	dist/main.js

uninstall:
	rm -rf node_modules

clean:
	rm -rf dist/main.js

node_modules:
	npm install

dist/main.js:
	tsc
