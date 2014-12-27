# static resource version
purecss = 0.5.0
react = 0.12.2

init: assets
	@${MAKE} bower

build: init

clean:
	@rm -rf bower_components build

# ==== Private =====
bower:
	@bower install purecss#${purecss} react#${react} mermaid
	@${MAKE} purecss
	@cp bower_components/purecss/build/pure-min.css \
		bower_components/react/react.min.js \
		bower_components/react/JSXTransformer.js \
		bower_components/mermaid/dist/mermaid.full.min.js \
		build/dist
	@rm -rf bower_components

assets:
	@mkdir build build/dist

purecss:
	@cd bower_components/purecss; \
		npm install; \
		grunt build

