# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Unix batch system where the tasks spooled run one after the other"
HOMEPAGE="http://vicerveza.homeunix.net/~viric/soft/ts/"
GIT=ef1737a1f7ff65d916d5d78ea99836dc0868fbde
SRC_URI="https://github.com/xenogenesi/${PN}/archive/${GIT}.tar.gz -> ${P}.tar.gz"
S=${WORKDIR}/${PN}-${GIT}

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
