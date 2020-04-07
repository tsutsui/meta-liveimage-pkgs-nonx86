# $NetBSD$
#

REVISION=	20200301
DISTNAME=	liveimage-pkgs-nonx86-${REVISION}
CATEGORIES=	meta-pkgs
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	tsutsui@NetBSD.org
COMMENT=	Meta-package to build binaries for non-x86 ports

#
# packages used by non-x86 NetBSD machines
#

# shells
DEPENDS+=	tcsh-[0-9]*:../../shells/tcsh
DEPENDS+=	zsh-[0-9]*:../../shells/zsh
DEPENDS+=	bash-[0-9]*:../../shells/bash

# vala sayaka (twitter client)
DEPENDS+=	sayaka-[0-9]*:../../net/sayaka
# nanotodon
DEPENDS+=	nanotodon-[0-9]*:../../net/nanotodon

# terminal emulators
DEPENDS+=	kterm-[0-9]*:../../x11/kterm
PKG_OPTIONS.mlterm=cairo fribidi gdk_pixbuf2 xft2 mlterm-fb
DEPENDS+=	mlterm-[0-9]*:../../x11/mlterm

# network
DEPENDS+=	rsync-[0-9]*:../../net/rsync
DEPENDS+=	wget-[0-9]*:../../net/wget

# basic fonts
DEPENDS+=	vlgothic-ttf-[0-9]*:../../fonts/vlgothic-ttf
DEPENDS+=	ipafont-[0-9]*:../../fonts/ipafont
DEPENDS+=	freefont-ttf-[0-9]*:../../fonts/freefont-ttf
DEPENDS+=	unifont-[0-9]*:../../fonts/unifont

# VCS
DEPENDS+=	git-base-[0-9]*:../../devel/git-base
DEPENDS+=	git-docs-[0-9]*:../../devel/git-docs

# window manager
DEPENDS+=	jwm-[0-9]*:../../wm/jwm
DEPENDS+=	wm-icons-[0-9]*:../../graphics/wm-icons

# browser and plugin
#DEPENDS+=	firefox-[0-9]*:../../www/firefox
#DEPENDS+=	firefox-l10n-[0-9]*:../../www/firefox-l10n
DEPENDS+=	dillo-[0-9]*:../../www/dillo
DEPENDS+=	w3m-[0-9]*:../../www/w3m

# graphics
DEPENDS+=	xv-[0-9]*:../../graphics/xv
DEPENDS+=	xli-[0-9]*:../../graphics/xli
DEPENDS+=	libsixel-[0-9]*:../../graphics/libsixel
DEPENDS+=	netpbm-[0-9]*:../../graphics/netpbm
#DEPENDS+=	gimp-[0-9]*:../../graphics/gimp
DEPENDS+=	ImageMagick-[0-9]*:../../graphics/ImageMagick

# Traditional input method
# wnn
DEPENDS+=	ja-FreeWnn-lib-[0-9]*:../../inputmethod/ja-freewnn-lib
DEPENDS+=	ja-FreeWnn-server-[0-9]*:../../inputmethod/ja-freewnn-server
# canna
DEPENDS+=	Canna-lib-[0-9]*:../../inputmethod/canna-lib
DEPENDS+=	Canna-[0-9]*:../../inputmethod/canna

# for text console demo
DEPENDS+=	${RUBY_PKGPREFIX}-tw-[0-9]*:../../net/ruby-tw
DEPENDS+=	sl-[0-9]*:../../games/sl
DEPENDS+=	aview-[0-9]*:../../graphics/aview

# mikutter
DEPENDS+=	${RUBY_PKGPREFIX}-mikutter-[0-9]*:../../net/mikutter

# multimedia
#DEPENDS+=	alsa-utils-[0-9]*:../../audio/alsa-utils
#DEPENDS+=	alsa-plugins-oss-[0-9]*:../../audio/alsa-plugins-oss
#DEPENDS+=	mpg123-[0-9]*:../../audio/mpg123
#DEPENDS+=	lame-[0-9]*:../../audio/lame

# Japanese input method
#  ibus
DEPENDS+=	ibus-[0-9]*:../../inputmethod/ibus
# requred icons by gtk3+
DEPENDS+=	adwaita-icon-theme-[0-9]*:../../graphics/adwaita-icon-theme
#  mozc
# XXX: fails in devel/protobuf on arm
#DEPENDS+=	ibus-mozc-[0-9]*:../../inputmethod/ibus-mozc
#DEPENDS+=	mozc-server-[0-9]*:../../inputmethod/mozc-server
#DEPENDS+=	mozc-tool-[0-9]*:../../inputmethod/mozc-tool
#DEPENDS+=	mozc-elisp-[0-9]*:../../inputmethod/mozc-elisp
#  anthy
DEPENDS+=	anthy-[0-9]*:../../inputmethod/anthy
#DEPENDS+=	anthy-elisp-[0-9]*:../../inputmethod/anthy-elisp
DEPENDS+=	ibus-anthy-[0-9]*:../../inputmethod/ibus-anthy

# for demonstration
#PKG_OPTIONS.onscripter=onscripter-pda
DEPENDS+=	onscripter-[0-9]*:../../games/onscripter

# archivers for onscripter
DEPENDS+=	lhasa-[0-9]*:../../archivers/lhasa
DEPENDS+=	unzip-[0-9]*:../../archivers/unzip

