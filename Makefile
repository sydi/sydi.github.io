.PHONY: docker
docker:
	docker build . --tag sydi-jekyll:latest


.PHONY: serve
serve:
	docker run --rm -it --name sydi-jekyll \
		-p 4000:4000 \
		-v $(PWD):/app \
		sydi-jekyll:latest \
		jekyll serve -H 0.0.0.0 --config _config.yml,_config_dev.yml --future --drafts --watch
