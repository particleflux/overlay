# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3

DESCRIPTION="Improved i3lock with color customization"
HOMEPAGE="https://github.com/Raymo111/i3lock-color/"
EGIT_REPO_URI="${HOMEPAGE}"

LICENSE="i3lock-color"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=x11-libs/libxkbcommon-0.5.0[X]
	dev-libs/libev
	media-libs/libjpeg-turbo
	sys-libs/pam
	x11-libs/cairo[X,xcb(+)]
	x11-libs/libxcb[xkb]
	x11-libs/xcb-util
	x11-libs/xcb-util-image
	x11-libs/xcb-util-xrm
	!x11-misc/i3-lock
"
DEPEND="
	${RDEPEND}
	virtual/pkgconfig
"
DOCS=( CHANGELOG README.md )

src_prepare() {
	default

	sed -i -e 's:login:system-auth:g' pam/i3lock || die
}

src_configure() {
	autoreconf -fiv
	econf
}
