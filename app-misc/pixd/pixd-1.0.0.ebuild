# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Colourful visualization tool for binary files"
HOMEPAGE="https://github.com/FireyFly/pixd"
SRC_URI="https://github.com/FireyFly/pixd/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
    emake PREFIX="/usr" DESTDIR="${D}" install || die "Install failed"
    docompress -x /usr/share/man/man1/pixd.1.gz
}
