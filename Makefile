all:
	rm -rf site/*
	mkdir -p output
	mkdir -p temp
	mkdir -p site/css
	mkdir -p site/img
	mkdir -p site/js
	mkdir -p site/posts
	find pages -type f -name '*.cfg' -print0 | sort -zr | xargs -0 saait
	mv -v output/* site/posts
	mv site/posts/index.html site
	mv site/posts/*.xml site/
	cp -r img/* site/img
	cp -r css/* site/css
	cp -r *.html site
	cp js/* site/js