# pkgin
#DEPENDS+=	pkgin-[0-9]*:../../pkgtools/pkgin

#
# optional packages
#

# inputmethod
# uim
DEPENDS+=	uim-[0-9]*:../../inputmethod/uim
#DEPENDS+=	uim-elisp-[0-9]*:../../inputmethod/uim-elisp

# wm
DEPENDS+=	awesome-[0-9]*:../../wm/awesome
DEPENDS+=	fvwm-[0-9]*:../../wm/fvwm
DEPENDS+=	icewm-[0-9]*:../../wm/icewm

# fonts
DEPENDS+=	droid-ttf-[0-9]*:../../fonts/droid-ttf
DEPENDS+=	efont-unicode-[0-9]*:../../fonts/efont-unicode
DEPENDS+=	jisx0212fonts-[0-9]*:../../fonts/jisx0212fonts
DEPENDS+=	jisx0213fonts-[0-9]*:../../fonts/jisx0213fonts
DEPENDS+=	ipaexfont-[0-9]*:../../fonts/ipaexfont
#DEPENDS+=	freefont-ttf-[0-9]*:../../fonts/freefont-ttf
#DEPENDS+=	unifont-[0-9]*:../../fonts/unifont
DEPENDS+=	takao-fonts-ttf-[0-9]*:../../fonts/takao-fonts-ttf
# for ricty
DEPENDS+=	inconsolata-ttf-[0-9]*:../../fonts/inconsolata-ttf
DEPENDS+=	migu-ttf-[0-9]*:../../fonts/migu-ttf

# scm
DEPENDS+=	subversion-base-[0-9]*:../../devel/subversion-base
#DEPENDS+=	fossil-[0-9]*:../../devel/fossil
#DEPENDS+=	mercurial-[0-9]*:../../devel/mercurial

# pkgtools
DEPENDS+=	pkgdiff-[0-9]*:../../pkgtools/pkgdiff
#DEPENDS+=	pkglint-[0-9]*:../../pkgtools/pkglint
DEPENDS+=	pkglint4-[0-9]*:../../pkgtools/pkglint4
DEPENDS+=	pkg_rolling-replace-[0-9]*:../../pkgtools/pkg_rolling-replace

# admin tools
DEPENDS+=	sudo-[0-9]*:../../security/sudo

# tools
DEPENDS+=	nkf-[0-9]*:../../converters/nkf
DEPENDS+=	cdrtools-[0-9]*:../../sysutils/cdrtools
DEPENDS+=	mtools-[0-9]*:../../sysutils/mtools

# editors
#DEPENDS+=	emacs-[0-9]*:../../editors/emacs
DEPENDS+=	medit-[0-9]*:../../editors/medit
DEPENDS+=	bvi-[0-9]*:../../editors/bvi
DEPENDS+=	gedit-[0-9]*:../../editors/gedit
DEPENDS+=	leafpad-[0-9]*:../../editors/leafpad
DEPENDS+=	nano-[0-9]*:../../editors/nano
DEPENDS+=	vim-[0-9]*:../../editors/vim

# network
#DEPENDS+=	curl-[0-9]*:../../www/curl
#DEPENDS+=	rsync-[0-9]*:../../net/rsync
DEPENDS+=	samba-[0-9]*:../../net/samba
#DEPENDS+=	wget-[0-9]*:../../net/wget
#DEPENDS+=	wireshark-[0-9]*:../../net/wireshark

# archivers
#DEPENDS+=	lhasa-[0-9]*:../../archivers/lhasa
DEPENDS+=	unrar-[0-9]*:../../archivers/unrar
#DEPENDS+=	unzip-[0-9]*:../../archivers/unzip
DEPENDS+=	zip-[0-9]*:../../archivers/zip

# for demonstration
DEPENDS+=	xnp2-[0-9]*:../../emulators/xnp2
DEPENDS+=	PC6001VX-[0-9]*:../../emulators/PC6001VX

# for xm6i
DEPENDS+=	wxGTK30-[0-9]*:../../x11/wxGTK30

# emulators
# XXX: qemu build requires too much (>512MB) memory
#DEPENDS+=	qemu-[0-9]*:../../emulators/qemu
DEPENDS+=	gxemul-[0-9]*:../../emulators/gxemul
DEPENDS+=	tme-[0-9]*:../../emulators/tme
#DEPENDS+=	simh-[0-9]*:../../emulators/simh

# pdf viewers
DEPENDS+=	evince-[0-9]*:../../print/evince3
DEPENDS+=	epdfview-[0-9]*:../../print/epdfview

# documents
#DEPENDS+=	${PYPKGPREFIX}-sphinx-[0-9]*:../../textproc/py-sphinx
#DEPENDS+=	${RUBY_PKGPREFIX}-rabbit-[0-9]*:../../graphics/rabbit

# restricted
DEPENDS+=	mplayer-[0-9]*:../../multimedia/mplayer
#DEPENDS+=	xv-[0-9]*:../../graphics/xv
DEPENDS+=	ricty-ttf-[0-9]*:../../fonts/ricty-ttf

META_PACKAGE=	yes

#.include "../../lang/python/pyversion.mk"
.include "../../lang/ruby/rubyversion.mk"
.include "../../mk/bsd.pkg.mk"
