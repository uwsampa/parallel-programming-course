DEPLOY_LOCATION:=bicycle.cs.washington.edu:/cse/courses/csep524/TBD

build::
	jekyll build

serve::
	jekyll serve --verbose
	## broken
	##jekyll serve --incremental --watch

deploy:: build
	@echo First fix $(DEPLOY_LOCATION); then we can deploy.
        ##jekyll build --config _config.yml,_deploy.yml
        ##rsync --compress --recursive --checksum --itemize-changes --delete _site/ $(DEPLOY_LOCATION)

clean::
	rm -rf _site

