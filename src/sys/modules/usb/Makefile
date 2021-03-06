#
# $FreeBSD: release/10.0.0/sys/modules/usb/Makefile 253790 2013-07-30 02:26:06Z rpaulo $
#
# Copyright (c) 2008 Hans Petter Selasky. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
#

.include <bsd.own.mk>

# Modules that include binary-only blobs of microcode should be selectable by
# MK_SOURCELESS_UCODE option (see below).

SUBDIR = usb
SUBDIR += ${_dwc_otg} ehci ${_musb} ohci uhci xhci ${_uss820dci} ${_at91dci} \
	  ${_atmegadci} ${_avr32dci} ${_rsu} ${_rsufw}
SUBDIR += ${_rum} ${_run} ${_runfw} ${_uath} upgt usie ural ${_zyd} ${_urtw} 
SUBDIR += ${_urtwn} ${_urtwnfw}
SUBDIR += atp uhid ukbd ums udbp ufm uep
SUBDIR += ucom u3g uark ubsa ubser uchcom ucycom ufoma uftdi ugensa uipaq ulpt \
	  umct umcs umodem umoscom uplcom uslcom uvisor uvscom
SUBDIR += uether aue axe cdce cue ${_kue} mos rue smsc udav uhso ipheth
SUBDIR += usfs umass urio
SUBDIR += quirk template
SUBDIR += ${_g_audio} ${_g_keyboard} ${_g_modem} ${_g_mouse}

.if ${MK_USB_GADGET_EXAMPLES} == "yes"
_g_audio=	g_audio
_g_keyboard=	g_keyboard
_g_modem=	g_modem
_g_mouse=	g_mouse
.endif

.if ${MK_SOURCELESS_UCODE} != "no"
_rum=		rum
_uath=		uath
_zyd=		zyd
_kue=		kue
_urtwn=		urtwn
_urtwnfw=	urtwnfw
_run=		run
_runfw=		runfw
_rsu=		rsu
_rsufw=		rsufw
.endif

.if ${MACHINE_CPUARCH} == "amd64"
_urtw=		urtw
.endif

.if ${MACHINE_CPUARCH} == "arm"
_at91dci=	at91dci
_atmegadci=	atmegadci
_dwc_otg=	dwc_otg
_musb=		musb
_uss820dci=	uss820dci
.endif

.if ${MACHINE_CPUARCH} == "i386"
_urtw=		urtw
.endif

.if ${MACHINE_CPUARCH} == "avr32"
_avr32dci=	avr32dci
.endif

.include <bsd.subdir.mk>
