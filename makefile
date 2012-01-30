default: compile

compile:
	(cat assets/css/normalize.css/normalize.css; lessc assets/less/style.less) | cleancss -o assets/css/style.min.css