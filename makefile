.PHONY: all
TEX-ALL-SRC != find src -maxdepth 1 -name '*.tex' -exec basename {} \;
TEX-ALL-OUT = ${TEX-ALL-SRC:S/.tex/.html/g}

all: ${TEX-ALL-OUT}

.for TEX-SRC in ${TEX-ALL-SRC}
TEX-OUT = ${TEX-SRC:S/.tex/.html/g}
${TEX-OUT}: src/${TEX-SRC}
	cd src && ${MAKE} ${TEX-OUT} && mv ${TEX-OUT} ..
.endfor
