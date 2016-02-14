# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A simple application to keep track and browse through reddit article lists"
HOMEPAGE="https://github.com/GGLucas/cortex"
SRC_URI="https://github.com/GGLucas/cortex/archive/e749de6.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
>=dev-lang/python-3"

S=${WORKDIR}/${PN}-e749de6c21aae02386f006fd0401d22b9dcca424

src_install() {
	dobin cortex
	doman cortex.1
	dodoc config.example README.md
}
