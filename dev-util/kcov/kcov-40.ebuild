# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Kcov is a code coverage tester for compiled languages, Python and Bash"
HOMEPAGE="https://github.com/SimonKagstrom/kcov"
SRC_URI="https://github.com/SimonKagstrom/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/elfutils
	net-misc/curl
	sys-devel/binutils:*
	sys-libs/zlib"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}/${P}-binutils.patch"
)
