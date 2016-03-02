#DEPLOY_LOCATION:=bicycle.cs.washington.edu:/cse/courses/csep524/TBD
DEPLOY_LOCATION:=bicycle.cs.washington.edu:/homes/gws/nelson/public_html/csep524/TBD

build::
	jekyll build

serve::
	jekyll serve --verbose
	## broken
	##jekyll serve --incremental --watch

deploy:: build
	rsync --compress --recursive --checksum --itemize-changes --delete _site/ $(DEPLOY_LOCATION)

clean::
	rm -rf _site

