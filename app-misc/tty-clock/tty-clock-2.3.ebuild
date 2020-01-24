# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Terminal clock using ncurses"
HOMEPAGE="https://github.com/xorg62/tty-clock"
SRC_URI="https://github.com/xorg62/tty-clock/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-libs/ncurses:*"
RDEPEND="${DEPEND}"

src_install() {
	emake PREFIX="/usr" DESTDIR="${D}" install || die "Install failed"
}
