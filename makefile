default: clean compile

clean:
	if [ -f more.min.css ]; then rm more.min.css; fi

compile:
	lessc more.less | cleancss -o more.min.css