# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Gentoo kernel management script"
HOMEPAGE="https://github.com/particleflux/k3rn3l"
SRC_URI="https://github.com/particleflux/k3rn3l/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_compile() {
	# disable default make call as it would `make install` with wrong settings
	true
}

src_install() {
	emake PREFIX="/usr" DESTDIR="${D}" install || die "Install failed"
}
