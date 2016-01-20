# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit autotools-utils

DESCRIPTION="Mount any .torrent file or magnet link and then use it as any read-only directory in your file tree"
HOMEPAGE="https://github.com/johang/btfs"
SRC_URI="https://github.com/johang/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=sys-devel/autoconf-2.69
	>=sys-fs/fuse-2.8.0
	>=net-misc/curl-7.22.0
	>=net-libs/rb_libtorrent-0.16.0"
RDEPEND="${DEPEND}"

AUTOTOOLS_AUTORECONF=1

src_prepare() {
	autotools-utils_src_prepare
}

src_configure() {
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile
}

src_install() {
	autotools-utils_src_install

	dodoc README.md
	doman "${FILESDIR}/btfs.1"
}
