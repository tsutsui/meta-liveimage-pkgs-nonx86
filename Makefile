# $NetBSD$
#

REVISION=	20130621
DISTNAME=	liveimage-pkgs-nonx86-${REVISION}
CATEGORIES=	meta-pkgs
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	tsutsui@NetBSD.org
COMMENT=	Meta-package to build binaries for non-x86 ports

#
# packages used by the NetBSD/hpcarm W-ZERO3 Teokure Live Image
#

# shells
DEPENDS+=	bash-[0-9]*:../../shells/bash
DEPENDS+=	tcsh-[0-9]*:../../shells/tcsh
DEPENDS+=	zsh-[0-9]*:../../shells/zsh

# editors
DEPENDS+=	emacs-[0-9]*:../../editors/emacs
DEPENDS+=	medit-[0-9]*:../../editors/medit

# browser and plugin
#DEPENDS+=	firefox-[0-9]*:../../www/firefox
#DEPENDS+=	firefox-l10n-[0-9]*:../../www/firefox-l10n
#DEPENDS+=	gnash-[0-9]*:../../multimedia/gnash
PKG_OPTIONS.dillo=inet6 ssl
DEPENDS+=	dillo-[0-9]*:../../www/dillo
DEPENDS+=	w3m-[0-9]*:../../www/w3m

# fonts
DEPENDS+=	vlgothic-ttf-[0-9]*:../../fonts/vlgothic-ttf
DEPENDS+=	ipafont-[0-9]*:../../fonts/ipafont

# window manager
DEPENDS+=	jwm-[0-9]*:../../wm/jwm

# Japanese input method
#  ibus
DEPENDS+=	ibus-[0-9]*:../../inputmethod/ibus
#  mozc
# XXX: fails in devel/protobuf on arm
#DEPENDS+=	ibus-mozc-[0-9]*:../../inputmethod/ibus-mozc
#DEPENDS+=	mozc-server-[0-9]*:../../inputmethod/mozc-server
#DEPENDS+=	mozc-tool-[0-9]*:../../inputmethod/mozc-tool
#DEPENDS+=	mozc-elisp-[0-9]*:../../inputmethod/mozc-elisp
#  anthy
DEPENDS+=	anthy-[0-9]*:../../inputmethod/anthy
DEPENDS+=	anthy-elisp-[0-9]*:../../inputmethod/anthy-elisp
DEPENDS+=	ibus-anthy-[0-9]*:../../inputmethod/ibus-anthy

# terminal emulators
DEPENDS+=	kterm-[0-9]*:../../x11/kterm
PKG_OPTIONS.mlterm=ibus mlterm-fb
DEPENDS+=	mlterm-[0-9]*:../../x11/mlterm

# alsa (for mikutter notification voice)
#DEPENDS+=	alsa-utils-[0-9]*:../../audio/alsa-utils
#DEPENDS+=	alsa-plugins-oss-[0-9]*:../../audio/alsa-plugins-oss

# mikutter
DEPENDS+=	${RUBY_PKGPREFIX}-mikutter-[0-9]*:../../net/mikutter

# for demonstration
PKG_OPTIONS.onscripter=onscripter-pda
DEPENDS+=	onscripter-[0-9]*:../../games/onscripter

# for onscripter game archives
DEPENDS+=	lhasa-[0-9]*:../../archivers/lhasa
DEPENDS+=	unzip-[0-9]*:../../archivers/unzip

# for text console demo
DEPENDS+=	${RUBY_PKGPREFIX}-tw-[0-9]*:../../net/ruby-tw

# pkgin
#DEPENDS+=	pkgin-[0-9]*:../../pkgtools/pkgin

#
# optional packages
#

# fonts
DEPENDS+=	droid-ttf-[0-9]*:../../fonts/droid-ttf
DEPENDS+=	efont-unicode-[0-9]*:../../fonts/efont-unicode

# inputmethod
# uim
DEPENDS+=	uim-[0-9]*:../../inputmethod/uim
DEPENDS+=	uim-elisp-[0-9]*:../../inputmethod/uim-elisp

# wm
DEPENDS+=	awesome-[0-9]*:../../wm/awesome
DEPENDS+=	fvwm-[0-9]*:../../wm/fvwm
DEPENDS+=	icewm-[0-9]*:../../wm/icewm

# scm
DEPENDS+=	scmgit-base-[0-9]*:../../devel/scmgit-base
DEPENDS+=	subversion-base-[0-9]*:../../devel/subversion-base
DEPENDS+=	fossil-[0-9]*:../../devel/fossil

# admin tools
DEPENDS+=	sudo-[0-9]*:../../security/sudo
DEPENDS+=	rsync-[0-9]*:../../net/rsync

# for demonstration
DEPENDS+=	xnp2-[0-9]*:../../emulators/xnp2

# for xm6i
# xm6i for non-x86 is not available yet
#DEPENDS+=	wxGTK28-[0-9]*:../../x11/wxGTK28

# emulators
# XXX: qemu build requires too much (>512MB) memory
#DEPENDS+=	qemu-[0-9]*:../../emulators/qemu
DEPENDS+=	gxemul-[0-9]*:../../emulators/gxemul
DEPENDS+=	tme-[0-9]*:../../emulators/tme
DEPENDS+=	simh-[0-9]*:../../emulators/simh

# graphics
DEPENDS+=	xli-[0-9]*:../../graphics/xli
DEPENDS+=	gimp-[0-9]*:../../graphics/gimp
# XXX www/webkit-gtk complains #error "Not supported ARM architecture"
#DEPENDS+=	shotwell-[0-9]*:../../graphics/shotwell
DEPENDS+=	${RUBY_PKGPREFIX}-rabbit-[0-9]*:../../graphics/rabbit

# for text console demo
DEPENDS+=	sl-[0-9]*:../../games/sl
DEPENDS+=	aview-[0-9]*:../../graphics/aview

# pdf viewers
DEPENDS+=	evince-[0-9]*:../../print/evince
DEPENDS+=	epdfview-[0-9]*:../../print/epdfview

# restricted
#DEPENDS+=	mplayer-[0-9]*:../../multimedia/mplayer
#DEPENDS+=	xv-[0-9]*:../../graphics/xv

META_PACKAGE=	yes

.include "../../lang/ruby/rubyversion.mk"
.include "../../mk/bsd.pkg.mk"
