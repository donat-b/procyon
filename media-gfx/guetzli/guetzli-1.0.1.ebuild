# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"

DESCRIPTION="Perceptual JPEG encoder"
HOMEPAGE="https://github.com/google/guetzli"
SRC_URI="https://github.com/google/guetzli/archive/v${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="media-libs/libpng
	virtual/pkgconfig"

DOCS=( LICENSE README.md )

src_compile() {
	default
}

src_install() {
	dobin bin/Release/guetzli
	einstalldocs
}
