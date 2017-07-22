# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python{2_7,3_4,3_5} pypy )

inherit python-r1 distutils-r1

DESCRIPTION="A command line time tracking utility"
HOMEPAGE="http://tailordev.github.io/Watson/"
SRC_URI="https://github.com/TailorDev/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
S=${WORKDIR}/Watson-${PV}

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="zsh-completion"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"
DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}
	dev-python/arrow
	dev-python/click
	dev-python/requests
	"

python_install_all() {
	distutils-r1_python_install_all
	if use zsh-completion; then
		insinto /usr/share/zsh/site-functions
		newins watson.zsh-completion _watson
	fi
}
