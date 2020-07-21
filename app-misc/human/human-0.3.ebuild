# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Convert numbers to and from human readable format"
HOMEPAGE="https://github.com/z3bra/human"
SRC_URI="https://github.com/z3bra/human/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	emake PREFIX="/usr" DESTDIR="${D}" install || die "Install failed"
	docompress -x /usr/share/man/man1/human.1.gz
}
