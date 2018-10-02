# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Colourful, human-friendly hexdump tool"
HOMEPAGE="https://github.com/FireyFly/hexd"
SRC_URI="https://github.com/FireyFly/hexd/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	emake PREFIX="/usr" DESTDIR="${D}" install || die "Install failed"
	docompress -x /usr/share/man/man1/hexd.1.gz
}
