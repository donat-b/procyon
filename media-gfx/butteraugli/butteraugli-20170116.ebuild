# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"

GIT=290e39552e213ed352761114561f92b93c902f55
DESCRIPTION="A tool for measuring perceived differences between images"
HOMEPAGE="https://github.com/google/butteraugli"
SRC_URI="https://github.com/google/butteraugli/archive/${GIT}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="sys-libs/zlib
	media-libs/libpng
	media-libs/libjpeg-turbo"

S=${WORKDIR}/${PN}-${GIT}/butteraugli

DOCS=( ../LICENSE ../README.md )

src_compile() {
	default
}

src_install() {
	dobin butteraugli
	einstalldocs
}
