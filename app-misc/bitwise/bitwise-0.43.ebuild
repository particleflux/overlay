# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Terminal based bit manipulator in ncurses "
HOMEPAGE="https://github.com/mellowcandle/bitwise"
SRC_URI="https://github.com/mellowcandle/bitwise/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-libs/ncurses:* sys-libs/readline"
RDEPEND="${DEPEND}"

IUSE="debug"

PATCHES=(
	"${FILESDIR}/${P}-tinfo.patch"
)

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf $(use_enable debug)
}
