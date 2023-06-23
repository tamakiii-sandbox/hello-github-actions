.PHONY: help build clean

export PATH := ./node_modules/.bin:${PATH}

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: \
	dist/main.js

clean:
	rm -rf dist/main.js

dist/main.js:
	tsc
