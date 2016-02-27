# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit qmake-utils

DESCRIPTION="A cross-plattform non-polling IMAP new-mail systray notifier."
HOMEPAGE="https://bitbucket.org/gsauthof/trysterobiff/overview"
SRC_URI="https://github.com/donat-b/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-qt/qtcore:4"
DEPEND="${RDEPEND}"

src_configure() {
	eqmake4 gui.pro "CFG=release"
	make
}

src_compile() {
	emake
}

src_install() {
	dobin trysterobiff
	insinto /usr/share/icons/hicolor/scalable/apps
	doins icons/{mail-message-new.svg,process-stop.svg,mail-forward.svg,applications-multimedia.svg}
	insinto /usr/share/trysterobiff/sound
	doins sound/notification.ogg
	dodoc trysterobiff.conf README.md
}
