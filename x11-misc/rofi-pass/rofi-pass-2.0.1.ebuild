# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A rofi frontend for pass"
HOMEPAGE="https://github.com/carnager/rofi-pass"
SRC_URI="https://github.com/carnager/rofi-pass/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="extras otp qr"

DEPEND=""
EXTRA_DEPS="
	dev-lang/python"

RDEPEND="${DEPEND}
	extras? ( $EXTRA_DEPS )
	otp? ( app-admin/pass-otp )
	qr? (
		media-gfx/qrencode
		media-gfx/feh
	)
	app-admin/pwgen
	>=app-shells/bash-4.0
	sys-apps/gawk
	sys-apps/sed
	x11-misc/rofi
	x11-misc/xdotool"

src_prepare() {
	rm Makefile

	eapply_user
}

src_install() {
	dobin rofi-pass

	if use extras ; then
		dobin addpass
		dobin keepass2import.py
		dobin pass2csv.py
	fi

	dodoc README.md
}
