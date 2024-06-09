all:
	rm -rf site/*
	mkdir -p output
	mkdir -p temp
	mkdir -p site/css
	mkdir -p site/img
	mkdir -p site/posts
	mkdir -p site/feed
	find pages -type f -name '*.cfg' -print0 | sort -zr | xargs -0 saait
	mv -v output/* site/posts
	mv site/posts/index.html site
	mv site/posts/*.xml site/feed
	cp -r img/* site/img
	cp -r css/* site/css
	cp -r not_found.html about.html site
