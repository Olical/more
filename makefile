default: more.min.css

more.min.css:
	lessc more.less | cleancss -o more.min.css