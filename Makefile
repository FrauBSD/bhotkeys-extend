# bhotkeys-extend: Super+E (or Super+X) -> display-extend --toggle
# Ships the RandR helper and laptop-only recovery this command runs.
#
PREFIX?=	/usr/local
BINDIR?=	${PREFIX}/bin
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

install:
	mkdir -p ${DESTDIR}${BINDIR} ${DESTDIR}${LIBEXECDIR} ${DESTDIR}${PLUGDIR}
	install -m 755 bin/display-extend bin/display-laptop-only \
		${DESTDIR}${BINDIR}
	install -m 644 plugins.d/extend \
		${DESTDIR}${PLUGDIR}/extend

.PHONY: install
