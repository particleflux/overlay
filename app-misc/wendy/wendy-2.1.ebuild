# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3

DESCRIPTION="Inotify-based directory watcher."
HOMEPAGE="https://git.z3bra.org/wendy/file/README.html"
EGIT_REPO_URI="git://z3bra.org/wendy"

LICENSE="ISC"
SLOT="0"

src_install() {
	emake PREFIX="/usr" DESTDIR="${D}" MANPREFIX="/usr/share/man" install || die "Install failed"
	docompress -x /usr/share/man/man1/wendy.1.gz
}
