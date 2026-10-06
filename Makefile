############################################################ LICENSE
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2026 Devin Teske <dteske@FreeBSD.org>
#
############################################################ IDENT(1)
#
# $Title: bhotkeys-extend - Super+E (or Super+X) extend $
# $Copyright: 2026 Devin Teske. All rights reserved. $
# $FrauBSD: bhotkeys-extend/Makefile 2026-10-05 21:36:51 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
BINDIR?=	${PREFIX}/bin
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d
MANDIR?=	${PREFIX}/share/man/man1

############################################################ FILES

BIN=		bin/display-extend
PLUG=		plugins.d/extend
MAN1=		display-extend

############################################################ TARGETS

.PHONY: all

all: ${BIN} man/display-extend.1

.for script in ${BIN}
${script}: ${script}.in Makefile
	sed -e 's|@PREFIX@|${PREFIX}|g' ${script}.in > ${script}
	chmod 755 ${script}
.endfor

.for m in ${MAN1}
man/${m}.1: man/${m}.1.in Makefile
	sed -e 's|@PREFIX@|${PREFIX}|g' man/${m}.1.in > man/${m}.1
.endfor

.PHONY: install

install: all
	mkdir -p ${DESTDIR}${BINDIR} ${DESTDIR}${PLUGDIR} \
	    ${DESTDIR}${MANDIR}
	install -m 755 ${BIN} ${DESTDIR}${BINDIR}
	install -m 644 ${PLUG} ${DESTDIR}${PLUGDIR}/extend
.for m in ${MAN1}
	gzip -cn man/${m}.1 > ${DESTDIR}${MANDIR}/${m}.1.gz
	chmod 444 ${DESTDIR}${MANDIR}/${m}.1.gz
.endfor

.PHONY: clean

clean:
	rm -f ${BIN} man/display-extend.1

################################################################################
# END
################################################################################
