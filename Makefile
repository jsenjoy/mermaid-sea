# static resource version
purecss = 0.5.0
react = 0.12.2

init: bower npm

watch:
	@node_modules/.bin/jsx -x jsx -w jsx/ assets/js/

build: init

clean:
	@rm -rf dist

# ==== Private =====
bower:
	@mkdir dist
	@bower install purecss#${purecss} react#${react} mermaid
	@${MAKE} purecss
	@cp bower_components/purecss/build/pure-min.css \
		bower_components/react/react.js \
		bower_components/mermaid/dist/mermaid.full.min.js \
		dist
	@rm -rf bower_components

npm:
	@npm install react-tools

purecss:
	@cd bower_components/purecss; \
		npm install; \
		grunt build



