# Distributed under the terms of the GNU General Public License v3

EAPI=5
inherit qmake-utils mercurial

DESCRIPTION="Trysterobiff is a cross-plattform non-polling IMAP new-mail systray notifier."
EHG_REPO_URI="https://bitbucket.org/gsauthof/trysterobiff"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="dev-qt/qtcore:5"
DEPEND="${RDEPEND}"

src_prepare() {
:
}

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
}
