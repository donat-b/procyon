# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit autotools-utils

DESCRIPTION="A general-purpose software audio FSK modem"
HOMEPAGE="http://www.whence.com/minimodem/"
SRC_URI="https://github.com/kamalmostafa/minimodem/archive/${PN}-${PV/_p/-}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE="alsa benchmarks pulseaudio +sndfile"

DEPEND="sci-libs/fftw:3.0
	alsa? ( media-libs/alsa-lib )
	pulseaudio? ( media-sound/pulseaudio )
	sndfile? ( media-libs/libsndfile )"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${PN}-${PN}-${PV/_p/-}

AUTOTOOLS_AUTORECONF=1

src_prepare() {
	autotools-utils_src_prepare
}

src_configure() {
	local myeconfargs=(
		$(use_with alsa)
		$(use_with benchmarks)
		$(use_with pulseaudio)
		$(use_with sndfile)
	)
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile
}

src_install() {
	autotools-utils_src_install
}
