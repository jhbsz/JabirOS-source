# $FreeBSD: release/10.0.0/sys/modules/bxe/Makefile 255736 2013-09-20 20:18:49Z davidch $
BXE	= ${.CURDIR}/../../dev/bxe
.PATH:	${BXE}

KMOD	= if_bxe
SRCS	= device_if.h bus_if.h pci_if.h
SRCS	+= bxe.c               \
           bxe_stats.c         \
           bxe_debug.c         \
           bxe_elink.c         \
           ecore_sp.c          \
           57710_init_values.c \
           57711_init_values.c \
           57712_init_values.c

CFLAGS += -I${BXE}

.include <bsd.kmod.mk>
