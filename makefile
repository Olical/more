default: compile

compile:
	lessc assets/less/style.less | cleancss -o assets/css/style.min.css