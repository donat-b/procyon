# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A binary-to-text data encoder/decoder"
HOMEPAGE="http://base91.sourceforge.net/"
SRC_URI="http://downloads.sourceforge.net/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

DOCS=( NEWS README )

src_prepare() {
	# disable stripping
	sed -i "s:LDFLAGS = -s:LDFLAGS +=:" Makefile || die 'sed Makefile failed'
}

src_compile() {
	emake
}

src_install() {
	emake prefix="${D}"/usr \
		install
	dodoc ${DOCS[@]}
}

src_test() {
	emake check all
}
