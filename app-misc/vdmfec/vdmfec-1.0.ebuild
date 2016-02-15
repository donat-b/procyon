EAPI="5"

DESCRIPTION="Vandermonde Forward Error Correction"
HOMEPAGE="http://freecode.com/projects/vdmfec http://members.tripod.com/professor_tom/archives/index.html"
SRC_URI="http://members.tripod.com/professor_tom/archives/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	emake bindir="${ED}usr/bin" mandir="${ED}usr/share/man" install
}
