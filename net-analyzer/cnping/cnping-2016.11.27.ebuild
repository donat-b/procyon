# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"

REV="86cd3ff40943f69ff1a7a8387630a74f1c37532d"
DESCRIPTION="Minimal Graphical IPV4 Ping Tool"
HOMEPAGE="https://github.com/cnlohr/cnping"
SRC_URI="https://github.com/cnlohr/${PN}/archive/${REV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="x11-libs/libXinerama
	x11-libs/libXext
	x11-libs/libX11
	dev-libs/libpthread-stubs"
RDEPEND=""

S=${WORKDIR}/${PN}-${REV}

src_install() {
	emake ${PN}
	dosbin ${PN}
}
