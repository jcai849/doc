PFLAGS = -c style/style.css -t html -s --template template.html
.SUFFIXES:
.SUFFIXES: .tex .html

.tex.html:
	pandoc ${PFLAGS} ${.IMPSRC} -o ${.TARGET}
