# $FreeBSD: release/10.0.0/usr.sbin/bsdinstall/partedit/Makefile 250511 2013-05-11 13:46:05Z antoine $

BINDIR= /usr/libexec/bsdinstall
PROG=	partedit
LINKS= ${BINDIR}/partedit ${BINDIR}/autopart \
       ${BINDIR}/partedit ${BINDIR}/scriptedpart
SYMLINKS= ${BINDIR}/partedit /usr/sbin/sade
DPADD=	${LIBGEOM} ${LIBNCURSESW} ${LIBUTIL} ${LIBDIALOG} ${LIBM}
LDADD=	-lgeom -lncursesw -lutil -ldialog -lm

PARTEDIT_ARCH= ${MACHINE}
.if ${MACHINE} == "i386" || ${MACHINE} == "amd64"
PARTEDIT_ARCH= x86
.endif
.if !exists(partedit_${PARTEDIT_ARCH}.c)
PARTEDIT_ARCH= generic
.endif

SRCS=	diskeditor.c partedit.c gpart_ops.c partedit_${PARTEDIT_ARCH}.c \
	part_wizard.c scripted.c

WARNS?=	3
MAN= sade.8

.include <bsd.prog.mk>
