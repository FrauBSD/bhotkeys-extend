# bhotkeys-extend: Super+E -> display-extend --toggle
# RUN_DEPENDS bhotkeys. display-extend ships with framework-keyboard.
#
PREFIX?=	/usr/local
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

install:
	mkdir -p ${DESTDIR}${PLUGDIR}
	install -m 644 plugins.d/extend \
		${DESTDIR}${PLUGDIR}/extend

.PHONY: install
