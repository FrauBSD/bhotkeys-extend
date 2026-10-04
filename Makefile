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
# $FrauBSD: bhotkeys-extend/Makefile 2026-10-03 21:33:38 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
BINDIR?=	${PREFIX}/bin
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

############################################################ FILES

BIN=		bin/display-extend bin/display-laptop-only
PLUG=		plugins.d/extend

############################################################ TARGETS

.PHONY: all

all: ${BIN}

.for script in ${BIN}
${script}: ${script}.in Makefile
	sed -e 's|@PREFIX@|${PREFIX}|g' ${script}.in > ${script}
	chmod 755 ${script}
.endfor

.PHONY: install

install: all
	mkdir -p ${DESTDIR}${BINDIR} ${DESTDIR}${PLUGDIR}
	install -m 755 ${BIN} ${DESTDIR}${BINDIR}
	install -m 644 ${PLUG} ${DESTDIR}${PLUGDIR}/extend

.PHONY: clean

clean:
	rm -f ${BIN}

################################################################################
# END
################################################################################
