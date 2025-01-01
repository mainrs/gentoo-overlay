EAPI=8
inherit go-module

# I forked the repository to add the vendor directory to the project
# to make building it easier.
COMMIT="632337e321dd3cf87d6c241243670ea297127b03"

DESCRIPTION="A cross-platform TUI database managemen tool written in Go"
HOMEPAGE="https://github.com/jorgerojas26/lazysql"
SRC_URI="https://github.com/mainrs/lazysql/archive/${COMMIT}.zip -> ${P}.zip"

S="${WORKDIR}/${PN}-${COMMIT}/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

src_compile() {
  ego build -v -x -o "${PN}" -ldflags="-X main.version=${PV}"
}

src_install() {
  dobin "${PN}"
}
