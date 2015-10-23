# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1 git-r3

DESCRIPTION="GPU-accelerated attack against WPA-PSK authentication"
HOMEPAGE="http://pyrit.wordpress.com/"
EGIT_REPO_URI="https://github.com/JPaulMora/Pyrit.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cuda opencl"

DEPEND="dev-libs/openssl
	net-libs/libpcap"
RDEPEND=">=net-analyzer/scapy-2
	opencl? ( net-wireless/cpyrit-opencl )
	cuda? ( net-wireless/cpyrit-cuda )"

pkg_setup() {
	python-single-r1_pkg_setup
}

src_test() {
	cd test
	"${PYTHON}" test_pyrit.py
}
