MARKDOWN?=$(shell which markdown)

all: caff-tutorial.html

caff-tutorial.html: caff-tutorial.mdwn
	@if [ -z "$(MARKDOWN)" ]; then \
		echo 'The Markdown text-to-HTML filter is not installed.'; \
		echo 'On Debian systems, please `apt-get install markdown`. Or visit http://daringfireball.net/projects/markdown/.'; \
		exit 1; \
	fi

	$(MARKDOWN) caff-tutorial.mdwn > caff-tutorial.html
