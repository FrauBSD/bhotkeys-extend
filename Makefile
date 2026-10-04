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
# $FrauBSD: bhotkeys-extend/Makefile 2026-10-03 20:45:34 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
BINDIR?=	${PREFIX}/bin
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

############################################################ FILES

BIN=		bin/display-extend bin/display-laptop-only
PLUG=		plugins.d/extend

############################################################ TARGETS

.PHONY: install

install:
	mkdir -p ${DESTDIR}${BINDIR} ${DESTDIR}${PLUGDIR}
	install -m 755 ${BIN} ${DESTDIR}${BINDIR}
	install -m 644 ${PLUG} ${DESTDIR}${PLUGDIR}/extend

################################################################################
# END
################################################################################
